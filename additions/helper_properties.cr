  # (void* userdata, void* value)
  alias CleanupPropertyCallback = (Void*, Void*) -> Void

  # (void* userdata, SDL_PropertiesID props, const char* name)
  alias EnumeratePropertiesCallback = (Void*, PropertiesID, LibC::Char*) -> Void
