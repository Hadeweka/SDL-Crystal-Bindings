  # (int argc, char* argv[])
  alias MainFunc = (LibC::Int, LibC::Char**) -> LibC::Int

  fun run_app = SDL_RunApp(argc : LibC::Int, argv : LibC::Char**, main_function : MainFunc, reserved : Void*) : LibC::Int
  fun enter_app_main_callbacks = SDL_EnterAppMainCallbacks(argc : LibC::Int, argv : LibC::Char**, appinit : AppInitFunc, appiter : AppIterateFunc, appevent : AppEventFunc, appquit : AppQuitFunc) : LibC::Int
