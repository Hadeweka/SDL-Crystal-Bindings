module LibSDLMacro
  # SDL_mixer

  def self.mixer_version(x)
    (x).value.major = LibSDL::MIXER_MAJOR_VERSION
    (x).value.minor = LibSDL::MIXER_MINOR_VERSION
    (x).value.patch = LibSDL::MIXER_PATCHLEVEL
  end

  def self.mix_version(x)
    self.mixer_version(x)
  end

  def self.mixer_version_atleast
    ((LibSDL::MIXER_MAJOR_VERSION >= x) && (LibSDL::MIXER_MAJOR_VERSION > x || LibSDL::MIXER_MINOR_VERSION >= y) && (LibSDL::MIXER_MAJOR_VERSION > x || LibSDL::MIXER_MINOR_VERSION > y || LibSDL::MIXER_PATCHLEVEL >= z))
  end

  def self.mix_set_error(*args)
    LibSDL.set_error(*args)
  end

  def self.mix_get_error
    LibSDL.get_error
  end

  def self.mix_clear_error
    LibSDL.clear_error
  end

  def self.mix_out_of_memory
    LibSDL.out_of_memory
  end
end