# Based on https://examples.libsdl.org/SDL3/renderer/10-geometry/

require "../../src/sdl3-crystal-bindings.cr"

require "file_utils"

LibSDLMacro.main_use_callbacks(->app_init_func, ->app_iterate_func, ->app_event_func, ->app_quit_func)

WINDOW_WIDTH = 640
WINDOW_HEIGHT = 480

class Globals
  class_property window = Pointer(LibSDL::Window).null
  class_property renderer = Pointer(LibSDL::Renderer).null
  class_property texture = Pointer(LibSDL::Texture).null
  class_property texture_width = 0i32
  class_property texture_height = 0i32
  class_property initial_time = Time.utc
end

def app_init_func(appstate : Void**, argc : LibC::Int, argv : LibC::Char**)
  LibSDL.set_app_metadata("Example Renderer Geometry", "1.0", "com.example.renderer-geometry")

  if !LibSDL.init(LibSDL::INIT_VIDEO)
    LibSDL.log("Couldn't initialize SDL: %s", LibSDL.get_error)
    return LibSDL::AppResult::FAILURE
  end

  if !LibSDL.create_window_and_renderer("examples/renderer/geometry", WINDOW_WIDTH, WINDOW_HEIGHT, 0, out window, out renderer)
    LibSDL.log("Couldn't create window/renderer: %s", LibSDL.get_error)
    return LibSDL::AppResult::FAILURE
  end

  Globals.window = window
  Globals.renderer = renderer

  bmp_path = Path.new(FileUtils.pwd, "sdl3_examples/resources/sample.bmp")
  surface = LibSDL.load_bmp(bmp_path.to_s)
  if !surface
    LibSDL.log("Couldn't load bitmap: %s", LibSDL.get_error)
    return LibSDL::AppResult::FAILURE
  end

  Globals.texture_width = surface.value.w
  Globals.texture_height = surface.value.h

  Globals.texture = LibSDL.create_texture_from_surface(Globals.renderer, surface)
  if !Globals.texture
    LibSDL.log("Couldn't create static texture: %s", LibSDL.get_error)
    return LibSDL::AppResult::FAILURE
  end

  LibSDL.destroy_surface(surface)

  return LibSDL::AppResult::CONTINUE
end

def app_iterate_func(appstate : Void*)
  now = (Time.utc - Globals.initial_time).total_milliseconds.to_u64!

  direction = (now % 2000) >= 1000 ? 1.0 : -1.0
  scale = ((now % 1000).to_i32 - 500) / 500.0 * direction
  size = 200.0 + (200.0 * scale)

  # NOTE: We do not need to set our vertices to zero, since Crystal implicitly does this for us
  vertices = Array(LibSDL::Vertex).new(initial_capacity: 4)

  LibSDL.set_render_draw_color(Globals.renderer, 0, 0, 0, LibSDL::ALPHA_OPAQUE)
  LibSDL.render_clear(Globals.renderer)

  vertices.push LibSDL::Vertex.new(
    position: LibSDL::FPoint.new(x: WINDOW_WIDTH / 2.0, y: (WINDOW_HEIGHT - size) / 2.0),
    color: LibSDL::FColor.new(r: 1.0, g: 0.0, b: 0.0, a: 1.0),
  )
  vertices.push LibSDL::Vertex.new(
    position: LibSDL::FPoint.new(x: (WINDOW_WIDTH + size) / 2.0 , y: (WINDOW_HEIGHT + size) / 2.0),
    color: LibSDL::FColor.new(r: 0.0, g: 1.0, b: 0.0, a: 1.0),
  )
  vertices.push LibSDL::Vertex.new(
    position: LibSDL::FPoint.new(x: (WINDOW_WIDTH - size) / 2.0 , y: (WINDOW_HEIGHT + size) / 2.0),
    color: LibSDL::FColor.new(r: 0.0, g: 0.0, b: 1.0, a: 1.0),
  )
  LibSDL.render_geometry(Globals.renderer, nil, vertices, 3, nil, 0)

  vertices.clear

  vertices.push LibSDL::Vertex.new(
    position: LibSDL::FPoint.new(x: 10.0, y: 10.0),
    color: LibSDL::FColor.new(r: 1.0, g: 1.0, b: 1.0, a: 1.0),
    tex_coord: LibSDL::FPoint.new(x: 0.0, y: 0.0)
  )
  vertices.push LibSDL::Vertex.new(
    position: LibSDL::FPoint.new(x: 150.0, y: 10.0),
    color: LibSDL::FColor.new(r: 1.0, g: 1.0, b: 1.0, a: 1.0),
    tex_coord: LibSDL::FPoint.new(x: 1.0, y: 0.0)
  )
  vertices.push LibSDL::Vertex.new(
    position: LibSDL::FPoint.new(x: 10.0, y: 150.0),
    color: LibSDL::FColor.new(r: 1.0, g: 1.0, b: 1.0, a: 1.0),
    tex_coord: LibSDL::FPoint.new(x: 0.0, y: 1.0)
  )
  LibSDL.render_geometry(Globals.renderer, Globals.texture, vertices, 3, nil, 0)

  # NOTE: This is a bit more tedious than in C. Usually you want to build wrappers around this.
  0.upto(3 - 1) do |i|
    new_vertex = vertices[i]
    new_position = new_vertex.position
    new_position.x += 450
    new_vertex.position = new_position
    vertices[i] = new_vertex
  end

  vertices.push LibSDL::Vertex.new(
    position: LibSDL::FPoint.new(x: 600.0, y: 150.0),
    color: LibSDL::FColor.new(r: 1.0, g: 1.0, b: 1.0, a: 1.0),
    tex_coord: LibSDL::FPoint.new(x: 1.0, y: 1.0)
  )

  indices = [0, 1, 2, 1, 2, 3]
  LibSDL.render_geometry(Globals.renderer, Globals.texture, vertices, 4, indices, indices.size)

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
  LibSDL.destroy_texture(Globals.texture)
end
