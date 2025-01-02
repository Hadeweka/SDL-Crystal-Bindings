# Based on https://examples.libsdl.org/SDL3/renderer/03-lines/

require "../../src/sdl3-crystal-bindings.cr"

LibSDLMacro.main_use_callbacks(->app_init_func, ->app_iterate_func, ->app_event_func, ->app_quit_func)

class Globals
  class_property window = Pointer(LibSDL::Window).null
  class_property renderer = Pointer(LibSDL::Renderer).null
end

def app_init_func(appstate : Void**, argc : LibC::Int, argv : LibC::Char**)
  LibSDL.set_app_metadata("Example Renderer Lines", "1.0", "com.example.renderer-lines")

  if !LibSDL.init(LibSDL::INIT_VIDEO)
    LibSDL.log("Couldn't initialize SDL: %s", LibSDL.get_error)
    return LibSDL::AppResult::APP_FAILURE
  end

  if !LibSDL.create_window_and_renderer("examples/renderer/lines", 640, 480, 0, out window, out renderer)
    LibSDL.log("Couldn't create window/renderer: %s", LibSDL.get_error)
    return LibSDL::AppResult::APP_FAILURE
  end

  Globals.window = window
  Globals.renderer = renderer

  return LibSDL::AppResult::APP_CONTINUE
end

def app_iterate_func(appstate : Void*)
  # NOTE: This code is a bit different than in C, but it does the same thing
  line_points = [{100, 354}, {220, 230}, {140, 230}, {320, 100}, {500, 230}, {420, 230}, {540, 354}, {400, 354}, {100, 354}].map do |tuple|
    point = LibSDL::FPoint.new(x: tuple[0], y: tuple[1])
    point
  end

  LibSDL.set_render_draw_color(Globals.renderer, 100, 100, 100, LibSDL::ALPHA_OPAQUE)
  LibSDL.render_clear(Globals.renderer)

  LibSDL.set_render_draw_color(Globals.renderer, 127, 49, 32, LibSDL::ALPHA_OPAQUE)
  LibSDL.render_line(Globals.renderer, 240, 450, 400, 450)
  LibSDL.render_line(Globals.renderer, 240, 356, 400, 356)
  LibSDL.render_line(Globals.renderer, 240, 356, 240, 450)
  LibSDL.render_line(Globals.renderer, 400, 356, 400, 450)

  LibSDL.set_render_draw_color(Globals.renderer, 0, 255, 0, LibSDL::ALPHA_OPAQUE)
  LibSDL.render_lines(Globals.renderer, line_points, line_points.size)

  0.upto(360 - 1) do |i|
    size = 30.0
    x = 320.0
    y = 95.0 - (size / 2.0)
    LibSDL.set_render_draw_color(Globals.renderer, rand(256), rand(256), rand(256), LibSDL::ALPHA_OPAQUE)
    LibSDL.render_line(Globals.renderer, x, y, x + Math.sin(i.to_f32) * size, y + Math.cos(i.to_f32) * size)
  end

  LibSDL.render_present(Globals.renderer)

  return LibSDL::AppResult::APP_CONTINUE
end

def app_event_func(appstate : Void*, event : LibSDL::Event*)
  if event.value.type == LibSDL::EventType::EVENT_QUIT.to_u32
    return LibSDL::AppResult::APP_SUCCESS
  end

  return LibSDL::AppResult::APP_CONTINUE
end

def app_quit_func(appstate : Void*, result : LibSDL::AppResult)
end
