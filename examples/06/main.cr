# Based on https://lazyfoo.net/tutorials/SDL/05_optimized_surface_loading_and_soft_stretching/index.php

require "../../src/sdl-crystal-bindings.cr"

SCREEN_WIDTH = 640
SCREEN_HEIGHT = 480

if LibSDL.init(LibSDL::INIT_VIDEO) != 0
  raise "SDL could not initialize! Error: #{String.new(LibSDL.get_error)}"
end

if (LibSDL.img_init(LibSDL::IMGInitFlags::IMG_INIT_PNG) | LibSDL::IMGInitFlags::IMG_INIT_PNG.to_i) == 0
  raise "SDL_image could not initialize! Error: #{String.new(LibSDLMacro.img_get_error)}"
end

g_window = LibSDL.create_window("SDL Tutorial", LibSDL::WINDOWPOS_UNDEFINED, LibSDL::WINDOWPOS_UNDEFINED, SCREEN_WIDTH, SCREEN_HEIGHT, LibSDL::WindowFlags::WINDOW_SHOWN)
raise "Window could not be created! Error: #{String.new(LibSDL.get_error)}" if !g_window

g_screen_surface = LibSDL.get_window_surface(g_window)

loaded_surface = LibSDL.img_load("examples/06/loaded.png")
raise "Unable to load image loaded.png! Error: #{String.new(LibSDL.get_error)}" unless loaded_surface

g_png_surface = LibSDL.convert_surface(loaded_surface, g_screen_surface.value.format, 0)
raise "Unable to optimize image loaded.png! Error: #{String.new(LibSDL.get_error)}" unless g_png_surface

LibSDL.free_surface(loaded_surface)

quit = false

while(!quit)
  while LibSDL.poll_event(out e) != 0
    if e.type == LibSDL::EventType::QUIT.to_i
      quit = true
    end
  end

  LibSDLMacro.blit_surface(g_png_surface, nil, g_screen_surface, nil)

  LibSDL.update_window_surface(g_window)
end

LibSDL.free_surface(g_png_surface)
LibSDL.destroy_window(g_window)

LibSDL.quit