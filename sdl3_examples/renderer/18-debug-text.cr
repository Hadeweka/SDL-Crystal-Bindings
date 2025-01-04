# Based on https://examples.libsdl.org/SDL3/renderer/18-debug-text/

require "../../src/sdl3-crystal-bindings.cr"

LibSDLMacro.main_use_callbacks(->app_init_func, ->app_iterate_func, ->app_event_func, ->app_quit_func)

class Globals
  class_property window = Pointer(LibSDL::Window).null
  class_property renderer = Pointer(LibSDL::Renderer).null
  class_property initial_time = Time.utc
end

WINDOW_WIDTH = 640
WINDOW_HEIGHT = 480

def app_init_func(appstate : Void**, argc : LibC::Int, argv : LibC::Char**)
  LibSDL.set_app_metadata("Example Renderer Debug Texture", "1.0", "com.example.renderer-debug-text")

  if !LibSDL.init(LibSDL::InitFlags::VIDEO)
    LibSDL.log("Couldn't initialize SDL: %s", LibSDL.get_error)
    return LibSDL::AppResult::FAILURE
  end

  if !LibSDL.create_window_and_renderer("examples/renderer/debug-text", WINDOW_WIDTH, WINDOW_HEIGHT, LibSDL::WindowFlags::None, out window, out renderer)
    LibSDL.log("Couldn't create window/renderer: %s", LibSDL.get_error)
    return LibSDL::AppResult::FAILURE
  end

  Globals.window = window
  Globals.renderer = renderer
    
  return LibSDL::AppResult::CONTINUE
end

def app_iterate_func(appstate : Void*)
  charsize = LibSDL::DEBUG_TEXT_FONT_CHARACTER_SIZE

  LibSDL.set_render_draw_color(Globals.renderer, 0, 0, 0, LibSDL::ALPHA_OPAQUE)
  LibSDL.render_clear(Globals.renderer)

  LibSDL.set_render_draw_color(Globals.renderer, 255, 255, 255, LibSDL::ALPHA_OPAQUE)
  LibSDL.render_debug_text(Globals.renderer, 272, 100, "Hello world!")
  LibSDL.render_debug_text(Globals.renderer, 224, 150, "This is some debug text.")

  LibSDL.set_render_draw_color(Globals.renderer, 51, 102, 255, LibSDL::ALPHA_OPAQUE)
  LibSDL.render_debug_text(Globals.renderer, 184, 200, "You can do it in different colors.")
  LibSDL.set_render_draw_color(Globals.renderer, 255, 255, 255, LibSDL::ALPHA_OPAQUE)

  LibSDL.set_render_scale(Globals.renderer, 4.0, 4.0)
  LibSDL.render_debug_text(Globals.renderer, 14, 65, "It can be scaled.")
  LibSDL.set_render_scale(Globals.renderer, 1.0, 1.0)
  LibSDL.render_debug_text(Globals.renderer, 64, 350, "THis only does ASCII chars. So this laughing emoji won't draw: 🤣")

  now = ((Time.utc - Globals.initial_time).total_milliseconds / 1000).to_u64! 
  LibSDL.render_debug_text_format(Globals.renderer, (WINDOW_WIDTH - (charsize * 46)) / 2, 400, "(This program has been running for %llu seconds", now)

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
end
