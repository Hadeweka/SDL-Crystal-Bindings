# Based on https://examples.libsdl.org/SDL3/renderer/15-cliprect/

require "../../src/sdl3-crystal-bindings.cr"

require "file_utils"

LibSDLMacro.main_use_callbacks(->app_init_func, ->app_iterate_func, ->app_event_func, ->app_quit_func)

WINDOW_WIDTH = 640
WINDOW_HEIGHT = 480
CLIPRECT_SIZE = 250
CLIPRECT_SPEED = 200

class Globals
  class_property window = Pointer(LibSDL::Window).null
  class_property renderer = Pointer(LibSDL::Renderer).null
  class_property texture = Pointer(LibSDL::Texture).null
  class_property cliprect_position = LibSDL::FPoint.new
  # NOTE: We already initialize the direction variable here
  class_property cliprect_direction = LibSDL::FPoint.new(x: 1.0, y: 1.0)
  class_property initial_time = Time.utc
  class_property last_time = 0u64
end

def app_init_func(appstate : Void**, argc : LibC::Int, argv : LibC::Char**)
  LibSDL.set_app_metadata("Example Renderer Clipping Rectangle", "1.0", "com.example.renderer-cliprect")

  if 0 == LibSDL.init(LibSDL::InitFlags::VIDEO)
    LibSDL.log("Couldn't initialize SDL: %s", LibSDL.get_error)
    return LibSDL::AppResult::FAILURE
  end

  if 0 == LibSDL.create_window_and_renderer("examples/renderer/cliprect", WINDOW_WIDTH, WINDOW_HEIGHT, LibSDL::WindowFlags::None, out window, out renderer)
    LibSDL.log("Couldn't create window/renderer: %s", LibSDL.get_error)
    return LibSDL::AppResult::FAILURE
  end

  Globals.window = window
  Globals.renderer = renderer

  Globals.last_time = (Time.utc - Globals.initial_time).total_milliseconds.to_u64!

  bmp_path = Path.new(FileUtils.pwd, "sdl3_examples/resources/sample.bmp")
  surface = LibSDL.load_bmp(bmp_path.to_s)
  if !surface
    LibSDL.log("Couldn't load bitmap: %s", LibSDL.get_error)
    return LibSDL::AppResult::FAILURE
  end

  Globals.texture = LibSDL.create_texture_from_surface(Globals.renderer, surface)
  if !Globals.texture
    LibSDL.log("Couldn't create static texture: %s", LibSDL.get_error)
    return LibSDL::AppResult::FAILURE
  end

  LibSDL.destroy_surface(surface)

  return LibSDL::AppResult::CONTINUE
end

def app_iterate_func(appstate : Void*)
  cliprect = LibSDL::Rect.new(x: Globals.cliprect_position.x.round.to_i32, y: Globals.cliprect_position.y.round.to_i32, w: CLIPRECT_SIZE, h: CLIPRECT_SIZE)
  now = (Time.utc - Globals.initial_time).total_milliseconds.to_u64!
  elapsed = (now &- Globals.last_time) / 1000.0
  distance = elapsed * CLIPRECT_SPEED

  new_x = Globals.cliprect_position.x + distance * Globals.cliprect_direction.x
  new_dir_x = Globals.cliprect_direction.x
  if new_x < 0.0
    new_x = 0.0
    new_dir_x = 1.0
  elsif new_x >= (WINDOW_WIDTH - CLIPRECT_SIZE)
    new_x = (WINDOW_WIDTH - CLIPRECT_SIZE) - 1
    new_dir_x = -1.0
  end

  new_y = Globals.cliprect_position.y + distance * Globals.cliprect_direction.y
  new_dir_y = Globals.cliprect_direction.y
  if new_y < 0.0
    new_y = 0.0
    new_dir_y = 1.0
  elsif new_y >= (WINDOW_HEIGHT - CLIPRECT_SIZE)
    new_y = (WINDOW_HEIGHT - CLIPRECT_SIZE) - 1
    new_dir_y = -1.0
  end

  Globals.cliprect_position = LibSDL::FPoint.new(x: new_x, y: new_y)
  Globals.cliprect_direction = LibSDL::FPoint.new(x: new_dir_x, y: new_dir_y)

  LibSDL.set_render_clip_rect(Globals.renderer, pointerof(cliprect))

  Globals.last_time = now

  LibSDL.set_render_draw_color(Globals.renderer, 33, 33, 33, LibSDL::ALPHA_OPAQUE)
  LibSDL.render_clear(Globals.renderer)

  LibSDL.render_texture(Globals.renderer, Globals.texture, nil, nil)

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
  LibSDL.destroy_texture(Globals.texture)
end
