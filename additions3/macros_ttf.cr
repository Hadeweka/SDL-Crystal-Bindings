module LibSDLMacro
  # SDL_ttf

  macro ttf_version_atleast(x, y, z)
    (LibSDL::TTF_MAJOR_VERSION >= {{x}}) && (LibSDL::TTF_MAJOR_VERSION > {{x}} || LibSDL::TTF_MINOR_VERSION >= {{y}}) && (LibSDL::TTF_MAJOR_VERSION > {{x}} || LibSDL::TTF_MINOR_VERSION > {{y}} || LibSDL::TTF_PATCHLEVEL >= {{z}})
  end
end