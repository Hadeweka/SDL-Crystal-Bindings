@[Link("SDL3_image")]
lib LibSDL
  # SDL_image

  IMAGE_MAJOR_VERSION = 3
  IMAGE_MINOR_VERSION = 1
  IMAGE_MICRO_VERSION = 0
  IMAGE_VERSION = (((IMAGE_MAJOR_VERSION)*1000 + (IMAGE_MINOR_VERSION)*100 + (IMAGE_MICRO_VERSION)))

  struct IMGAnimation
    w : LibC::Int
    h : LibC::Int
    count : LibC::Int
    frames : Surface**
    delays : LibC::Int*
  end

end

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
