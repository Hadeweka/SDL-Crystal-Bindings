# Based on https://examples.libsdl.org/SDL3/renderer/08-rotating-textures/

require "../../src/sdl3-crystal-bindings.cr"

require "file_utils"

LibSDLMacro.main_use_callbacks(->app_init_func, ->app_iterate_func, ->app_event_func, ->app_quit_func)

WINDOW_WIDTH = 640
WINDOW_HEIGHT = 480

class Globals
  class_property window = Pointer(LibSDL::Window).null
  class_property renderer = Pointer(LibSDL::Renderer).null
  class_property texture = Pointer(LibSDL::Texture).null
  class_property texture_width = 0i32
  class_property texture_height = 0i32
  class_property initial_time = Time.utc
end

def app_init_func(appstate : Void**, argc : LibC::Int, argv : LibC::Char**)
  LibSDL.set_app_metadata("Example Renderer Rotating Textures", "1.0", "com.example.renderer-rotating-textures")

  if !LibSDL.init(LibSDL::INIT_VIDEO)
    LibSDL.log("Couldn't initialize SDL: %s", LibSDL.get_error)
    return LibSDL::AppResult::APP_FAILURE
  end

  if !LibSDL.create_window_and_renderer("examples/renderer/rotating-textures", 640, 480, 0, out window, out renderer)
    LibSDL.log("Couldn't create window/renderer: %s", LibSDL.get_error)
    return LibSDL::AppResult::APP_FAILURE
  end

  Globals.window = window
  Globals.renderer = renderer

  bmp_path = Path.new(FileUtils.pwd, "sdl3_examples/resources/sample.bmp")
  surface = LibSDL.load_bmp(bmp_path.to_s)
  if !surface
    LibSDL.log("Couldn't load bitmap: %s", LibSDL.get_error)
    return LibSDL::AppResult::APP_FAILURE
  end

  Globals.texture_width = surface.value.w
  Globals.texture_height = surface.value.h

  Globals.texture = LibSDL.create_texture_from_surface(Globals.renderer, surface)
  if !Globals.texture
    LibSDL.log("Couldn't create static texture: %s", LibSDL.get_error)
    return LibSDL::AppResult::APP_FAILURE
  end

  LibSDL.destroy_surface(surface)

  return LibSDL::AppResult::APP_CONTINUE
end

def app_iterate_func(appstate : Void*)
  center = LibSDL::FPoint.new
  dst_rect = LibSDL::FRect.new
  now = (Time.utc - Globals.initial_time).total_milliseconds.to_u64!

  rotation = (now % 2000) / 2000.0 * 360.0

  LibSDL.set_render_draw_color(Globals.renderer, 0, 0, 0, LibSDL::ALPHA_OPAQUE)
  LibSDL.render_clear(Globals.renderer)

  dst_rect.x = (WINDOW_WIDTH - Globals.texture_width) / 2.0
  dst_rect.y = (WINDOW_HEIGHT - Globals.texture_height) / 2.0
  dst_rect.w = Globals.texture_width
  dst_rect.h = Globals.texture_height

  center.x = Globals.texture_width / 2.0
  center.y = Globals.texture_height / 2.0
  LibSDL.render_texture_rotated(Globals.renderer, Globals.texture, nil, pointerof(dst_rect), rotation, pointerof(center), LibSDL::FlipMode::FLIP_NONE)

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
