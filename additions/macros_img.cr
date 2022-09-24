module LibSDLMacro
  # SDL_image

  def self.image_version(x)
    (x).value.major = LibSDL::IMAGE_MAJOR_VERSION
    (x).value.minor = LibSDL::IMAGE_MINOR_VERSION
    (x).value.patch = LibSDL::IMAGE_PATCHLEVEL
  end

  def self.image_version_atleast
    ((LibSDL::IMAGE_MAJOR_VERSION >= x) && (LibSDL::IMAGE_MAJOR_VERSION > x || LibSDL::IMAGE_MINOR_VERSION >= y) && (LibSDL::IMAGE_MAJOR_VERSION > x || LibSDL::IMAGE_MINOR_VERSION > y || LibSDL::IMAGE_PATCHLEVEL >= z))
  end

  def self.img_set_error(*args)
    LibSDL.set_error(*args)
  end

  def self.img_get_error
    LibSDL.get_error
  end
end