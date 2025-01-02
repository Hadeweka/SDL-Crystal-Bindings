module LibSDLMacro
  # SDL_ttf

  def self.ttf_version(x)
    (x).value.major = LibSDL::TTF_MAJOR_VERSION
    (x).value.minor = LibSDL::TTF_MINOR_VERSION
    (x).value.patch = LibSDL::TTF_PATCHLEVEL
  end

  def self.ttf_version_atleast(x, y, z)
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