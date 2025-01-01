  # (void** appstate, int argc, char* argv[])
  alias AppInitFunc = (Void**, LibC::Int, LibC::Char**) -> AppResult

  # (void* appstate)
  alias AppIterateFunc = (Void*) -> AppResult

  # (void* appstate, SDL_Event* event)
  alias AppEventFunc = (Void*, Event*) -> AppResult
  
  # (void* appstate, SDL_AppResult result)
  alias AppQuitFunc = (Void*, AppResult) -> Void

  # (void* userdata)
  alias MainThreadCallback = (Void*) -> Void
