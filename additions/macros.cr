module LibSDLMacro
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

  # SDL_events

  # SDL_gamecontroller

  # SDL_keycode

  # SDL_mouse

  # SDL_pixels

  # SDL_shape

  # SDL_surface

  # TODO: Others

  def self.load_bmp(file)
    LibSDL.load_bmp_rw(LibSDL.rwfrom_file(file, "rb"), 1)
  end

  # SDL_video
end