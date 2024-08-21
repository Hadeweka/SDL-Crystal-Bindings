@[Link("SDL2_ttf")]
lib LibSDL
  # SDL_ttf

  TTF_MAJOR_VERSION = 2
  TTF_MINOR_VERSION = 23
  TTF_PATCHLEVEL = 0
  TTF_COMPILEDVERSION = (((TTF_MAJOR_VERSION)*1000 + (TTF_MINOR_VERSION)*100 + (TTF_PATCHLEVEL)))
  UNICODE_BOM_NATIVE = 0xFEFF
  UNICODE_BOM_SWAPPED = 0xFFFE
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
  TTF_WRAPPED_ALIGN_LEFT = 0
  TTF_WRAPPED_ALIGN_CENTER = 1
  TTF_WRAPPED_ALIGN_RIGHT = 2

  alias TTFFont = Void

  enum TTFDirection
    TTF_DIRECTION_LTR = 0
    TTF_DIRECTION_RTL
    TTF_DIRECTION_TTB
    TTF_DIRECTION_BTT
  end

  fun ttf_linked_version = TTF_Linked_Version() : Version*
  fun ttf_get_free_type_version = TTF_GetFreeTypeVersion(major : LibC::Int*, minor : LibC::Int*, patch : LibC::Int*) : Void
  fun ttf_get_harf_buzz_version = TTF_GetHarfBuzzVersion(major : LibC::Int*, minor : LibC::Int*, patch : LibC::Int*) : Void
  fun ttf_byte_swapped_unicode = TTF_ByteSwappedUNICODE(swapped : SBool) : Void
  fun ttf_init = TTF_Init() : LibC::Int
  fun ttf_open_font = TTF_OpenFont(file : LibC::Char*, ptsize : LibC::Int) : TTFFont*
  fun ttf_open_font_index = TTF_OpenFontIndex(file : LibC::Char*, ptsize : LibC::Int, index : LibC::Long) : TTFFont*
  fun ttf_open_font_rw = TTF_OpenFontRW(src : RWops*, freesrc : LibC::Int, ptsize : LibC::Int) : TTFFont*
  fun ttf_open_font_index_rw = TTF_OpenFontIndexRW(src : RWops*, freesrc : LibC::Int, ptsize : LibC::Int, index : LibC::Long) : TTFFont*
  fun ttf_open_font_dpi = TTF_OpenFontDPI(file : LibC::Char*, ptsize : LibC::Int, hdpi : LibC::UInt, vdpi : LibC::UInt) : TTFFont*
  fun ttf_open_font_index_dpi = TTF_OpenFontIndexDPI(file : LibC::Char*, ptsize : LibC::Int, index : LibC::Long, hdpi : LibC::UInt, vdpi : LibC::UInt) : TTFFont*
  fun ttf_open_font_dpirw = TTF_OpenFontDPIRW(src : RWops*, freesrc : LibC::Int, ptsize : LibC::Int, hdpi : LibC::UInt, vdpi : LibC::UInt) : TTFFont*
  fun ttf_open_font_index_dpirw = TTF_OpenFontIndexDPIRW(src : RWops*, freesrc : LibC::Int, ptsize : LibC::Int, index : LibC::Long, hdpi : LibC::UInt, vdpi : LibC::UInt) : TTFFont*
  fun ttf_set_font_size = TTF_SetFontSize(font : TTFFont*, ptsize : LibC::Int) : LibC::Int
  fun ttf_set_font_size_dpi = TTF_SetFontSizeDPI(font : TTFFont*, ptsize : LibC::Int, hdpi : LibC::UInt, vdpi : LibC::UInt) : LibC::Int
  fun ttf_get_font_style = TTF_GetFontStyle(font : TTFFont*) : LibC::Int
  fun ttf_set_font_style = TTF_SetFontStyle(font : TTFFont*, style : LibC::Int) : Void
  fun ttf_get_font_outline = TTF_GetFontOutline(font : TTFFont*) : LibC::Int
  fun ttf_set_font_outline = TTF_SetFontOutline(font : TTFFont*, outline : LibC::Int) : Void
  fun ttf_get_font_hinting = TTF_GetFontHinting(font : TTFFont*) : LibC::Int
  fun ttf_set_font_hinting = TTF_SetFontHinting(font : TTFFont*, hinting : LibC::Int) : Void
  fun ttf_get_font_wrapped_align = TTF_GetFontWrappedAlign(font : TTFFont*) : LibC::Int
  fun ttf_set_font_wrapped_align = TTF_SetFontWrappedAlign(font : TTFFont*, align : LibC::Int) : Void
  fun ttf_font_height = TTF_FontHeight(font : TTFFont*) : LibC::Int
  fun ttf_font_ascent = TTF_FontAscent(font : TTFFont*) : LibC::Int
  fun ttf_font_descent = TTF_FontDescent(font : TTFFont*) : LibC::Int
  fun ttf_font_line_skip = TTF_FontLineSkip(font : TTFFont*) : LibC::Int
  fun ttf_get_font_kerning = TTF_GetFontKerning(font : TTFFont*) : LibC::Int
  fun ttf_set_font_kerning = TTF_SetFontKerning(font : TTFFont*, allowed : LibC::Int) : Void
  fun ttf_font_faces = TTF_FontFaces(font : TTFFont*) : LibC::Long
  fun ttf_font_face_is_fixed_width = TTF_FontFaceIsFixedWidth(font : TTFFont*) : LibC::Int
  fun ttf_font_face_family_name = TTF_FontFaceFamilyName(font : TTFFont*) : LibC::Char*
  fun ttf_font_face_style_name = TTF_FontFaceStyleName(font : TTFFont*) : LibC::Char*
  fun ttf_glyph_is_provided = TTF_GlyphIsProvided(font : TTFFont*, ch : UInt16) : LibC::Int
  fun ttf_glyph_is_provided32 = TTF_GlyphIsProvided32(font : TTFFont*, ch : UInt32) : LibC::Int
  fun ttf_glyph_metrics = TTF_GlyphMetrics(font : TTFFont*, ch : UInt16, minx : LibC::Int*, maxx : LibC::Int*, miny : LibC::Int*, maxy : LibC::Int*, advance : LibC::Int*) : LibC::Int
  fun ttf_glyph_metrics32 = TTF_GlyphMetrics32(font : TTFFont*, ch : UInt32, minx : LibC::Int*, maxx : LibC::Int*, miny : LibC::Int*, maxy : LibC::Int*, advance : LibC::Int*) : LibC::Int
  fun ttf_size_text = TTF_SizeText(font : TTFFont*, text : LibC::Char*, w : LibC::Int*, h : LibC::Int*) : LibC::Int
  fun ttf_size_utf8 = TTF_SizeUTF8(font : TTFFont*, text : LibC::Char*, w : LibC::Int*, h : LibC::Int*) : LibC::Int
  fun ttf_size_unicode = TTF_SizeUNICODE(font : TTFFont*, text : UInt16*, w : LibC::Int*, h : LibC::Int*) : LibC::Int
  fun ttf_measure_text = TTF_MeasureText(font : TTFFont*, text : LibC::Char*, measure_width : LibC::Int, extent : LibC::Int*, count : LibC::Int*) : LibC::Int
  fun ttf_measure_utf8 = TTF_MeasureUTF8(font : TTFFont*, text : LibC::Char*, measure_width : LibC::Int, extent : LibC::Int*, count : LibC::Int*) : LibC::Int
  fun ttf_measure_unicode = TTF_MeasureUNICODE(font : TTFFont*, text : UInt16*, measure_width : LibC::Int, extent : LibC::Int*, count : LibC::Int*) : LibC::Int
  fun ttf_render_text_solid = TTF_RenderText_Solid(font : TTFFont*, text : LibC::Char*, fg : Color) : Surface*
  fun ttf_render_utf8_solid = TTF_RenderUTF8_Solid(font : TTFFont*, text : LibC::Char*, fg : Color) : Surface*
  fun ttf_render_unicode_solid = TTF_RenderUNICODE_Solid(font : TTFFont*, text : UInt16*, fg : Color) : Surface*
  fun ttf_render_text_solid_wrapped = TTF_RenderText_Solid_Wrapped(font : TTFFont*, text : LibC::Char*, fg : Color, wrap_length : UInt32) : Surface*
  fun ttf_render_utf8_solid_wrapped = TTF_RenderUTF8_Solid_Wrapped(font : TTFFont*, text : LibC::Char*, fg : Color, wrap_length : UInt32) : Surface*
  fun ttf_render_unicode_solid_wrapped = TTF_RenderUNICODE_Solid_Wrapped(font : TTFFont*, text : UInt16*, fg : Color, wrap_length : UInt32) : Surface*
  fun ttf_render_glyph_solid = TTF_RenderGlyph_Solid(font : TTFFont*, ch : UInt16, fg : Color) : Surface*
  fun ttf_render_glyph32_solid = TTF_RenderGlyph32_Solid(font : TTFFont*, ch : UInt32, fg : Color) : Surface*
  fun ttf_render_text_shaded = TTF_RenderText_Shaded(font : TTFFont*, text : LibC::Char*, fg : Color, bg : Color) : Surface*
  fun ttf_render_utf8_shaded = TTF_RenderUTF8_Shaded(font : TTFFont*, text : LibC::Char*, fg : Color, bg : Color) : Surface*
  fun ttf_render_unicode_shaded = TTF_RenderUNICODE_Shaded(font : TTFFont*, text : UInt16*, fg : Color, bg : Color) : Surface*
  fun ttf_render_text_shaded_wrapped = TTF_RenderText_Shaded_Wrapped(font : TTFFont*, text : LibC::Char*, fg : Color, bg : Color, wrap_length : UInt32) : Surface*
  fun ttf_render_utf8_shaded_wrapped = TTF_RenderUTF8_Shaded_Wrapped(font : TTFFont*, text : LibC::Char*, fg : Color, bg : Color, wrap_length : UInt32) : Surface*
  fun ttf_render_unicode_shaded_wrapped = TTF_RenderUNICODE_Shaded_Wrapped(font : TTFFont*, text : UInt16*, fg : Color, bg : Color, wrap_length : UInt32) : Surface*
  fun ttf_render_glyph_shaded = TTF_RenderGlyph_Shaded(font : TTFFont*, ch : UInt16, fg : Color, bg : Color) : Surface*
  fun ttf_render_glyph32_shaded = TTF_RenderGlyph32_Shaded(font : TTFFont*, ch : UInt32, fg : Color, bg : Color) : Surface*
  fun ttf_render_text_blended = TTF_RenderText_Blended(font : TTFFont*, text : LibC::Char*, fg : Color) : Surface*
  fun ttf_render_utf8_blended = TTF_RenderUTF8_Blended(font : TTFFont*, text : LibC::Char*, fg : Color) : Surface*
  fun ttf_render_unicode_blended = TTF_RenderUNICODE_Blended(font : TTFFont*, text : UInt16*, fg : Color) : Surface*
  fun ttf_render_text_blended_wrapped = TTF_RenderText_Blended_Wrapped(font : TTFFont*, text : LibC::Char*, fg : Color, wrap_length : UInt32) : Surface*
  fun ttf_render_utf8_blended_wrapped = TTF_RenderUTF8_Blended_Wrapped(font : TTFFont*, text : LibC::Char*, fg : Color, wrap_length : UInt32) : Surface*
  fun ttf_render_unicode_blended_wrapped = TTF_RenderUNICODE_Blended_Wrapped(font : TTFFont*, text : UInt16*, fg : Color, wrap_length : UInt32) : Surface*
  fun ttf_render_glyph_blended = TTF_RenderGlyph_Blended(font : TTFFont*, ch : UInt16, fg : Color) : Surface*
  fun ttf_render_glyph32_blended = TTF_RenderGlyph32_Blended(font : TTFFont*, ch : UInt32, fg : Color) : Surface*
  fun ttf_render_text_lcd = TTF_RenderText_LCD(font : TTFFont*, text : LibC::Char*, fg : Color, bg : Color) : Surface*
  fun ttf_render_utf8_lcd = TTF_RenderUTF8_LCD(font : TTFFont*, text : LibC::Char*, fg : Color, bg : Color) : Surface*
  fun ttf_render_unicode_lcd = TTF_RenderUNICODE_LCD(font : TTFFont*, text : UInt16*, fg : Color, bg : Color) : Surface*
  fun ttf_render_text_lcd_wrapped = TTF_RenderText_LCD_Wrapped(font : TTFFont*, text : LibC::Char*, fg : Color, bg : Color, wrap_length : UInt32) : Surface*
  fun ttf_render_utf8_lcd_wrapped = TTF_RenderUTF8_LCD_Wrapped(font : TTFFont*, text : LibC::Char*, fg : Color, bg : Color, wrap_length : UInt32) : Surface*
  fun ttf_render_unicode_lcd_wrapped = TTF_RenderUNICODE_LCD_Wrapped(font : TTFFont*, text : UInt16*, fg : Color, bg : Color, wrap_length : UInt32) : Surface*
  fun ttf_render_glyph_lcd = TTF_RenderGlyph_LCD(font : TTFFont*, ch : UInt16, fg : Color, bg : Color) : Surface*
  fun ttf_render_glyph32_lcd = TTF_RenderGlyph32_LCD(font : TTFFont*, ch : UInt32, fg : Color, bg : Color) : Surface*
  fun ttf_close_font = TTF_CloseFont(font : TTFFont*) : Void
  fun ttf_quit = TTF_Quit() : Void
  fun ttf_was_init = TTF_WasInit() : LibC::Int
  fun ttf_get_font_kerning_size_glyphs = TTF_GetFontKerningSizeGlyphs(font : TTFFont*, previous_ch : UInt16, ch : UInt16) : LibC::Int
  fun ttf_get_font_kerning_size_glyphs32 = TTF_GetFontKerningSizeGlyphs32(font : TTFFont*, previous_ch : UInt32, ch : UInt32) : LibC::Int
  fun ttf_set_font_sdf = TTF_SetFontSDF(font : TTFFont*, on_off : SBool) : LibC::Int
  fun ttf_get_font_sdf = TTF_GetFontSDF(font : TTFFont*) : SBool
  fun ttf_set_font_direction = TTF_SetFontDirection(font : TTFFont*, direction : TTFDirection) : LibC::Int
  fun ttf_set_font_script_name = TTF_SetFontScriptName(font : TTFFont*, script : LibC::Char*) : LibC::Int

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
