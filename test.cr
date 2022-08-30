require "./src/sdl-crystal-bindings.cr"

LibSDL.init(LibSDL::INIT_VIDEO)

window = LibSDL.create_window("Test", LibSDL::WINDOWPOS_UNDEFINED_MASK, LibSDL::WINDOWPOS_UNDEFINED_MASK, 640, 480, LibSDL::WindowFlags::WINDOW_OPENGL)
raise "Error while opening window" if !window

surface = LibSDL.get_window_surface(window)
LibSDL.fill_rect(surface, nil, LibSDL.map_rgb(surface.value.format, 0x00, 0xff, 0xff))
LibSDL.update_window_surface(window)

sleep(2.0)

LibSDL.destroy_window(window)

LibSDL.quit