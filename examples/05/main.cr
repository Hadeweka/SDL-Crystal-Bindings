# Based on https://lazyfoo.net/tutorials/SDL/05_optimized_surface_loading_and_soft_stretching/index.php

require "../../src/sdl-crystal-bindings.cr"

SCREEN_WIDTH = 640
SCREEN_HEIGHT = 480

if !LibSDL.init(LibSDL::INIT_VIDEO)
  raise "SDL could not initialize! Error: #{String.new(LibSDL.get_error)}"
end

g_window = LibSDL.create_window("SDL Tutorial", LibSDL::WINDOWPOS_UNDEFINED, LibSDL::WINDOWPOS_UNDEFINED, SCREEN_WIDTH, SCREEN_HEIGHT, LibSDL::WindowFlags::WINDOW_SHOWN)
raise "Window could not be created! Error: #{String.new(LibSDL.get_error)}" if !g_window

g_screen_surface = LibSDL.get_window_surface(g_window)

loaded_surface = LibSDLMacro.load_bmp("examples/05/stretch.bmp")
raise "Unable to load image stretch.bmp! Error: #{String.new(LibSDL.get_error)}" unless loaded_surface

g_stretched_surface = LibSDL.convert_surface(loaded_surface, g_screen_surface.value.format, 0)
raise "Unable to optimize image stretch.bmp! Error: #{String.new(LibSDL.get_error)}" unless g_stretched_surface

quit = false

while(!quit)
  while LibSDL.poll_event(out e) != 0
    if e.type == LibSDL::EventType::QUIT.to_i
      quit = true
    end
  end

  stretch_rect = LibSDL::Rect.new
  stretch_rect.x = 0
  stretch_rect.y = 0
  stretch_rect.w = SCREEN_WIDTH
  stretch_rect.h = SCREEN_HEIGHT
  LibSDLMacro.blit_scaled(g_stretched_surface, nil, g_screen_surface, pointerof(stretch_rect))

  LibSDL.update_window_surface(g_window)
end

LibSDL.free_surface(g_stretched_surface)
LibSDL.destroy_window(g_window)

LibSDL.quit