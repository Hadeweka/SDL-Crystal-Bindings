# Based on https://examples.libsdl.org/SDL3/renderer/07-streaming-textures/

require "../../src/sdl3-crystal-bindings.cr"

LibSDLMacro.main_use_callbacks(->app_init_func, ->app_iterate_func, ->app_event_func, ->app_quit_func)

TEXTURE_SIZE = 150

WINDOW_WIDTH = 640
WINDOW_HEIGHT = 480

class Globals
  class_property window = Pointer(LibSDL::Window).null
  class_property renderer = Pointer(LibSDL::Renderer).null
  class_property texture = Pointer(LibSDL::Texture).null
  class_property initial_time = Time.utc
end

def app_init_func(appstate : Void**, argc : LibC::Int, argv : LibC::Char**)
  LibSDL.set_app_metadata("Example Renderer Streaming Textures", "1.0", "com.example.renderer-streaming-textures")

  if 0 == LibSDL.init(LibSDL::InitFlags::VIDEO)
    LibSDL.log("Couldn't initialize SDL: %s", LibSDL.get_error)
    return LibSDL::AppResult::FAILURE
  end

  if 0 == LibSDL.create_window_and_renderer("examples/renderer/streaming-textures", WINDOW_WIDTH, WINDOW_HEIGHT, LibSDL::WindowFlags::None, out window, out renderer)
    LibSDL.log("Couldn't create window/renderer: %s", LibSDL.get_error)
    return LibSDL::AppResult::FAILURE
  end

  Globals.window = window
  Globals.renderer = renderer

  Globals.texture = LibSDL.create_texture(Globals.renderer, LibSDL::PixelFormat::RGBA8888, LibSDL::TextureAccess::STREAMING, TEXTURE_SIZE, TEXTURE_SIZE)
  if !Globals.texture
    LibSDL.log("Couldn't create streaming texture: %s", LibSDL.get_error)
    return LibSDL::AppResult::FAILURE
  end

  return LibSDL::AppResult::CONTINUE
end

def app_iterate_func(appstate : Void*)
  dst_rect = LibSDL::FRect.new
  now = (Time.utc - Globals.initial_time).total_milliseconds.to_u64!

  direction = (now % 2000) >= 1000 ? 1.0 : -1.0
  scale = ((now % 1000).to_i32 - 500) / 500.0 * direction

  # NOTE: Crystal handles a C bool as an UInt8, so we need to check it for 0.
  #       If in doubt, check the lib file or documentation for the function signature.
  if 0 != LibSDL.lock_texture_to_surface(Globals.texture, nil, out surface)
    r = LibSDL::Rect.new
    LibSDL.fill_surface_rect(surface, nil, LibSDL.map_rgb(LibSDL.get_pixel_format_details(surface.value.format), nil, 0, 0, 0))
    r.w = TEXTURE_SIZE
    r.h = TEXTURE_SIZE // 10
    r.x = 0
    r.y = ((TEXTURE_SIZE - r.h).to_f32 * ((scale + 1.0) / 2.0)).to_i32
    LibSDL.fill_surface_rect(surface, pointerof(r), LibSDL.map_rgb(LibSDL.get_pixel_format_details(surface.value.format), nil, 0, 255, 0))
    LibSDL.unlock_texture(Globals.texture)
  end

  LibSDL.set_render_draw_color(Globals.renderer, 66, 66, 66, LibSDL::ALPHA_OPAQUE)
  LibSDL.render_clear(Globals.renderer)

  dst_rect.x = (WINDOW_WIDTH - TEXTURE_SIZE) / 2.0
  dst_rect.y = (WINDOW_HEIGHT - TEXTURE_SIZE) / 2.0
  dst_rect.w = dst_rect.h = TEXTURE_SIZE.to_f32
  LibSDL.render_texture(Globals.renderer, Globals.texture, nil, pointerof(dst_rect))

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
