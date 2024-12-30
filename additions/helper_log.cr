  # (void* userdata, int category, SDL_LogPriority priority, const char* message)
  alias LogOutputFunction = (Void*, LibC::Int, LogPriority, LibC::Char*) -> Void
