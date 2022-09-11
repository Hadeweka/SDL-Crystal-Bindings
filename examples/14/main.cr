# Based on https://lazyfoo.net/tutorials/SDL/14_animated_sprites_and_vsync/index.php

require "../../src/sdl-crystal-bindings.cr"

SCREEN_WIDTH = 640
SCREEN_HEIGHT = 480

class LTexture
  getter width : Int32 = 0
  getter height : Int32 = 0
  
  @texture = Pointer(LibSDL::Texture).null
  @renderer = Pointer(LibSDL::Renderer).null

  def initialize(@renderer : LibSDL::Renderer*)
  end

  def finalize
    free
    @renderer = Pointer(LibSDL::Renderer).null
  end

  def free
    unless @texture
      LibSDL.destroy_texture(@texture)
      @texture = Pointer(LibSDL::Texture).null
      @width = 0
      @height = 0
    end
  end

  def set_color(red : UInt8, green : UInt8, blue : UInt8)
    LibSDL.set_texture_color_mod(@texture, red, green, blue)
  end

  def set_blend_mode(blending : LibSDL::BlendMode)
    LibSDL.set_texture_blend_mode(@texture, blending)
  end

  def set_alpha(alpha : UInt8)
    LibSDL.set_texture_alpha_mod(@texture, alpha)
  end

  def load_from_file(path : String)
    free

    loaded_surface = LibSDL.img_load(path)
    raise "Unable to load image #{path}! SDL_image Error: #{String.new(LibSDLMacro.img_get_error)}" unless loaded_surface
    LibSDL.set_color_key(loaded_surface, LibSDL::SBool::TRUE, LibSDL.map_rgb(loaded_surface.value.format, 0, 0xFF, 0xFF))

    @texture = LibSDL.create_texture_from_surface(@renderer, loaded_surface)
    raise "Unable to create texture from #{path}! SDL Error: #{String.new(LibSDL.get_error)}" unless @texture

    @width = loaded_surface.value.w
    @height = loaded_surface.value.h

    LibSDL.free_surface(loaded_surface)
  end

  def render(x : Int, y : Int, clip : LibSDL::Rect*? = nil)
    render_quad = LibSDL::Rect.new(x: x, y: y, w: @width, h: @height)

    if clip
      render_quad.w = clip.value.w
      render_quad.h = clip.value.h
    end

    LibSDL.render_copy(@renderer, @texture, clip, pointerof(render_quad))
  end
end

g_sprite_clip_0 = LibSDL::Rect.new(x: 0, y: 0, w: 64, h: 205)
g_sprite_clip_1 = LibSDL::Rect.new(x: 64, y: 0, w: 64, h: 205)
g_sprite_clip_2 = LibSDL::Rect.new(x: 128, y: 0, w: 64, h: 205)
g_sprite_clip_3 = LibSDL::Rect.new(x: 192, y: 0, w: 64, h: 205)
g_sprite_clips = [g_sprite_clip_0, g_sprite_clip_1, g_sprite_clip_2, g_sprite_clip_3]
WALKING_ANIMATION_FRAMES = 4

if LibSDL.init(LibSDL::INIT_VIDEO) != 0
  raise "SDL could not initialize! SDL Error: #{String.new(LibSDL.get_error)}"
end

if LibSDL.set_hint(LibSDL::HINT_RENDER_SCALE_QUALITY, "1") == 0
  puts "Warning: Linear texture filtering not enabled!"
end

g_window = LibSDL.create_window("SDL Tutorial", LibSDL::WINDOWPOS_UNDEFINED, LibSDL::WINDOWPOS_UNDEFINED, SCREEN_WIDTH, SCREEN_HEIGHT, LibSDL::WindowFlags::WINDOW_SHOWN)
raise "Window could not be created! SDL Error: #{String.new(LibSDL.get_error)}" unless g_window

renderer_flags = LibSDL::RendererFlags::RENDERER_ACCELERATED | LibSDL::RendererFlags::RENDERER_PRESENTVSYNC
g_renderer = LibSDL.create_renderer(g_window, -1, renderer_flags)
raise "Renderer could not be created! SDL Error: #{String.new(LibSDL.get_error)}" unless g_renderer

LibSDL.set_render_draw_color(g_renderer, 0xFF, 0xFF, 0xFF, 0xFF)

img_flags = LibSDL::IMGInitFlags::IMG_INIT_PNG
if (LibSDL.img_init(img_flags) | img_flags.to_i) == 0
  raise "SDL_image could not initialize! SDL_image Error: #{String.new(LibSDLMacro.img_get_error)}"
end

g_sprite_sheet_texture = LTexture.new(g_renderer)
g_sprite_sheet_texture.load_from_file("examples/14/foo.png")

quit = false
frame = 0

while(!quit)
  while LibSDL.poll_event(out e) != 0
    if e.type == LibSDL::EventType::QUIT.to_i
      quit = true
    end
  end

  LibSDL.set_render_draw_color(g_renderer, 0xFF, 0xFF, 0xFF, 0xFF)
  LibSDL.render_clear(g_renderer)

  current_clip = g_sprite_clips[frame // 4]
  g_sprite_sheet_texture.render((SCREEN_WIDTH - current_clip.w) // 2, (SCREEN_HEIGHT - current_clip.h) // 2, pointerof(current_clip))

  LibSDL.render_present(g_renderer)

  frame += 1
  frame = 0 if frame // 4 >= WALKING_ANIMATION_FRAMES
end

g_sprite_sheet_texture.free

LibSDL.destroy_renderer(g_renderer)
LibSDL.destroy_window(g_window)

LibSDL.img_quit
LibSDL.quit