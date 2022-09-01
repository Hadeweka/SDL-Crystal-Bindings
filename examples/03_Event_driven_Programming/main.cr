# Based on https://lazyfoo.net/tutorials/SDL/03_event_driven_programming/index.php

require "../../src/sdl-crystal-bindings.cr"

SCREEN_WIDTH = 640
SCREEN_HEIGHT = 480

if !LibSDL.init(LibSDL::INIT_VIDEO)
  raise "SDL could not initialize! Error: #{String.new(LibSDL.get_error)}"
end

g_window = LibSDL.create_window("SDL Tutorial", LibSDL::WINDOWPOS_UNDEFINED, LibSDL::WINDOWPOS_UNDEFINED, SCREEN_WIDTH, SCREEN_HEIGHT, LibSDL::WindowFlags::WINDOW_SHOWN)
raise "Window could not be created! Error: #{String.new(LibSDL.get_error)}" if !g_window

g_screen_surface = LibSDL.get_window_surface(g_window)

g_x_out = LibSDLMacro.load_bmp("examples/03_Event_driven_Programming/x.bmp")
raise "Unable to load image hello_world.bmp! Error: #{String.new(LibSDL.get_error)}" if !g_x_out

quit = false

while(!quit)
  while LibSDL.poll_event(out e) != 0
    if e.type == LibSDL::EventType::QUIT.to_i
      quit = true
    end
  end

  LibSDLMacro.blit_surface(g_x_out, nil, g_screen_surface, nil)
  LibSDL.update_window_surface(g_window)
end

LibSDL.free_surface(g_x_out)
LibSDL.destroy_window(g_window)

LibSDL.quit