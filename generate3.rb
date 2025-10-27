if ENV['OS'] == 'Windows_NT'
  raise "This script does not work on Windows."
end

VERSION_SDL_MAIN = "tags/preview-3.3.2"
VERSION_SDL_IMAGE = "tags/release-3.2.4"
VERSION_SDL_MIXER = "heads/main"
VERSION_SDL_TTF = "tags/release-3.2.2"

def compact_header(header)
  name = header[0]
  return if name.start_with? "additions3/"

  external_path = header[1] ? header[1] : "SDL/refs/" + VERSION_SDL_MAIN + "/include/SDL3"

  style = "{ColumnLimit: 100000, PointerAlignment: Left, SpacesBeforeTrailingComments: 2, AlignTrailingComments: false, AllowShortFunctionsOnASingleLine: None, ContinuationIndentWidth: 2, AlignOperands: DontAlign, AlignAfterOpenBracket: DontAlign}"
  
  puts "Processing #{name}..."
  # Thanks to oprypin for the formatting commands! 
  # Source: https://gist.github.com/oprypin/62c1d428453e21952d31ca59560507c9
  system("mkdir -p output3")
  system("wget -nc https://raw.githubusercontent.com/libsdl-org/#{external_path}/#{name}.h -O output3/#{name}.h")
  system("gcc -fpreprocessed -dD -E -P output3/#{name}.h > output3/#{name}1.h")
  system("clang-format output3/#{name}1.h -style=\"#{style}\" > output3/#{name}2.h")
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
    ["Hint", "§2"],
    ["GLint", "§3"],

    [" const*", "*"],
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
    ["intptr_t", "LibC::Int*"], # NOTE: This might lead to issues
    ["int", "LibC::Int"],
    ["char", "LibC::Char"],
    ["bool", "CBool"], # NOTE: This should be the safest variant
    ["FILE", "Void"], # It is a bit of cheating, but you should rarely use this anyway

    ["§1", "Point"], # Now we can demask it again
    ["§2", "Hint"],
    ["§3", "GLint"]
  ]

  soft_filter(filters.inject(name) {|text, filter| text.gsub(filter[0], filter[1])})
end

# This filter ignores predefined types
def soft_filter(name)
  filter_sdl(camelcase_string(name)).gsub("MIX", "Mix") # Doesn't look good otherwise
end

def should_struct_be_excluded?(name)
  filters = [
    "SDL_VirtualJoystickDesc",  # Contains too many callbacks
    "Mix_MusicFinishedCallback)(void)",  # TODO: A bit cheaty due to the way the Regexes work, but it does the job for now
    "axis", # Structure should not actually be used
    "SDL_IOStreamInterface", # Contains too many callbacks
    "SDL_MessageBoxColorScheme", # Contains reference to other enum
    "SDL_Surface", # A bit more complicated due to macros
    "SDL_AudioFormat", # Contains preprocessor instructions
    "SDL_PixelFormat" # Contains preprocessor instructions
  ]

  filters.index(name)
end

def should_constant_be_excluded?(name)
  filters = [
    "SDL_MAIN_HANDLED",  # Not an actual constant
    "SDL_MAIN_USE_CALLBACKS",  # Not an actual constant
    "SDLMAIN_DECLSPEC",  # Not an actual constant,
    "SDL_WINDOW_SURFACE_VSYNC_DISABLED",  # Causing issues with automated enums
    "SDL_WINDOW_SURFACE_VSYNC_ADAPTIVE",  # Causing issues with automated enums,
    "SDL_PEN_MOUSEID",  # Not an actual constant
    "SDL_PEN_TOUCHID",  # Not an actual constant
    "SDL_TOUCH_MOUSEID",  # Not an actual constant
    "SDL_MOUSE_TOUCHID" # Not an actual constant
  ]

  filters.index(name)
end

def should_function_be_excluded?(name)
  filters = [
    "SDL_SetErrorV",  # Not really needed
    "SDL_IOvprintf",  # Not really needed
    "SDL_LogMessageV", # Not really needed
    "SDL_RunApp", # Definition is annoying to parse
    "SDL_EnterAppMainCallbacks" # Definition is annoying to parse
  ]

  filters.index(name)
end

def process_constant(constant)
  constant.gsub(/0x([abcdefABCDEF\d]+)[uU]/, "0x\\1")
    .gsub(/(\d+)[uU]/, "\\1")
    .gsub(/^([\d\.]+)[fF]$/, "\\1")
    .gsub("\\x1B", "\\e")
    .gsub("\\x7F", "\\u007F")
    .gsub(/\(\((\S+)\)([-0xabcdefABCDEF\d]+)\)/, "\\1.new(\\2)")
    .gsub(/SDL_UINT64_C\(([0xabcdefABCDEF\d]+)\)/, "\\1_u64")
    .gsub("\"SDL_", "§§1")
    .gsub("SDL_", "")
    .gsub("§§1", "\"SDL_")
    .gsub("WINDOWPOS_UNDEFINED_DISPLAY(0)", "(LibSDL::WINDOWPOS_UNDEFINED_MASK | 0)")
    .gsub("WINDOWPOS_CENTERED_DISPLAY(0)", "(LibSDL::WINDOWPOS_CENTERED_MASK | 0)")
    .gsub(/VERSIONNUM(([\S]+), ([\S]+), ([\S]+))/, "((\\2)*1000000 + (\\3)*1000 + (\\4))")
    .gsub("AUDIO_S16", "LibSDL::AudioFormat::S16")
end

$constant_cache = {}

# NOTE: The order is very important here, especially for cases like SDL_MESSAGEBOX_BUTTON !
PSEUDO_ENUM_NAMES = {
  "SDL_BLENDMODE" => "SDL_BlendMode",
  "SDL_GPU_TEXTUREUSAGE" => "SDL_GPUTextureUsageFlags",
  "SDL_GPU_BUFFERUSAGE" => "SDL_GPUBufferUsageFlags",
  "SDL_GPU_SHADERFORMAT" => "SDL_GPUShaderFormat",
  "SDL_GPU_COLORCOMPONENT" => "SDL_GPUColorComponentFlags",
  "SDL_INIT" => "SDL_InitFlags",
  "SDLK" => "SDL_Keycode",
  "SDL_KMOD" => "SDL_Keymod",
  "SDL_MESSAGEBOX_BUTTON" => "SDL_MessageBoxButtonFlags",
  "SDL_MESSAGEBOX" => "SDL_MessageBoxFlags",
  "SDL_BUTTON" => "SDL_MouseButtonFlags",
  "SDL_PEN_INPUT" => "SDL_PenInputFlags",
  "SDL_SURFACE" => "SDL_SurfaceFlags",
  "SDL_TRAYENTRY" => "SDL_TrayEntryFlags",
  "SDL_WINDOW" => "SDL_WindowFlags",
  "SDL_GL_CONTEXT_RELEASE" => "SDL_GLContextReleaseFlag",
  "SDL_GL_CONTEXT" => "SDL_GLContextFlag",
  "MIX_INIT" => "MIX_InitFlags"
}

$pseudo_enums = {}
PSEUDO_ENUM_NAMES.each {|constant_prefix, struct_name| $pseudo_enums[constant_prefix] = []}

puts $pseudo_enums

def get_all_functions(filename)
  lines = nil
  final_functions = []
  
  File.open(filename, "r") do |f|
    lines = f.readlines
  end

  lines.each do |line|
    function_matches = line.match(/extern SDL_DECLSPEC ([^;]*);/)
    if function_matches
      function_part = function_matches[1].gsub("SDL_PRINTF_FORMAT_STRING", "")
        .gsub(" SDL_ACQUIRE(SDL_joystick_lock)", "")
        .gsub(" SDL_RELEASE(SDL_joystick_lock)", "")
        .gsub(/SDL_PRINTF_VARARG_FUNC\([\d]+\)/, "")

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
  enums = total_str.scan(/typedef enum [\S ]*{([^;]+)} (\S+);/)

  single_line_struct_matches.each do |match|
    next if should_struct_be_excluded?(match[1])

    if match[1] == match[0]
      final_typedefs.push [match[1], "void"]
    else
      final_typedefs.push [match[1], match[0]]
    end
  end

  typedefs.each do |match|
    next if should_struct_be_excluded?(match[1])

    if PSEUDO_ENUM_NAMES.has_value?(match[1])
      final_enums.push [match[1], nil, match[0]]
      next
    end
    
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

    found_pseudo_enum = false

    PSEUDO_ENUM_NAMES.each do |constant_prefix, struct_name|
      if match[0].start_with?(constant_prefix + "_")
        $pseudo_enums[constant_prefix].push "#{match[0]} = #{match[2]}"
        found_pseudo_enum = true
        break
      end
    end

    next if found_pseudo_enum

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
    if type_filter(struct[1]).start_with? "Void" 
      struct_str += "  type #{soft_filter(struct[0])} = #{type_filter(struct[1])}\n"
    else
      struct_str += "  alias #{soft_filter(struct[0])} = #{type_filter(struct[1])}\n"
    end
  end

  struct_str = "\n#{struct_str}\n" unless struct_str == ""

  transformed_structs.push struct_str

  struct_str = ""

  structs[2].each do |enum|
    # TODO: Look for other enums that require this annotation to work properly
    struct_str += "  @[Flags]\n" if soft_filter(enum[0]).end_with?("Flags") || soft_filter(enum[0]).end_with?("Flag")

    if !enum[1]
      enum_values = $pseudo_enums[PSEUDO_ENUM_NAMES.key(enum[0])]
    else
      enum_values = enum[1].split(/,\s+/)
    end

    if enum[2]
      struct_str += "  enum #{soft_filter(enum[0])} : #{type_filter(enum[2])}\n"
    else
      struct_str += "  enum #{soft_filter(enum[0])}\n"
    end

    enum_prefix_arr = enum_values[0].strip.split("=")[0].split("_")

    enum_values.each do |enum_value|
      enum_value_name_arr = enum_value.strip.split("=")[0].split("_")
      enum_prefix_arr -= (enum_prefix_arr - enum_value_name_arr)
    end

    enum_values.each do |enum_value|
      while !enum_value.strip.split("=")[0].index(enum_prefix_arr.join("_") + "_")
        enum_prefix_arr.pop
      end
    end

    enum_values.each do |enum_value|
      fixed_enum_values = enum_value.strip.split("=")
      name_without_prefix = (fixed_enum_values[0].split("_") - enum_prefix_arr).join("_")
      fixed_enum_values[0].upcase!
      fixed_enum_value = fixed_enum_values.join("=")
      fixed_enum_value.gsub!(/SDL_BUTTON_MASK\((\S+)\)/) { "1u << (#{Regexp.last_match[1]} - 1)" }
      if name_without_prefix.start_with?(/\d/)
        # TODO: This is currently not very elegant, but prevents expressions like GPUTextureType::2D .
        #       If ever allowed, GPUTextureType::_2D would be the optimal solution, but this is currently not the case.
        #       See: https://github.com/crystal-lang/crystal/issues/15320 .
        #       Therefore, for now the last part of the enum class name is used, like GPUTextureType::TextureType_2D .
        fixed_enum_value.gsub!(enum_prefix_arr[0..-2].join("_").upcase + "_", "")
      else
        fixed_enum_value.gsub!(enum_prefix_arr.join("_").upcase + "_", "")
      end
      ord_val = filter_sdl(process_constant(fixed_enum_value.strip))
        .gsub("' '", ' '.ord.to_s)
        .gsub(/'(\S)+'/) {|val| val[1..-2]
        .gsub("\\r", "\r")
        .gsub("\\e", "\e")
        .gsub("\\b", "\b")
        .gsub("\\t", "\t")
        .gsub("\\u007F", "\u007F")
        .gsub("\\'", "\'").ord}
      processed_ord_val = ord_val
      struct_str += "    #{processed_ord_val}\n"
    end

    struct_str += "  end\n\n"
  end

  transformed_structs.push struct_str if struct_str != ""

  structs[0].each do |struct|
    struct_str = ""
    struct_str += "  @[Packed]\n" if struct[1].end_with? "_PACKED"  # TODO: Add Crystal guards for platforms where this is not required
    struct_str += "  struct #{soft_filter(struct[0])}\n"

    struct[2].gsub(" const*", "*").gsub("const ", "").gsub("struct ", "").split(/[\n]+/).each do |struct_part|
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

# NOTE: Potentially problematic (and therefore not included) headers: 
#   asyncio, atomic, bits, endian, filesystem, hidapi, mutex, storage, system, thread, time, timer, oldnames
headers = [
  ["additions3/helper.cr"],
  ["SDL_version"],
  ["SDL_scancode"],
  ["additions3/helper_audio.cr"],
  ["SDL_audio"],
  ["SDL_blendmode"],
  ["SDL_camera"],
  ["additions3/helper_clipboard.cr"],
  ["SDL_clipboard"],
  ["SDL_cpuinfo"],
  ["additions3/helper_dialog.cr"],
  ["SDL_dialog"],
  ["SDL_error"],
  ["additions3/helper_event.cr"],
  ["SDL_events"],
  ["additions3/helper_gamepad.cr"],
  ["SDL_gamepad"],
  ["SDL_gpu"],
  ["SDL_guid"],
  ["additions3/helper_haptic.cr"],
  ["SDL_haptic"],
  ["additions3/helper_hints.cr"],
  ["SDL_hints"],
  ["additions3/helper_init.cr"],
  ["SDL_init"],
  ["additions3/helper_iostream.cr"],
  ["SDL_iostream"],
  ["additions3/helper_joystick.cr"],
  ["SDL_joystick"],
  ["SDL_keyboard"],
  ["SDL_keycode"],
  ["SDL_loadso"],
  ["SDL_locale"],
  ["additions3/helper_log.cr"],
  ["SDL_log"],
  ["additions3/helper_main.cr"],
  ["SDL_main"],
  ["additions3/helper_messagebox.cr"],
  ["SDL_messagebox"],
  ["SDL_metal"],
  ["SDL_misc"],
  ["SDL_mouse"],
  ["additions3/helper_mouse.cr"],
  ["SDL_pen"],
  ["additions3/helper_pixels.cr"],
  ["SDL_pixels"],
  ["SDL_platform"],
  ["SDL_power"],
  ["SDL_process"],
  ["additions3/helper_properties.cr"],
  ["SDL_properties"],
  ["SDL_rect"],
  ["SDL_render"],
  ["additions3/helper_render.cr"],
  ["SDL_sensor"],
  ["additions3/helper_surface.cr"],
  ["SDL_surface"],
  ["additions3/helper_tray.cr"],
  ["SDL_tray"],
  ["SDL_touch"],
  ["additions3/helper_video.cr"],
  ["SDL_video"]
]

img_headers = [
  ["SDL_image", "SDL_image/refs/" + VERSION_SDL_IMAGE + "/include/SDL3_image"]
]

mix_headers = [
  ["additions3/helper_mixer.cr"],
  ["SDL_mixer", "SDL_mixer/refs/" + VERSION_SDL_MIXER + "/include/SDL3_mixer"]
]

ttf_headers = [
  ["additions3/helper_ttf.cr"],
  ["SDL_ttf", "SDL_ttf/refs/" + VERSION_SDL_TTF + "/include/SDL3_ttf"]
]

(headers + img_headers + mix_headers + ttf_headers).each {|header| compact_header(header)}

def process_header(f, header)
  f.puts "  # #{header[0]}\n"
  if header[0].start_with? "additions3/"
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
    transform_constants(get_all_constants("output3/#{header[0]}2.h")).each do |transformed_constant|
      next if !transformed_constant
      f.puts "#{transformed_constant}" 
      cc += 1
    end
    transform_structs(get_all_structs("output3/#{header[0]}2.h")).each do |transformed_struct|
      next if !transformed_struct
      f.puts "#{transformed_struct}"
      cs += 1
    end
    transform_functions(get_all_functions("output3/#{header[0]}2.h")).each do |transformed_function|
      next if !transformed_function
      f.puts "#{transformed_function}"
      cf += 1
    end
    f.puts "\n" if cf > 0
    puts "A total of #{cc} constants, #{cs} structs and #{cf} functions were converted from #{header[0]}."
  end
end

def write_bindings_to_file(filename, which_headers, lib_name, macro_file)
  File.open(filename, "w") do |f|
    f.puts "@[Link(\"#{lib_name}\")]"
    f.puts "lib LibSDL"
    which_headers.each do |header|
      process_header(f, header)
    end
    f.puts "end"
  
    macros = nil
    
    File.open(macro_file, "r") do |f|
      macros = f.readlines
    end
  
    f.puts "\n"
    macros.each {|macros| f.puts macros}
  end
end

system("mkdir -p src")
write_bindings_to_file("src/sdl3-crystal-bindings.cr", headers, "SDL3", "additions3/macros.cr")
write_bindings_to_file("src/sdl3-image-bindings.cr", img_headers, "SDL3_image", "additions3/macros_img.cr")
write_bindings_to_file("src/sdl3-mixer-bindings.cr", mix_headers, "SDL3_mixer", "additions3/macros_mix.cr")
write_bindings_to_file("src/sdl3-ttf-bindings.cr", ttf_headers, "SDL3_ttf", "additions3/macros_ttf.cr")
