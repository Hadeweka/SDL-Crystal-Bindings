module LibSDLMacro
  # Other helper macros

  macro fourcc(a, b, c, d)
    (a.to_u8 << 0).to_u32 | (b.to_u8 << 8).to_u32 | (c.to_u8 << 16).to_u32 | (d.to_u8 << 24).to_u32
  end

  # SDL_version
  
  macro versionnum(major, minor, patch)
    major*1000000 + minor*1000 + patch
  end

  macro versionnum_major(version)
    version // 1000000
  end

  macro versionnum_minor(version)
    (version // 1000) % 1000
  end

  macro versionnum_micro(version)
    version % 1000
  end

  macro version
    LibSDLMacro.versionnum(LibSDL::MAJOR_VERSION, LibSDL::MINOR_VERSION, LibSDL::MICRO_VERSION)
  end

  macro version_atleast(x, y, z)
    LibSDL::VERSION >= LibSDLMacro.versionnum(X, Y, Z)
  end

  # SDL_audio

  macro define_audio_format(signed, bigendian, flt, size)
    (signed.to_u16 << 15) | (bigendian.to_u16 << 12) | (flt.to_u16 << 8) | (size & LibSDL::AUDIO_MASK_BITSIZE)
  end

  macro audio_bitsize(x)
    x & LibSDL::AUDIO_MASK_BITSIZE
  end

  macro audio_bytesize(x)
    LibSDLMacro.audio_bitsize(x) // 8
  end

  macro audio_isfloat(x)
    (x & LibSDL::AUDIO_MASK_DATATYPE) != 0
  end

  macro audio_isbigendian(x)
    (x & LibSDL::AUDIO_MASK_ENDIAN) != 0
  end

  macro audio_islittleendian(x)
    !LibSDLMacro.audio_isbigendian(x)
  end

  macro audio_issigned(x)
    (x & LibSDL::MASK_SIGNED) != 0
  end

  macro audio_isint(x)
    !LibSDLMacro.audio_isfloat(x)
  end

  macro isunsigned(x)
    !LibSDLMacro.audio_issigned(x)
  end

  macro audio_framesize(x)
    LibSDLMacro.audio_bytesize(x.format) * x.channels
  end

  # SDL_error

  macro unsupported
    LibSDL.set_error("That operation is not supported")
  end

  macro invalid_param_error(param)
    LibSDL.set_error("Parameter '%s' is invalid", param)
  end

  # SDL_keycode

  macro scancode_to_keycode(x)
    x | LibSDL::K_SCANCODE_MASK
  end

  # SDL_main
  
  macro main_use_callbacks(app_init_func, app_iterate_func, app_event_func, app_quit_func, sdl_main_func_name = libsdl_main)
    def {{sdl_main_func_name}}(argc : Int32, argv : UInt8**)
      LibSDL.enter_app_main_callbacks(argc, argv, {{app_init_func}}, {{app_iterate_func}}, {{app_event_func}}, {{app_quit_func}})
    end

    # TODO: Modify the main function to do this
    LibSDL.run_app(ARGC_UNSAFE, ARGV_UNSAFE, ->{{sdl_main_func_name}}, nil)
  end

  # SDL_mouse

  macro button_mask(x)
    1 << (x-1)
  end

  # SDL_pixels

  macro define_pixelfourcc(a, b, c, d)
    LibSDLMacro.fourcc(a, b, c, d)
  end

  macro define_pixelformat(type, order, layout, bits, bytes)
    (1 << 28) | (type << 24) | (order << 20) | (layout << 16) | (bits << 8) | (bytes << 0)
  end

  macro pixelflag(format)
     (format >> 28) & 0x0F
  end

  macro pixeltype(format)
    (format >> 24) & 0x0F
  end

  macro pixelorder(format)
    (format >> 20) & 0x0F
  end

  macro pixellayout(format)
    (format >> 16) & 0x0F
  end

  macro bitsperpixel(format)
    if LibSDLMacro.ispixelformat_fourcc(format)
      0
    else
      (format >> 8) & 0xFF
    end
  end

  macro bytesperpixel(format)
    if LibSDLMacro.ispixelformat_fourcc(format)
      if (format == LibSDL::PIXELFORMAT_YUY2) || (format == LibSDL::PIXELFORMAT_UYVY) || (format == LibSDL::PIXELFORMAT_YVYU) || (format == LibSDL::PIXELFORMAT_P010)
        2
      else
        1
      end
    else
      (format >> 0) & 0xFF
    end
  end

  macro ispixelformat_indexed(format)
    !LibSDLMacro.ispixelformat_fourcc(format) && ((LibSDLMacro.pixeltype(format) == LibSDL::PIXELTYPE_INDEX1) || (LibSDLMacro.pixeltype(format) == LibSDL::PIXELTYPE_INDEX2) || (LibSDLMacro.pixeltype(format) == LibSDL::PIXELTYPE_INDEX4) || (LibSDLMacro.pixeltype(format) == LibSDL::PIXELTYPE_INDEX8))
  end

  macro ispixelformat_packed(format)
    !LibSDLMacro.ispixelformat_fourcc(format) && ((LibSDLMacro.pixeltype(format) == LibSDL::PIXELTYPE_PACKED8) || (LibSDLMacro.pixeltype(format) == LibSDL::PIXELTYPE_PACKED16) || (LibSDLMacro.pixeltype(format) == LibSDL::PIXELTYPE_PACKED32))
  end

  macro ispixelformat_array(format)
    !LibSDLMacro.ispixelformat_fourcc(format) && ((LibSDLMacro.pixeltype(format) == LibSDL::PIXELTYPE_ARRAYU8) || (LibSDLMacro.pixeltype(format) == LibSDL::PIXELTYPE_ARRAYU16) || (LibSDLMacro.pixeltype(format) == LibSDL::PIXELTYPE_ARRAYU32) || (LibSDLMacro.pixeltype(format) == LibSDL::PIXELTYPE_ARRAYF16) || (LibSDLMacro.pixeltype(format) == LibSDL::PIXELTYPE_ARRAYF32))
  end

  macro ispixelformat_10bit(format)
    !LibSDLMacro.ispixelformat_fourcc(format) && ((LibSDLMacro.pixeltype(format) == LibSDL::PIXELTYPE_PACKED32) && (LibSDLMacro.pixeltype(format) == LibSDL::PACKEDLAYOUT_2101010))
  end

  macro ispixelformat_float(format)
    !LibSDLMacro.ispixelformat_fourcc(format) && ((LibSDLMacro.pixeltype(format) == LibSDL::PIXELTYPE_ARRAYF16) || (LibSDLMacro.pixeltype(format) == LibSDL::PIXELTYPE_ARRAYF32))
  end

  macro ispixelformat_alpha(format)
    (LibSDLMacro.ispixelformat_packed(format) && ((LibSDLMacro.pixelorder(format) == LibSDL::PACKEDORDER_ARGB) || (LibSDLMacro.pixelorder(format) == LibSDL::PACKEDORDER_RGBA) || (LibSDLMacro.pixelorder(format) == LibSDL::PACKEDORDER_ABGR) || (LibSDLMacro.pixelorder(format) == LibSDL::PACKEDORDER_BGRA))) || (LibSDLMacro.ispixelformat_array(format) && ((LibSDLMacro.pixelorder(format) == LibSDL::ARRAYORDER_ARGB) || (LibSDLMacro.pixelorder(format) == LibSDL::ARRAYORDER_RGBA) || (LibSDLMacro.pixelorder(format) == LibSDL::ARRAYORDER_ABGR) || (LibSDLMacro.pixelorder(format) == LibSDL::ARRAYORDER_BGRA)))
  end

  macro ispixelformat_fourcc(format)
    (format != 0) && (LibSDLMacro.pixel_flag(format) != 1)
  end

  macro define_colorspace(type, range, primaries, transfer, matrix, chroma) 
    (type.to_u32 << 28) | (range.to_u32 << 24) | (chroma.to_u32 << 20) | (primaries.to_u32 << 10) | (transfer.to_u32 << 5) | (matrix.to_u32 << 0)
  end

  macro colorspacetype(cspace)
    LibSDL::ColorType.new((cspace >> 28) & 0x0F)
  end

  macro colorspacerange(cspace)
    LibSDL::ColorRange.new((cspace >> 24) & 0x0F)
  end

  macro colorspacechroma(cspace)
    LibSDL::ChromaLocation.new((cspace >> 20) & 0x0F)
  end

  macro colorspaceprimaries(cspace)
    LibSDL::ColorPrimaries.new((cspace >> 10) & 0x1F)
  end

  macro colorspacetransfer(cspace)
    LibSDL::TransferCharacteristics.new((cspace >> 5) & 0x1F)
  end

  macro colorspacematrix(cspace)
    LibSDL::MatrixCoefficients.new(cspace & 0x1F)
  end

  macro iscolorspace_matrix_bt601(cspace)
    LibSDLMacro.colorspacematrix(cspace) == LibSDL::MATRIX_COEFFICIENTS_BT601 || LibSDLMacro.colorspacematrix(cspace) == LibSDL::MATRIX_COEFFICIENTS_BT470BG
  end

  macro iscolorspace_matrix_bt709(cspace)
    LibSDLMacro.colorspacematrix(cspace) == LibSDL::MATRIX_COEFFICIENTS_BT709
  end

  macro iscolorspace_matrix_bt2020_ncl(cspace)
    LibSDLMacro.colorspacematrix(cspace) == LibSDL::MATRIX_COEFFICIENTS_BT2020_NCL
  end

  macro iscolorspace_limited_range(cspace)
    LibSDLMacro.colorspacerange(cspace) != LibSDL::COLOR_RANGE_FULL
  end

  macro iscolorspace_full_range(cspace)
    LibSDLMacro.colorspacerange(cspace) == LibSDL::COLOR_RANGE_FULL
  end

  # SDL_rect
  # Note: These were inline functions, not macros
  
  @[AlwaysInline]
  def self.rect_to_f_rect(rect : LibSDL::Rect*, frect : LibSDL::FRect*)
    frect.value.x = rect.value.x.to_f
    frect.value.y = rect.value.y.to_f
    frect.value.w = rect.value.w.to_f
    frect.value.h = rect.value.h.to_f
  end

  @[AlwaysInline]
  def self.point_in_rect(p : LibSDL::Point*, r : LibSDL::Rect*)
    p && r && (p.value.x >= r.value.x) && (p.value.x < (r.value.x + r.value.w)) && (p.value.y >= r.value.y) && (p.value.y < (r.value.y + r.value.h))
  end

  @[AlwaysInline]
  def self.rect_empty(r : LibSDL::Rect*)
    !r || (r.value.w <= 0) || (r.value.h <= 0)
  end

  @[AlwaysInline]
  def self.rects_equal(a : LibSDL::Rect*, b : LibSDL::Rect*)
    a && b && (a.value.x == b.value.x) && (a.value.y == b.value.y) && (a.value.w == b.value.w) && (a.value.h == b.value.h)
  end

  @[AlwaysInline]
  def self.point_in_rect_float(p : LibSDL::FPoint*, r : LibSDL::FRect*)
    p && r && (p.value.x >= r.value.x) && (p.value.x <= (r.value.x + r.value.w)) && (p.value.y >= r.value.y) && (p.value.y <= (r.value.y + r.value.h))
  end

  @[AlwaysInline]
  def self.rect_empty_float(r : LibSDL::FRect*)
    !r || (r.value.w < 0.0) || (r.value.h < 0.0)
  end

  @[AlwaysInline]
  def self.rects_equal_epsilon(a : LibSDL::FRect*, b : LibSDL::FRect*, epsilon : LibC::Float)
    a && b && ((a == b) || (((a.value.x - b.value.x).abs <= epsilon) && ((a.value.y - b.value.y).abs <= epsilon) && ((a.value.w - b.value.w).abs <= epsilon) && ((a.value.h - b.value.h).abs <= epsilon)))
  end

  @[AlwaysInline]
  def self.rects_equal_float(a : LibSDL::FRect*, b : LibSDL::FRect*)
    LibSDLMacro.rects_equal_epsilon(a, b, FLT_EPSILON)
  end

  # SDL_surface

  macro mustlock(s)
    (s.value.flags & LibSDL::SURFACE_LOCK_NEEDED) == LibSDL::SURFACE_LOCK_NEEDED
  end

  # SDL_video

  macro windowpos_undefined_display(x)
    LibSDL::WINDOWPOS_UNDEFINED_MASK | x
  end

  macro windowpos_isundefined(x)
    (x & 0xFFFF0000) == LibSDL::WINDOWPOS_UNDEFINED_MASK
  end

  macro windowpos_centered_display(x)
    LibSDL::WINDOWPOS_CENTERED_MASK | x
  end

  macro windowpos_iscentered(x)
    (x & 0xFFFF0000) == LibSDL::WINDOWPOS_CENTERED_MASK
  end
end