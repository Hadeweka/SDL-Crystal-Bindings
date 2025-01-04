# Based on https://examples.libsdl.org/SDL3/renderer/02-primitives/

require "../../src/sdl3-crystal-bindings.cr"

LibSDLMacro.main_use_callbacks(->app_init_func, ->app_iterate_func, ->app_event_func, ->app_quit_func)

class Globals
  class_property window = Pointer(LibSDL::Window).null
  class_property renderer = Pointer(LibSDL::Renderer).null
  # NOTE: We do not fill the array yet, see explanation below.
  class_property points = Array(LibSDL::FPoint).new(initial_capacity: 500)
end

def app_init_func(appstate : Void**, argc : LibC::Int, argv : LibC::Char**)
  LibSDL.set_app_metadata("Example Renderer Primitives", "1.0", "com.example.renderer-primitives")

  if !LibSDL.init(LibSDL::InitFlags::VIDEO)
    LibSDL.log("Couldn't initialize SDL: %s", LibSDL.get_error)
    return LibSDL::AppResult::FAILURE
  end

  if !LibSDL.create_window_and_renderer("examples/renderer/primitives", 640, 480, LibSDL::WindowFlags::None, out window, out renderer)
    LibSDL.log("Couldn't create window/renderer: %s", LibSDL.get_error)
    return LibSDL::AppResult::FAILURE
  end

  Globals.window = window
  Globals.renderer = renderer

  # NOTE: Since FPoint is a struct, it is somewhat immutable, so we can't change it in an array.
  #       Therefore, we have to give the array a new FPoint if we want to change one.
  #       Since filling the array with FPoints before running this callback would be pointless, we only reserve the space.
  #       This is one of the differences between C and Crystal you have to keep in mind.
  500.times do
    point = LibSDL::FPoint.new
    # NOTE: Crystal has its own random function, so we don't need the one from SDL
    point.x = (rand * 440.0) + 100.0
    point.y = (rand * 280.0) + 100.0
    Globals.points.push point
  end

  return LibSDL::AppResult::CONTINUE
end

def app_iterate_func(appstate : Void*)
  rect = LibSDL::FRect.new

  LibSDL.set_render_draw_color(Globals.renderer, 33, 33, 33, LibSDL::ALPHA_OPAQUE)
  LibSDL.render_clear(Globals.renderer)

  LibSDL.set_render_draw_color(Globals.renderer, 0, 0, 255, LibSDL::ALPHA_OPAQUE)
  rect.x = rect.y = 100
  rect.w = 440
  rect.h = 280
  LibSDL.render_fill_rect(Globals.renderer, pointerof(rect))

  LibSDL.set_render_draw_color(Globals.renderer, 255, 0, 0, LibSDL::ALPHA_OPAQUE)
  LibSDL.render_points(Globals.renderer, Globals.points, Globals.points.size)

  LibSDL.set_render_draw_color(Globals.renderer, 0, 255, 0, LibSDL::ALPHA_OPAQUE)
  rect.x += 30
  rect.y += 30
  rect.w -= 60
  rect.h -= 60
  LibSDL.render_rect(Globals.renderer, pointerof(rect))

  LibSDL.set_render_draw_color(Globals.renderer, 255, 255, 0, LibSDL::ALPHA_OPAQUE)
  LibSDL.render_line(Globals.renderer, 0, 0, 640, 480)
  LibSDL.render_line(Globals.renderer, 0, 480, 640, 0)

  LibSDL.render_present(Globals.renderer)

  return LibSDL::AppResult::CONTINUE
end

def app_event_func(appstate : Void*, event : LibSDL::Event*)
  if event.value.type == LibSDL::EventType::QUIT.to_u32
    return LibSDL::AppResult::SUCCESS
  end

  return LibSDL::AppResult::CONTINUE
end

def app_quit_func(appstate : Void*, result : LibSDL::AppResult)
end
