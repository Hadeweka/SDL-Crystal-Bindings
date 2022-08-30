require "./bindings.cr"

LibSDL.init(LibSDL::INIT_VIDEO)

window = LibSDL.create_window("Test", LibSDL::WINDOWPOS_UNDEFINED_MASK, LibSDL::WINDOWPOS_UNDEFINED_MASK, 640, 480, LibSDL::WindowFlags::WINDOW_OPENGL)

raise "Error while opening window" if !window

sleep(1.0)

LibSDL.destroy_window(window)

LibSDL.quit