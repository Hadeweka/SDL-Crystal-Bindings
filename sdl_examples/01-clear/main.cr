# Based on https://examples.libsdl.org/SDL3/renderer/01-clear/

require "../../src/sdl-crystal-bindings.cr"

# NOTE: We don't have static variables in Crystal, but class properties will do
class Globals
  class_property window = Pointer(LibSDL::Window).null
  class_property renderer = Pointer(LibSDL::Renderer).null
  class_property initial_time = Time.utc
end

def app_init_func(appdata : Void**, argc : LibC::Int, argv : LibC::Char**)
  LibSDL.set_app_metadata("Example Renderer Clear", "1.0", "com.example.renderer-clear")

  if !LibSDL.init(LibSDL::INIT_VIDEO)
    LibSDL.log("Couldn't initialize SDL: %s", LibSDL.get_error)
    return LibSDL::AppResult::APP_FAILURE
  end

  if !LibSDL.create_window_and_renderer("examples/renderer/clear", 640, 480, 0, out window, out renderer)
    LibSDL.log("Couldn't create window/renderer: %s", LibSDL.get_error)
    return LibSDL::AppResult::APP_FAILURE
  end

  Globals.window = window
  Globals.renderer = renderer
    
  return LibSDL::AppResult::APP_CONTINUE
end

def app_iterate_func(appdata : Void*)
  # NOTE: The time and timer functions from SDL are not included, as Crystal already provides a good API for these
  now = (Time.utc - Globals.initial_time).total_milliseconds / 1000.0

  # NOTE: SDL's math modules are also not included, for the same reason
  red = 0.5 + 0.5 * Math.sin(now)
  green = 0.5 + 0.5 * Math.sin(now + Math::PI * 2 / 3)
  blue = 0.5 + 0.5 * Math.sin(now + Math::PI * 4 / 3)
  LibSDL.set_render_draw_color_float(Globals.renderer, red, green, blue, LibSDL::ALPHA_OPAQUE_FLOAT)

  LibSDL.render_clear(Globals.renderer)
  LibSDL.render_present(Globals.renderer)

  return LibSDL::AppResult::APP_CONTINUE
end

def app_event_func(appdata : Void*, event : LibSDL::Event*)
  if event.value.type == LibSDL::EventType::EVENT_QUIT.to_u32
    return LibSDL::AppResult::APP_SUCCESS
  end

  return LibSDL::AppResult::APP_CONTINUE
end

def app_quit_func(appstate : Void*, result : LibSDL::AppResult)
end

# NOTE: This is not a very elegant way to enable these callbacks, but it works for now
# NOTE: This might change at a later point
def sdl_main(argc : Int32, argv : UInt8**)
  LibSDL.enter_app_main_callbacks(argc, argv, ->app_init_func, ->app_iterate_func, ->app_event_func, ->app_quit_func)
end

LibSDL.run_app(ARGC_UNSAFE, ARGV_UNSAFE, ->sdl_main, nil)
