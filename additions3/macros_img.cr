module LibSDLMacro
  # SDL_image

  macro image_version_atleast(x, y, z)
    (LibSDL::IMAGE_MAJOR_VERSION >= {{x}}) && (LibSDL::IMAGE_MAJOR_VERSION > {{x}} || LibSDL::IMAGE_MINOR_VERSION >= {{y}}) && (LibSDL::IMAGE_MAJOR_VERSION > {{x}} || LibSDL::IMAGE_MINOR_VERSION > {{y}} || LibSDL::IMAGE_PATCHLEVEL >= {{z}})
  end
end