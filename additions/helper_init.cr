  # (void* appstate, SDL_AppResult result)
  alias AppQuitFunc = (Void*, AppResult) -> Void

  # (void* userdata)
  alias MainThreadCallback = (Void*) -> Void
