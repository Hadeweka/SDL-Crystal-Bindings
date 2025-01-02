# Based on https://examples.libsdl.org/SDL3/renderer/04-points/

require "../../../src/sdl3-crystal-bindings.cr"

LibSDLMacro.main_use_callbacks(->app_init_func, ->app_iterate_func, ->app_event_func, ->app_quit_func)

WINDOW_WIDTH = 640
WINDOW_HEIGHT = 480

NUM_POINTS = 500
MIN_PIXELS_PER_SECOND = 30
MAX_PIXELS_PER_SECOND = 60

class Globals
  class_property window = Pointer(LibSDL::Window).null
  class_property renderer = Pointer(LibSDL::Renderer).null
  class_property initial_time = Time.utc
  class_property last_time = 0u64

  class_property points = Array(LibSDL::FPoint).new(initial_capacity: NUM_POINTS)
  class_property point_speeds = Array(Float32).new(initial_capacity: NUM_POINTS)
end

def app_init_func(appstate : Void**, argc : LibC::Int, argv : LibC::Char**)
  LibSDL.set_app_metadata("Example Renderer Points", "1.0", "com.example.renderer-points")

  if !LibSDL.init(LibSDL::INIT_VIDEO)
    LibSDL.log("Couldn't initialize SDL: %s", LibSDL.get_error)
    return LibSDL::AppResult::APP_FAILURE
  end

  if !LibSDL.create_window_and_renderer("examples/renderer/points", 640, 480, 0, out window, out renderer)
    LibSDL.log("Couldn't create window/renderer: %s", LibSDL.get_error)
    return LibSDL::AppResult::APP_FAILURE
  end

  Globals.window = window
  Globals.renderer = renderer

  0.upto(NUM_POINTS - 1) do |i|
    Globals.points.push LibSDL::FPoint.new(x: rand * WINDOW_WIDTH, y: rand * WINDOW_HEIGHT)
    Globals.point_speeds.push MIN_PIXELS_PER_SECOND + rand.to_f32 * (MAX_PIXELS_PER_SECOND - MIN_PIXELS_PER_SECOND)
  end

  # NOTE: We want to prevent an overflow by any means, so the casts wrap the integers around if too large
  Globals.last_time = (Time.utc - Globals.initial_time).total_milliseconds.to_u64!

  return LibSDL::AppResult::APP_CONTINUE
end

def app_iterate_func(appstate : Void*)
  now = (Time.utc - Globals.initial_time).total_milliseconds.to_u64!
  elapsed = (now &- Globals.last_time) / 1000.0

  0.upto(NUM_POINTS - 1) do |i|
    distance = elapsed * Globals.point_speeds[i]
    # NOTE: We need to provide a new FPoint, as the ones in the array are immutable in Crystal
    new_x = Globals.points[i].x + distance
    new_y = Globals.points[i].y + distance

    if new_x >= WINDOW_WIDTH || new_y >= WINDOW_HEIGHT
      if rand(2) == 1
        new_x = rand * WINDOW_WIDTH
        new_y = 0.0
      else
        new_x = 0.0
        new_y = rand * WINDOW_HEIGHT
      end
      Globals.point_speeds[i] = MIN_PIXELS_PER_SECOND + rand.to_f32 * (MAX_PIXELS_PER_SECOND - MIN_PIXELS_PER_SECOND)
    end

    Globals.points[i] = LibSDL::FPoint.new(x: new_x, y: new_y)
  end

  Globals.last_time = (Time.utc - Globals.initial_time).total_milliseconds.to_u64!

  LibSDL.set_render_draw_color(Globals.renderer, 0, 0, 0, LibSDL::ALPHA_OPAQUE)
  LibSDL.render_clear(Globals.renderer)

  LibSDL.set_render_draw_color(Globals.renderer, 255, 255, 255, LibSDL::ALPHA_OPAQUE)
  LibSDL.render_points(Globals.renderer, Globals.points, NUM_POINTS)

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
