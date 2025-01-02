# Based on https://examples.libsdl.org/SDL3/renderer/01-clear/

# NOTE: Replace this with the proper relative path.
require "../../src/sdl3-crystal-bindings.cr"

# NOTE: This uses the main callbacks to stay as close to the original example as possible.
#       In Crystal, our macros are more powerful than in C, so we can (and should) name the callbacks explicitely.
#       For now, this method doesn't actually override the main function - this might change later on!
LibSDLMacro.main_use_callbacks(->app_init_func, ->app_iterate_func, ->app_event_func, ->app_quit_func)

# NOTE: We don't have static variables in Crystal, but class properties will do the same job (better).
class Globals
  class_property window = Pointer(LibSDL::Window).null
  class_property renderer = Pointer(LibSDL::Renderer).null
  class_property initial_time = Time.utc
end

def app_init_func(appstate : Void**, argc : LibC::Int, argv : LibC::Char**)
  LibSDL.set_app_metadata("Example Renderer Clear", "1.0", "com.example.renderer-clear")

  if !LibSDL.init(LibSDL::INIT_VIDEO)
    LibSDL.log("Couldn't initialize SDL: %s", LibSDL.get_error)
    # NOTE: We sacrifice some of the brevity of the original SDL to give us more type safety.
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

def app_iterate_func(appstate : Void*)
  # NOTE: The time and timer functions from SDL are not included, as Crystal already provides a good API for these.
  now = (Time.utc - Globals.initial_time).total_milliseconds / 1000.0

  # NOTE: SDL's math modules are also not included, for the same reason.
  red = 0.5 + 0.5 * Math.sin(now)
  green = 0.5 + 0.5 * Math.sin(now + Math::PI * 2 / 3)
  blue = 0.5 + 0.5 * Math.sin(now + Math::PI * 4 / 3)
  LibSDL.set_render_draw_color_float(Globals.renderer, red, green, blue, LibSDL::ALPHA_OPAQUE_FLOAT)

  LibSDL.render_clear(Globals.renderer)
  LibSDL.render_present(Globals.renderer)

  return LibSDL::AppResult::APP_CONTINUE
end

def app_event_func(appstate : Void*, event : LibSDL::Event*)
  # NOTE: The necessity to cast to UInt32 comes from the way events are implemented in SDL.
  #       In fact, the general Event class has a UInt32 here, while EventType is an enum (which is a different class in Crystal).
  #       Since these are low level bindings, you have to be very careful with the types.
  #       If you want to build a game or an engine for yourself, a wrapper is recommended to avoid errors.
  if event.value.type == LibSDL::EventType::EVENT_QUIT.to_u32
    return LibSDL::AppResult::APP_SUCCESS
  end

  return LibSDL::AppResult::APP_CONTINUE
end

def app_quit_func(appstate : Void*, result : LibSDL::AppResult)
end

# NOTE: We don't need to call any other code here, due to the macro at the beginning.
 