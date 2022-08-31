# Based on https://lazyfoo.net/tutorials/SDL/03_event_driven_programming/index.php

require "../src/sdl-crystal-bindings.cr"

SCREEN_WIDTH = 640
SCREEN_HEIGHT = 480

if !LibSDL.init(LibSDL::INIT_VIDEO)
  raise "SDL could not initialize! Error: #{String.new(LibSDL.get_error)}"
end

g_window = LibSDL.create_window("SDL Tutorial", LibSDL::WINDOWPOS_UNDEFINED_MASK, LibSDL::WINDOWPOS_UNDEFINED_MASK, SCREEN_WIDTH, SCREEN_HEIGHT, LibSDL::WindowFlags::WINDOW_SHOWN)
raise "Window could not be created! Error: #{String.new(LibSDL.get_error)}" if !g_window

g_screen_surface = LibSDL.get_window_surface(g_window)

g_x_out = LibSDL.load_bmp_rw(LibSDL.rwfrom_file("examples/x.bmp", "rb"), 1)  # TODO: The SDL macro functions would simplify this
raise "Unable to load image hello_world.bmp! Error: #{String.new(LibSDL.get_error)}" if !g_x_out

quit = false

while(!quit)
  while LibSDL.poll_event(out e) != 0
    puts LibSDL::EventType::QUIT
    if e.type == LibSDL::EventType::QUIT.to_i # TODO: This is not ideal, is there a better solution?
      quit = true
    end
  end

  LibSDL.upper_blit(g_x_out, nil, g_screen_surface, nil)
  LibSDL.update_window_surface(g_window)
end

LibSDL.free_surface(g_x_out)
LibSDL.destroy_window(g_window)

LibSDL.quit