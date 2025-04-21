module LibSDLMacro
  # SDL_mixer
  
  macro image_version_atleast(x, y, z)
    (LibSDL::MIXER_MAJOR_VERSION >= {{x}}) && (LibSDL::MIXER_MAJOR_VERSION > {{x}} || LibSDL::MIXER_MINOR_VERSION >= {{y}}) && (LibSDL::MIXER_MAJOR_VERSION > {{x}} || LibSDL::MIXER_MINOR_VERSION > {{y}} || LibSDL::MIXER_PATCHLEVEL >= {{z}})
  end
end