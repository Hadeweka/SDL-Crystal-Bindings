# Based on https://lazyfoo.net/tutorials/SDL/02_getting_an_image_on_the_screen/index.php

require "../src/sdl-crystal-bindings.cr"

SCREEN_WIDTH = 640
SCREEN_HEIGHT = 480

if !LibSDL.init(LibSDL::INIT_VIDEO)
  raise "SDL could not initialize! Error: #{String.new(LibSDL.get_error)}"
end

g_window = LibSDL.create_window("SDL Tutorial", LibSDL::WINDOWPOS_UNDEFINED, LibSDL::WINDOWPOS_UNDEFINED, SCREEN_WIDTH, SCREEN_HEIGHT, LibSDL::WindowFlags::WINDOW_SHOWN)
raise "Window could not be created! Error: #{String.new(LibSDL.get_error)}" if !g_window

g_screen_surface = LibSDL.get_window_surface(g_window)

g_hello_world = LibSDL.load_bmp_rw(LibSDL.rwfrom_file("examples/hello_world.bmp", "rb"), 1)  # TODO: The SDL macro functions would simplify this
raise "Unable to load image hello_world.bmp! Error: #{String.new(LibSDL.get_error)}" if !g_hello_world

LibSDLMacro.blit_surface(g_hello_world, nil, g_screen_surface, nil)
LibSDL.update_window_surface(g_window)

sleep(2.0)

LibSDL.free_surface(g_hello_world)
LibSDL.destroy_window(g_window)

LibSDL.quit