def compact_header(header)
  name = header[0]
  return if name.start_with? "additions/"

  external_path = header[1] ? header[1] : "SDL/main/include"

  puts "EX = #{external_path}"

  style = "{ColumnLimit: 100000, PointerAlignment: Left, SpacesBeforeTrailingComments: 2, AlignTrailingComments: false, AllowShortFunctionsOnASingleLine: None, ContinuationIndentWidth: 2, AlignOperands: DontAlign, AlignAfterOpenBracket: DontAlign}"
  
  puts "Processing #{name}..."
  # Thanks to oprypin for the formatting commands! 
  # Source: https://gist.github.com/oprypin/62c1d428453e21952d31ca59560507c9
  system("mkdir -p output")
  system("wget -nc https://raw.githubusercontent.com/libsdl-org/#{external_path}/#{name}.h -O output/#{name}.h")
  system("gcc -fpreprocessed -dD -E -P output/#{name}.h > output/#{name}1.h")
  system("clang-format output/#{name}1.h -style=\"#{style}\" > output/#{name}2.h")
end

def underscore_string(str)
  temp_str = str.gsub(/[A-Z]+/, "_\\0").downcase.gsub("__", "_")
  temp_str[0] == "_" ? temp_str[1..-1] : temp_str
end

def camelcase_string(str)
  str.gsub(/_[a-zA-Z]/, &:upcase).gsub("_", "")
end

def filter_sdl(str)
  filtered_str = str
  if filtered_str == "start"
    "start_point"
  elsif filtered_str == "end"
    "end_point"
  elsif filtered_str[0..3] == "sdl_"
    filtered_str[4..-1]
  elsif filtered_str[0..3] == "SDL_"
    filtered_str[4..-1]
  elsif filtered_str[0..2] == "SDL"
    filtered_str[3..-1]
  else
    filtered_str
  end
end

def filter_sdl_const(str)
  if str[0..3] == "SDL_"
    str[4..-1]
  elsif str[0..2] == "SDL"
    str[3..-1]
  else
    str
  end
end

def type_filter(name)
  filters = [
    ["Point", "§1"],  # The 'int' in 'Point' would be parsed, so we want to mask it for now

    ["const ", ""],
    ["char*", "LibC::Char*"],
    ["void", "Void"],
    ["float", "LibC::Float"],
    ["double", "LibC::Double"],
    ["unsigned int", "LibC::UInt"],
    ["size_t", "LibC::SizeT"],
    ["long", "LibC::Long"],
    ["Uint64", "UInt64"],
    ["Uint32", "UInt32"],
    ["Uint16", "UInt16"],
    ["Uint8", "UInt8"],
    ["Sint64", "Int64"],
    ["Sint32", "Int32"],
    ["Sint16", "Int16"],
    ["Sint8", "Int8"],
    ["int64", "Int64"],
    ["int32", "Int32"],
    ["int16", "Int16"],
    ["int8", "Int8"],
    ["int", "LibC::Int"],
    ["char", "Char"],
    ["SDL_bool", "SBool"],
    ["FILE", "Void"], # It is a bit of cheating, but you should rarely use this anyway

    ["§1", "Point"] # Now we can demask it again
  ]

  soft_filter(filters.inject(name) {|text, filter| text.gsub(filter[0], filter[1])})
end

# This filter ignores predefined types
def soft_filter(name)
  filter_sdl(camelcase_string(name))
end

def should_struct_be_excluded?(name)
  filters = [
    "SDL_AudioCVT",
    "SDL_GameControllerButtonBind",
    "SDL_VirtualJoystickDesc",
    "hat",
    "SDL_RWops",
    "mem",
    "hidden",
    "androidio",
    "SDL_WindowShapeMode",
    "WindowShapeMode"
  ]

  filters.index(name)
end

def should_constant_be_excluded?(name)
  filters = [
    "SDL_AUDIOCVT_PACKED",
    "TTF_MAJOR_VERSION",
    "TTF_MINOR_VERSION",
    "TTF_PATCHLEVEL"
  ]

  filters.index(name)
end

def should_function_be_excluded?(name)
  filters = [
    "Mix_SetPostMix",
    "Mix_HookMusic",
    "Mix_HookMusicFinished",
    "Mix_ChannelFinished",
    "Mix_EachSoundFont"
  ]

  filters.index(name)
end

def process_constant(constant)
  constant.gsub(/(\d+)[uU]/, "\\1").gsub(/([\d\.]+)[fF]/, "\\1").gsub("\\x1B", "\\e").gsub("\\x7F", "\\u007F").gsub("SDL_", "").gsub("WINDOWPOS_UNDEFINED_DISPLAY(0)", "(LibSDL::WINDOWPOS_CENTERED_MASK | 0)").gsub("WINDOWPOS_CENTERED_DISPLAY(0)", "(LibSDL::WINDOWPOS_UNDEFINED_MASK | 0)").gsub(/VERSIONNUM(([\S]+), ([\S]+), ([\S]+))/, "((\\2)*1000 + (\\3)*100 + (\\4))")
end

$constant_cache = {}

def get_all_functions(filename)
  lines = nil
  final_functions = []
  
  File.open(filename, "r") do |f|
    lines = f.readlines
  end

  lines.each do |line|
    function_matches = line.match(/extern DECLSPEC ([^;]*);/)
    if function_matches
      function_part = function_matches[1].gsub("SDL_PRINTF_FORMAT_STRING", "").gsub(/SDL_PRINTF_VARARG_FUNC\([\d]+\)/, "")

      function_part_pieces = function_part.match(/([\S]+) (?:SDLCALL )*([\S]*)\(([\S ]+)\)/)

      function_return_type = function_part_pieces[1]
      function_name = function_part_pieces[2]
      function_args = function_part_pieces[3].split(",").map{|arg| arg.strip.split}

      next if should_function_be_excluded?(function_name.gsub(/\([\S]*/, "")) # The filtering ensures that no weird parentheses are checked (especially for callbacks)

      final_functions.push [function_return_type, function_name, function_args]
    end
  end

  final_functions
end

def get_all_structs(filename)
  lines = nil

  final_typedefs = []
  final_structs = []
  final_enums = []
  
  File.open(filename, "r") do |f|
    lines = f.readlines
  end

  total_str = lines.join("\n")
  single_line_struct_matches = total_str.scan(/typedef struct ([\S]+)[ ]*([\S]*);/)
  multi_line_struct_matches = total_str.scan(/typedef struct ([\S]*)[ ]*{((?>[^}])*)}([^;\}]*) ([\S]+);/)
  typedefs = total_str.scan(/typedef ((?!struct)\S*) (\S*);/)
  enums = total_str.scan(/typedef enum { ([\S, ]+) } (\S+);/)

  single_line_struct_matches.each do |match|
    next if should_struct_be_excluded?(match[1])
    final_typedefs.push [match[1], "void"]
  end

  typedefs.each do |match|
    next if should_struct_be_excluded?(match[1])
    final_typedefs.push [match[1], match[0]]
  end

  enums.each do |match|
    next if should_struct_be_excluded?(match[1])
    final_enums.push [match[1], match[0]]
  end
  
  multi_line_struct_matches.each do |match|
    struct_name_1 = match[0].strip
    struct_block = match[1].strip
    struct_attributes = match[2].strip  # Use these with the Packed annotation if given
    struct_name_2 = match[3].strip

    next if should_struct_be_excluded?(struct_name_2)

    final_structs.push [struct_name_2, struct_attributes, struct_block]
  end

  [final_structs, final_typedefs, final_enums]
end

def get_all_constants(filename)
  lines = nil

  final_constants = []
  
  File.open(filename, "r") do |f|
    lines = f.readlines
  end

  total_str = lines.join("\n")
  constant_matches = total_str.scan(/#define ([\w_\d]+)(\([\S \,]*\))?[ ]*(.*)[^\\]\n/)

  constant_matches.each do |match|
    if match[1]
      puts "> Skipping macro function: #{match[0]}"
      next
    end
    next if match[2].empty?
    if match[0].match(/[a-z]/)
      puts "> Skipping macro function: #{match[0]}"
      next
    end
    next if should_constant_be_excluded?(match[0])
    next if $constant_cache[match[0]]
    $constant_cache[match[0]] = true
    final_constants.push [match[0], match[2]]
  end

  final_constants
end

def transform_functions(functions)
  transformed_functions = []

  functions.each do |func|
    arg_str = func[2].map{|par| par[0] == "void" ? "" : "#{underscore_string(par[-1])}#{par[0] == "..." ? "" : " : "}#{type_filter(par[0..-2].join(" "))}"}.join(", ").strip
    transformed_functions.push "  fun #{filter_sdl(underscore_string(func[1]))} = #{func[1]}(#{arg_str}) : #{type_filter(func[0])}"
  end

  transformed_functions
end

def transform_structs(structs)
  transformed_structs = []

  # Single line typedefs
  struct_str = ""

  structs[1].each do |struct|
     struct_str += "  type #{soft_filter(struct[0])} = #{type_filter(struct[1])}\n"
  end

  struct_str = "\n#{struct_str}\n" unless struct_str == ""

  transformed_structs.push struct_str

  struct_str = ""

  structs[2].each do |enum|
    struct_str += "  enum #{soft_filter(enum[0])}\n"
    
    enum_values = enum[1].split(", ")
    enum_values.each do |enum_value|
      ord_val = filter_sdl(process_constant(enum_value.strip)).gsub("' '", ' '.ord.to_s).gsub(/'(\S)+'/) {|val| val[1..-2].gsub("\\r", "\r").gsub("\\e", "\e").gsub("\\b", "\b").gsub("\\t", "\t").gsub("\\u007F", "\u007F").gsub("\\'", "\'").ord}
      processed_ord_val = ord_val.gsub(/SCANCODE_TO_KEYCODE\((\S+)\)/) { "Scancode::#{filter_sdl_const(Regexp.last_match[1])} | K_SCANCODE_MASK" }
      struct_str += "    #{processed_ord_val}\n"
    end

    struct_str += "  end\n\n"
  end

  transformed_structs.push struct_str if struct_str != ""

  structs[0].each do |struct|
    struct_str = ""
    struct_str += "  @[Packed]\n" if struct[1].end_with? "_PACKED"  # TODO: Add Crystal guards for platforms where this is not required
    struct_str += "  struct #{soft_filter(struct[0])}\n"

    struct[2].gsub("const ", "").gsub("struct ", "").split(/[\n]+/).each do |struct_part|
      array_part = struct_part.match(/\[(.+)\]/)
      filtered_part = array_part ? struct_part.gsub(array_part[0], "") : struct_part
      reduced_part = filtered_part.strip.gsub(";", "")

      array_str = array_part ? "[#{filter_sdl_const(array_part[1])}]" : ""

      components = reduced_part.split
      components[1..-1].each do |component|
        struct_str += "    #{filter_sdl(underscore_string(component.gsub(",", "").strip))} : #{type_filter(components[0])}#{array_str}\n"
      end
    end

    struct_str += "  end\n\n"

    transformed_structs.push struct_str
  end
  
  transformed_structs
end

def transform_constants(constants)
  transformed_constants = []  
  c = 0

  constants.each do |constant|
    filtered_constant = process_constant(constant[1])
    transformed_constants.push "#{c == 0 ? "\n" : ""}  #{filter_sdl_const(constant[0])} = #{filtered_constant}"
    c += 1
  end

  transformed_constants
end

headers = [
  ["SDL"],
  ["SDL_version"],
  ["additions/helper_types.cr"],
  ["SDL_scancode"],
  ["SDL_audio"],
  ["additions/helper_audio.cr"],
  ["SDL_blendmode"],
  ["SDL_clipboard"],
  ["SDL_error"],
  ["additions/helper_event.cr"],
  ["SDL_events"],
  ["SDL_filesystem"],
  ["additions/helper_gamecontroller.cr"],
  ["SDL_gamecontroller"],
  ["SDL_gesture"],
  ["SDL_guid"],
  ["SDL_haptic"],
  ["additions/helper_haptic.cr"],
  ["SDL_joystick"],
  ["additions/helper_joystick.cr"],
  ["SDL_keyboard"],
  ["SDL_keycode"],
  ["SDL_mouse"],
  ["SDL_pixels"],
  ["additions/helper_pixels.cr"],
  ["SDL_rect"],
  ["SDL_render"],
  ["additions/helper_rwops.cr"],
  ["SDL_rwops"],
  ["SDL_sensor"],
  ["additions/helper_shape.cr"],
  ["SDL_shape"],
  ["SDL_surface"],
  ["SDL_touch"],
  ["additions/helper_video.cr"],
  ["SDL_video"],
  ["SDL_image", "SDL_image/main"],
  ["additions/helper_mixer.cr"],
  ["SDL_mixer", "SDL_mixer/main/include"],
  ["SDL_ttf", "SDL_ttf/main"]
]

headers.each {|header| compact_header(header)}

File.open("src/sdl-crystal-bindings.cr", "w") do |f|
  f.puts "@[Link(\"SDL2\")]"
  f.puts "@[Link(\"SDL2_image\")]"
  f.puts "@[Link(\"SDL2_mixer\")]"
  f.puts "@[Link(\"SDL2_ttf\")]"
  f.puts "lib LibSDL"
  headers.each do |header|
    f.puts "  # #{header[0]}\n"
    if header[0].start_with? "additions/"
      additions = nil

      File.open(header[0], "r") do |f|
        additions = f.readlines
      end

      f.puts "\n"
      additions.each {|addition| f.puts addition}
      f.puts "\n"
    else
      cc = 0
      cs = 0
      cf = 0
      transform_constants(get_all_constants("output/#{header[0]}2.h")).each do |transformed_constant|
        next if !transformed_constant
        f.puts "#{transformed_constant}" 
        cc += 1
      end
      transform_structs(get_all_structs("output/#{header[0]}2.h")).each do |transformed_struct|
        next if !transformed_struct
        f.puts "#{transformed_struct}"
        cs += 1
      end
      transform_functions(get_all_functions("output/#{header[0]}2.h")).each do |transformed_function|
        next if !transformed_function
        f.puts "#{transformed_function}"
        cf += 1
      end
      f.puts "\n" if cf > 0
      puts "A total of #{cc} constants, #{cs} structs and #{cf} functions were converted from #{header[0]}."
    end
  end
  f.puts "end"

  macros = nil
  
  File.open("additions/macros.cr", "r") do |f|
    macros = f.readlines
  end

  f.puts "\n"
  macros.each {|macros| f.puts macros}
end