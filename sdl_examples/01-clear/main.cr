# Based on https://examples.libsdl.org/SDL3/renderer/01-clear/

require "../../src/sdl-crystal-bindings.cr"

class Globals
  class_property window = Pointer(LibSDL::Window).null
  class_property renderer = Pointer(LibSDL::Renderer).null
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
  # TODO: Add timer
  red = 0.5
  green = 0.5
  blue = 0.5
  LibSDL.set_render_draw_color_float(Globals.renderer, red, green, blue, LibSDL::ALPHA_OPAQUE_FLOAT)
  LibSDL.render_clear(Globals.renderer)
  LibSDL.render_present(Globals.renderer)
  return LibSDL::AppResult::APP_CONTINUE
end

def app_event_func(appdata : Void*, event : LibSDL::Event*)
  if event.value.type == LibSDL::EventType::EVENT_QUIT
    return LibSDL::AppResult::APP_SUCCESS
  end

  return LibSDL::AppResult::APP_CONTINUE
end

def app_quit_func(appstate : Void*, result : LibSDL::AppResult)
  puts "Quitting"
end

LibSDL.enter_app_main_callbacks(1, nil, ->app_init_func, ->app_iterate_func, ->app_event_func, ->app_quit_func)
