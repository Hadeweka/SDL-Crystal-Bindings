# Based on https://examples.libsdl.org/SDL3/renderer/09-scaling-textures/

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
end

def app_init_func(appstate : Void**, argc : LibC::Int, argv : LibC::Char**)
  LibSDL.set_app_metadata("Example Renderer Viewport", "1.0", "com.example.renderer-viewport")

  if !LibSDL.init(LibSDL::InitFlags::VIDEO)
    LibSDL.log("Couldn't initialize SDL: %s", LibSDL.get_error)
    return LibSDL::AppResult::FAILURE
  end

  if !LibSDL.create_window_and_renderer("examples/renderer/viewport", WINDOW_WIDTH, WINDOW_HEIGHT, LibSDL::WindowFlags::None, out window, out renderer)
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
  dst_rect = LibSDL::FRect.new(x: 0, y: 0, w: Globals.texture_width, h: Globals.texture_height)
  viewport = LibSDL::Rect.new

  LibSDL.set_render_draw_color(Globals.renderer, 0, 0, 0, LibSDL::ALPHA_OPAQUE)
  LibSDL.render_clear(Globals.renderer)

  viewport.x = 0
  viewport.y = 0
  viewport.w = WINDOW_WIDTH // 2
  viewport.h = WINDOW_HEIGHT // 2
  LibSDL.set_render_viewport(Globals.renderer, nil)
  LibSDL.render_texture(Globals.renderer, Globals.texture, nil, pointerof(dst_rect))

  viewport.x = WINDOW_WIDTH // 2
  viewport.y = WINDOW_HEIGHT // 2
  viewport.w = WINDOW_WIDTH // 2
  viewport.h = WINDOW_HEIGHT // 2
  LibSDL.set_render_viewport(Globals.renderer, pointerof(viewport))
  LibSDL.render_texture(Globals.renderer, Globals.texture, nil, pointerof(dst_rect))

  viewport.x = 0
  viewport.y = WINDOW_HEIGHT - (WINDOW_HEIGHT // 5)
  viewport.w = WINDOW_WIDTH // 5
  viewport.h = WINDOW_HEIGHT // 5
  LibSDL.set_render_viewport(Globals.renderer, pointerof(viewport))
  LibSDL.render_texture(Globals.renderer, Globals.texture, nil, pointerof(dst_rect))

  viewport.x = 100
  viewport.y = 200
  viewport.w = WINDOW_WIDTH
  viewport.h = WINDOW_HEIGHT
  LibSDL.set_render_viewport(Globals.renderer, pointerof(viewport))
  dst_rect.y = -50
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
