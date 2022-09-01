# Based on https://lazyfoo.net/tutorials/SDL/04_key_presses/index.php

require "../../src/sdl-crystal-bindings.cr"

SCREEN_WIDTH = 640
SCREEN_HEIGHT = 480

enum KeyPressSurfaces
  KEY_PRESS_SURFACE_DEFAULT
	KEY_PRESS_SURFACE_UP
	KEY_PRESS_SURFACE_DOWN
	KEY_PRESS_SURFACE_LEFT
	KEY_PRESS_SURFACE_RIGHT
	KEY_PRESS_SURFACE_TOTAL
end

def load_surface(path : String)
  loaded_surface = LibSDLMacro.load_bmp(path)
  raise "Unable to load image #{path}! Error: #{String.new(LibSDL.get_error)}" unless loaded_surface
  loaded_surface
end

if !LibSDL.init(LibSDL::INIT_VIDEO)
  raise "SDL could not initialize! Error: #{String.new(LibSDL.get_error)}"
end

g_window = LibSDL.create_window("SDL Tutorial", LibSDL::WINDOWPOS_UNDEFINED, LibSDL::WINDOWPOS_UNDEFINED, SCREEN_WIDTH, SCREEN_HEIGHT, LibSDL::WindowFlags::WINDOW_SHOWN)
raise "Window could not be created! Error: #{String.new(LibSDL.get_error)}" if !g_window

g_screen_surface = LibSDL.get_window_surface(g_window)

g_key_press_surfaces = {"press", "up", "down", "left", "right"}.map do |surface|
  load_surface("examples/04/#{surface}.bmp")
end

quit = false

g_current_surface = g_key_press_surfaces[KeyPressSurfaces::KEY_PRESS_SURFACE_DEFAULT.to_i]

while(!quit)
  while LibSDL.poll_event(out e) != 0
    if e.type == LibSDL::EventType::QUIT.to_i
      quit = true
    elsif e.type == LibSDL::EventType::KEYDOWN.to_i
      case e.key.keysym.sym
        when LibSDL::KeyCode::K_UP.to_i then g_current_surface = g_key_press_surfaces[KeyPressSurfaces::KEY_PRESS_SURFACE_UP.to_i]
        when LibSDL::KeyCode::K_DOWN.to_i then g_current_surface = g_key_press_surfaces[KeyPressSurfaces::KEY_PRESS_SURFACE_DOWN.to_i]
        when LibSDL::KeyCode::K_LEFT.to_i then g_current_surface = g_key_press_surfaces[KeyPressSurfaces::KEY_PRESS_SURFACE_LEFT.to_i]
        when LibSDL::KeyCode::K_RIGHT.to_i then g_current_surface = g_key_press_surfaces[KeyPressSurfaces::KEY_PRESS_SURFACE_RIGHT.to_i]
        else g_current_surface = g_key_press_surfaces[KeyPressSurfaces::KEY_PRESS_SURFACE_DEFAULT.to_i]
      end
    end
  end

  LibSDLMacro.blit_surface(g_current_surface, nil, g_screen_surface, nil)
  LibSDL.update_window_surface(g_window)
end

g_key_press_surfaces.each {|surface| LibSDL.free_surface(surface)}
LibSDL.destroy_window(g_window)

LibSDL.quit