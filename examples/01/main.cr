# Based on https://lazyfoo.net/tutorials/SDL/01_hello_SDL/index.php

require "../../src/sdl-crystal-bindings.cr"

SCREEN_WIDTH = 640
SCREEN_HEIGHT = 480

if LibSDL.init(LibSDL::INIT_VIDEO) != 0
  raise "SDL could not initialize! Error: #{String.new(LibSDL.get_error)}"
end

window = LibSDL.create_window("SDL Tutorial", LibSDL::WINDOWPOS_UNDEFINED, LibSDL::WINDOWPOS_UNDEFINED, SCREEN_WIDTH, SCREEN_HEIGHT, LibSDL::WindowFlags::WINDOW_SHOWN)
raise "Window could not be created! Error: #{String.new(LibSDL.get_error)}" if !window

surface = LibSDL.get_window_surface(window)
LibSDL.fill_rect(surface, nil, LibSDL.map_rgb(surface.value.format, 0x00, 0xff, 0xff))
LibSDL.update_window_surface(window)

sleep(2.0)

LibSDL.destroy_window(window)

LibSDL.quit