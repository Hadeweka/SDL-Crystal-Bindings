module LibSDLMacro
  # Other helper macros

  def self.fourcc(a, b, c, d)
    (a.to_u8 << 0).to_u32 | (b.to_u8 << 8).to_u32 | (c.to_u8 << 16).to_u32 | (d.to_u8 << 24).to_u32
  end

  # SDL_audio

  def self.audio_bitsize(x)
    x & LibSDL::AUDIO_MASK_BITSIZE
  end

  def self.audio_is_float(x)
    x & LibSDL::AUDIO_MASK_DATATYPE
  end

  def self.is_big_endian(x)
    x & LibSDL::AUDIO_MASK_ENDIAN
  end

  def self.is_signed(x)
    x & LibSDL::MASK_SIGNED
  end

  def self.is_int(x)
    !self.audio_is_float(x)
  end

  def self.is_little_endian(x)
    !self.is_big_endian(x)
  end

  def self.is_unsigned(x)
    !self.is_signed(x)
  end

  def self.load_wav(file, spec, audio_buf, audio_len)
    LibSDL.load_wav_rw(LibSDL.rwfrom_file(file, "rb"), 1, spec, audio_buf, audio_len)
  end

  # SDL_error

  def self.out_of_memory
    LibSDL.error(LibSDL::Errorcode::ENOMEM)
  end

  def self.unsupported
    LibSDL.error(LibSDL::Errorcode::UNSUPPORTED)
  end

  def self.invalid_param_error(param)
    LibSDL.set_error("Parameter '%s' is invalid", (param))
  end

  # SDL_events

  def self.get_event_state(type)
    LibSDL.event_state(type, LibSDL::QUERY)
  end

  # SDL_gamecontroller

  def self.game_controller_add_mappings_from_file(file)
    LibSDL.game_controller_add_mappings_from_rw(LibSDL.rwfrom_file(file, "rb"), 1)
  end

  # SDL_keycode

  def self.scancode_to_keycode(x)
    x | LibSDL::K_SCANCODE_MASK
  end

  # SDL_mouse

  def self.button(x)
    (1 << ((x)-1))
  end

  # SDL_pixels

  def self.define_pixel_fourcc(a, b, c, d)
    self.fourcc(a, b, c, d) # TODO: Implement fourcc
  end

  def self.define_pixel_format(type, order, layout, bits, bytes)
    ((1 << 28) | ((type) << 24) | ((order) << 20) | ((layout) << 16) | ((bits) << 8) | ((bytes) << 0))
  end

  def self.pixel_flag(x)
     (((x) >> 28) & 0x0F)
  end

  def self.pixel_type(x)
    (((x) >> 24) & 0x0F)
  end

  def self.pixel_order(x)
    (((x) >> 20) & 0x0F)
  end

  def self.pixel_layout(x)
    (((x) >> 16) & 0x0F)
  end

  def self.bits_per_pixel(x)
    (((x) >> 8) & 0xFF)
  end

  def self.bytes_per_pixel(x)
    (self.is_pixel_format_fourcc(x) ? ((((x) == LibSDL::PIXELFORMAT_YUY2) || ((x) == LibSDL::PIXELFORMAT_UYVY) || ((x) == LibSDL::PIXELFORMAT_YVYU)) ? 2 : 1) : (((x) >> 0) & 0xFF))
  end

  def self.is_pixel_format_indexed(format)
    (!self.is_pixel_format_fourcc(format) && ((self.pixel_type(format) == LibSDL::PIXELTYPE_INDEX1) || (self.pixel_type(format) == LibSDL::PIXELTYPE_INDEX4) || (self.pixel_type(format) == LibSDL::PIXELTYPE_INDEX8)))
  end

  def self.is_pixel_format_packed(format)
     (!self.is_pixel_format_fourcc(format) && ((self.pixel_type(format) == LibSDL::PIXELTYPE_PACKED8) || (self.pixel_type(format) == LibSDL::PIXELTYPE_PACKED16) || (self.pixel_type(format) == LibSDL::PIXELTYPE_PACKED32)))
  end

  def self.is_pixel_format_array(format)
    (!self.is_pixel_format_fourcc(format) && ((self.pixel_type(format) == LibSDL::PIXELTYPE_ARRAYU8) || (self.pixel_type(format) == LibSDL::PIXELTYPE_ARRAYU16) || (self.pixel_type(format) == LibSDL::PIXELTYPE_ARRAYU32) || (self.pixel_type(format) == LibSDL::PIXELTYPE_ARRAYF16) || (self.pixel_type(format) == LibSDL::PIXELTYPE_ARRAYF32)))
  end

  def self.is_pixel_format_alpha(format)
    ((self.is_pixel_format_fourcc(format) && ((self.pixel_order(format) == LibSDL::PACKEDORDER_ARGB) || (self.pixel_order(format) == LibSDL::PACKEDORDER_RGBA) || (self.pixel_order(format) == LibSDL::PACKEDORDER_ABGR) || (self.pixel_order(format) == LibSDL::PACKEDORDER_BGRA))) || (self.is_pixel_format_array(format) && ((self.pixel_order(format) == LibSDL::ARRAYORDER_ARGB) || (self.pixel_order(format) == LibSDL::ARRAYORDER_RGBA) || (self.pixel_order(format) == LibSDL::ARRAYORDER_ABGR) || (self.pixel_order(format) == LibSDL::ARRAYORDER_BGRA))))
  end

  def self.is_pixel_format_fourcc(format)
    ((format) && (self.pixel_flag(format) != 1))
  end

  # SDL_shape

  def self.shape_mode_alpha(mode)
    (mode == LibSDL::ShapeMode::ShapeModeDefault || mode == LibSDL::ShapeMode::ShapeModeBinarizeAlpha || mode == LibSDL::ShapeMode::ShapeModeReverseBinarizeAlpha)
  end

  # SDL_surface

  def self.must_lock(s)
    (((s).value.flags & LibSDL::RLEACCEL) != 0)
  end

  def self.load_bmp(file)
    LibSDL.load_bmp_rw(LibSDL.rwfrom_file(file, "rb"), 1)
  end

  def self.save_bmp(surface, file)
    LibSDL.save_bmp_rw(surface, LibSDL.rwfrom_file(file, "wb"), 1)
  end

  def self.blit_surface(*args)
    LibSDL.upper_blit(*args)
  end

  def self.blit_scaled(*args)
    LibSDL.upper_blit_scaled(*args)
  end

  # SDL_video

  def self.window_pos_undefined_display(x)
    (LibSDL::WINDOWPOS_UNDEFINED_MASK | (x))
  end

  def self.window_pos_is_undefined(x)
    (((x)&0xFFFF0000) == LibSDL::WINDOWPOS_UNDEFINED_MASK)
  end

  def self.window_pos_centered_display(x)
    (LibSDL::WINDOWPOS_CENTERED_MASK | (x))
  end

  def self.window_pos_is_centered(x)
    (((x)&0xFFFF0000) == LibSDL::WINDOWPOS_CENTERED_MASK)
  end
end