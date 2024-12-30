  # (void* userdata)
  alias EGLAttribArrayCallback = (Void*) -> EGLAttrib*

  # (void* userdata, SDL_EGLDisplay display, SDL_EGLConfig config)
  alias EGLIntArrayCallback = (Void*, EGLDisplay, EGLConfig) -> EGLint*
  
  # (SDL_Window* win, const SDL_Point* area, void* data)
  alias HitTest = (Window*, Point*, Void*) -> HitTestResult

  alias GLContextState = Void
