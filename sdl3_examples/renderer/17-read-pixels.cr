# Based on https://examples.libsdl.org/SDL3/renderer/17-read-pixels/

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
  class_property converted_texture = Pointer(LibSDL::Texture).null
  class_property converted_texture_width = 0i32
  class_property converted_texture_height = 0i32
  class_property initial_time = Time.utc
end

def app_init_func(appstate : Void**, argc : LibC::Int, argv : LibC::Char**)
  LibSDL.set_app_metadata("Example Renderer Read Pixels", "1.0", "com.example.renderer-read-pixels")

  if !LibSDL.init(LibSDL::INIT_VIDEO)
    LibSDL.log("Couldn't initialize SDL: %s", LibSDL.get_error)
    return LibSDL::AppResult::FAILURE
  end

  if !LibSDL.create_window_and_renderer("examples/renderer/read-pixels", WINDOW_WIDTH, WINDOW_HEIGHT, 0, out window, out renderer)
    LibSDL.log("Couldn't create window/renderer: %s", LibSDL.get_error)
    return LibSDL::AppResult::FAILURE
  end

  Globals.window = window
  Globals.renderer = renderer

  bmp_path = Path.new(FileUtils.pwd, "sdl3_examples/resources/sample.bmp")
  surface = LibSDL.load_bmp(bmp_path.to_s)
  if !surface
    LibSDL.log("Couldn't load bitmap: %s", LibSDL.get_error)
    return LibSDL::AppResult::FAILURE
  end

  Globals.texture_width = surface.value.w
  Globals.texture_height = surface.value.h

  Globals.texture = LibSDL.create_texture_from_surface(Globals.renderer, surface)
  if !Globals.texture
    LibSDL.log("Couldn't create static texture: %s", LibSDL.get_error)
    return LibSDL::AppResult::FAILURE
  end

  LibSDL.destroy_surface(surface)

  return LibSDL::AppResult::CONTINUE
end

def app_iterate_func(appstate : Void*)
  now = (Time.utc - Globals.initial_time).total_milliseconds.to_u64!
  center = LibSDL::FPoint.new
  dst_rect = LibSDL::FRect.new

  rotation = (now % 2000) / 2000.0 * 360.0

  LibSDL.set_render_draw_color(Globals.renderer, 0, 0, 0, LibSDL::ALPHA_OPAQUE)
  LibSDL.render_clear(Globals.renderer)

  dst_rect.x = (WINDOW_WIDTH - Globals.texture_width) / 2.0
  dst_rect.y = (WINDOW_HEIGHT - Globals.texture_height) / 2.0
  dst_rect.w = Globals.texture_width
  dst_rect.h = Globals.texture_height

  center.x = Globals.texture_width / 2.0
  center.y = Globals.texture_height / 2.0
  LibSDL.render_texture_rotated(Globals.renderer, Globals.texture, nil, pointerof(dst_rect), rotation, pointerof(center), LibSDL::FlipMode::NONE)

  surface = LibSDL.render_read_pixels(Globals.renderer, nil)

  if surface && surface.value.format != LibSDL::PixelFormat::RGBA8888 && surface.value.format != LibSDL::PixelFormat::BGRA8888
    converted = LibSDL.convert_surface(surface, LibSDL::PixelFormat::RGBA8888)
    LibSDL.destroy_surface(surface)
    surface = converted
  end

  if surface
    if surface.value.w != Globals.converted_texture_width || surface.value.h != Globals.converted_texture_height
      LibSDL.destroy_texture(Globals.converted_texture)
      Globals.converted_texture = LibSDL.create_texture(Globals.renderer, 
        LibSDL::PixelFormat::RGBA8888,
        LibSDL::TextureAccess::STREAMING, 
      surface.value.w, surface.value.h)

      if !Globals.converted_texture
        LibSDL.log("Couldn't (re)create conversion texture: %s", LibSDL.get_error)
        return LibSDL::AppResult::FAILURE
      end

      Globals.converted_texture_width = surface.value.w
      Globals.converted_texture_height = surface.value.h
    end

    0.upto(surface.value.h - 1) do |y|
      pixels = (surface.value.pixels.as(UInt8*) + y * surface.value.pitch).as(UInt32*)
      0.upto(surface.value.w - 1) do |x|
        # NOTE: This is the same pointer arithmetics as in the example, just formulated differently
        p = (pixels + x).as(UInt8*)
        average = (p[1].to_u32! + p[2].to_u32! + p[3].to_u32!) // 3
        if average == 0
          p[0] = p[3] = 0xFFu8
          p[1] = p[2] = 0x00u8
        else
          p[1] = p[2] = p[3] = (average > 50 ? 0xFFu8 : 0x00u8)
        end
      end
    end

    LibSDL.update_texture(Globals.converted_texture, nil, surface.value.pixels, surface.value.pitch)
    LibSDL.destroy_surface(surface)

    dst_rect.x = dst_rect.y = 0.0
    dst_rect.w = WINDOW_WIDTH / 4.0
    dst_rect.h = WINDOW_HEIGHT / 4.0
    LibSDL.render_texture(Globals.renderer, Globals.converted_texture, nil, pointerof(dst_rect))
  end

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
  LibSDL.destroy_texture(Globals.converted_texture)
end
