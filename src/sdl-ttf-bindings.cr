@[Link("SDL3_ttf")]
lib LibSDL
  # SDL_ttf

  TTF_MAJOR_VERSION = 3
  TTF_MINOR_VERSION = 0
  TTF_MICRO_VERSION = 0
  TTF_VERSION = (((TTF_MAJOR_VERSION)*1000 + (TTF_MINOR_VERSION)*100 + (TTF_MICRO_VERSION)))
  TTF_PROP_FONT_CREATE_FILENAME_STRING = "ttf.font.create.filename"
  TTF_PROP_FONT_CREATE_IOSTREAM_POINTER = "ttf.font.create.iostream"
  TTF_PROP_FONT_CREATE_IOSTREAM_OFFSET_NUMBER = "ttf.font.create.iostream.offset"
  TTF_PROP_FONT_CREATE_IOSTREAM_AUTOCLOSE_BOOLEAN = "ttf.font.create.iostream.autoclose"
  TTF_PROP_FONT_CREATE_SIZE_FLOAT = "ttf.font.create.size"
  TTF_PROP_FONT_CREATE_FACE_NUMBER = "ttf.font.create.face"
  TTF_PROP_FONT_CREATE_HORIZONTAL_DPI_NUMBER = "ttf.font.create.hdpi"
  TTF_PROP_FONT_CREATE_VERTICAL_DPI_NUMBER = "ttf.font.create.vdpi"
  TTF_PROP_FONT_OUTLINE_LINE_CAP_NUMBER = "ttf.font.outline.line_cap"
  TTF_PROP_FONT_OUTLINE_LINE_JOIN_NUMBER = "ttf.font.outline.line_join"
  TTF_PROP_FONT_OUTLINE_MITER_LIMIT_NUMBER = "ttf.font.outline.miter_limit"
  TTF_STYLE_NORMAL = 0x00
  TTF_STYLE_BOLD = 0x01
  TTF_STYLE_ITALIC = 0x02
  TTF_STYLE_UNDERLINE = 0x04
  TTF_STYLE_STRIKETHROUGH = 0x08
  TTF_HINTING_NORMAL = 0
  TTF_HINTING_LIGHT = 1
  TTF_HINTING_MONO = 2
  TTF_HINTING_NONE = 3
  TTF_HINTING_LIGHT_SUBPIXEL = 4
  TTF_SUBSTRING_TEXT_START = 0x00000001
  TTF_SUBSTRING_LINE_START = 0x00000002
  TTF_SUBSTRING_LINE_END = 0x00000004
  TTF_SUBSTRING_TEXT_END = 0x00000008

  alias TTFFont = Void
  alias TTFTextEngine = Void
  alias TTFTextData = Void
  alias TTFSubStringFlags = UInt32

  enum TTFHorizontalAlignment
    TTF_HORIZONTAL_ALIGN_INVALID = -1
    TTF_HORIZONTAL_ALIGN_LEFT
    TTF_HORIZONTAL_ALIGN_CENTER
    TTF_HORIZONTAL_ALIGN_RIGHT
  end

  enum TTFDirection
    TTF_DIRECTION_LTR = 0
    TTF_DIRECTION_RTL
    TTF_DIRECTION_TTB
    TTF_DIRECTION_BTT
  end

  enum TTFGPUTextEngineWinding
    TTF_GPU_TEXTENGINE_WINDING_INVALID = -1
    TTF_GPU_TEXTENGINE_WINDING_CLOCKWISE
    TTF_GPU_TEXTENGINE_WINDING_COUNTER_CLOCKWISE
  end

  struct TTFText
    text : LibC::Char*
    num_lines : LibC::Int
    refcount : LibC::Int
    internal : TTFTextData*
  end

  struct TTFGPUAtlasDrawSequence
    atlas_texture : GPUTexture*
    xy : FPoint*
    uv : FPoint*
    num_vertices : LibC::Int
    indices : LibC::Int*
    num_indices : LibC::Int
    next : TTFGPUAtlasDrawSequence*
  end

  struct TTFSubString
    flags : TTFSubStringFlags
    offset : LibC::Int
    length : LibC::Int
    line_index : LibC::Int
    cluster_index : LibC::Int
    rect : Rect
  end

end

module LibSDLMacro
  # SDL_ttf

  def self.ttf_version(x)
    (x).value.major = LibSDL::TTF_MAJOR_VERSION
    (x).value.minor = LibSDL::TTF_MINOR_VERSION
    (x).value.patch = LibSDL::TTF_PATCHLEVEL
  end

  def self.ttf_version_atleast
    ((LibSDL::TTF_MAJOR_VERSION >= x) && (LibSDL::TTF_MAJOR_VERSION > x || LibSDL::TTF_MINOR_VERSION >= y) && (LibSDL::TTF_MAJOR_VERSION > x || LibSDL::TTF_MINOR_VERSION > y || LibSDL::TTF_PATCHLEVEL >= z))
  end

  def self.ttf_render_text(font, text, fg, bg)
    LibSDL.ttf_render_text_shaded(font, text, fg, bg)
  end

  def self.ttf_render_utf8(font, text, fg, bg)
    LibSDL.ttf_render_utf8_shaded(font, text, fg, bg)
  end

  def self.ttf_render_unicode(font, text, fg, bg)
    LibSDL.ttf_render_unicode_shaded(font, text, fg, bg)
  end

  def self.ttf_set_error(*args)
    LibSDL.set_error(*args)
  end
  
  def self.ttf_get_error
    LibSDL.get_error
  end
end
