# Based on https://examples.libsdl.org/SDL3/renderer/05-rectangles/

require "../../src/sdl3-crystal-bindings.cr"

LibSDLMacro.main_use_callbacks(->app_init_func, ->app_iterate_func, ->app_event_func, ->app_quit_func)

WINDOW_WIDTH = 640
WINDOW_HEIGHT = 480

class Globals
  class_property window = Pointer(LibSDL::Window).null
  class_property renderer = Pointer(LibSDL::Renderer).null
  class_property initial_time = Time.utc
end

def app_init_func(appstate : Void**, argc : LibC::Int, argv : LibC::Char**)
  LibSDL.set_app_metadata("Example Renderer Rectangles", "1.0", "com.example.renderer-rectangles")

  if !LibSDL.init(LibSDL::INIT_VIDEO)
    LibSDL.log("Couldn't initialize SDL: %s", LibSDL.get_error)
    return LibSDL::AppResult::APP_FAILURE
  end

  if !LibSDL.create_window_and_renderer("examples/renderer/rectangles", 640, 480, 0, out window, out renderer)
    LibSDL.log("Couldn't create window/renderer: %s", LibSDL.get_error)
    return LibSDL::AppResult::APP_FAILURE
  end

  Globals.window = window
  Globals.renderer = renderer

  return LibSDL::AppResult::APP_CONTINUE
end

def app_iterate_func(appstate : Void*)
  rects = Array(LibSDL::FRect).new(initial_capacity: 16)
  now = (Time.utc - Globals.initial_time).total_milliseconds.to_u64!

  direction = (now % 2000) >= 1000 ? 1.0 : -1.0
  scale = ((now % 1000).to_i64! - 500) / 500.0 * direction

  LibSDL.set_render_draw_color(Globals.renderer, 0, 0, 0, LibSDL::ALPHA_OPAQUE)
  LibSDL.render_clear(Globals.renderer)

  rects.push(LibSDL::FRect.new(x: 100, y: 100, w: 100 + 100 * scale, h: 100 + 100 * scale))
  LibSDL.set_render_draw_color(Globals.renderer, 255, 0, 0, LibSDL::ALPHA_OPAQUE)
  # NOTE: We can't get pointers for specific structs in arrays, so just create a copy
  rect = rects[0]
  LibSDL.render_rect(Globals.renderer, pointerof(rect))

  # NOTE: This keeps this example close to the original
  rects.clear

  0.upto(3 - 1) do |i|
    size = (i + 1) * 50.0
    w = h = size + (size * scale)
    rects.push LibSDL::FRect.new(x: (WINDOW_WIDTH - w) / 2, y: (WINDOW_HEIGHT - h) / 2, w: w, h: h)
  end
  LibSDL.set_render_draw_color(Globals.renderer, 0, 255, 0, LibSDL::ALPHA_OPAQUE)
  LibSDL.render_rects(Globals.renderer, rects, 3)

  rects.clear

  rects.push(LibSDL::FRect.new(x: 400, y: 50, w: 100 + 100 * scale, h: 50 + 50 * scale))
  rect = rects[0]
  LibSDL.set_render_draw_color(Globals.renderer, 0, 0, 255, LibSDL::ALPHA_OPAQUE)
  LibSDL.render_fill_rect(Globals.renderer, pointerof(rect))

  rects.clear

  0.upto(16 - 1) do |i|
    w = WINDOW_WIDTH / 16.0
    h = i * 8.0
    rects.push LibSDL::FRect.new(x: i * w, y: WINDOW_HEIGHT - h, w: w, h: h)
  end
  LibSDL.set_render_draw_color(Globals.renderer, 255, 255, 255, LibSDL::ALPHA_OPAQUE)
  LibSDL.render_fill_rects(Globals.renderer, rects, 16)

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
