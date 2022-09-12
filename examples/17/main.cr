# Based on https://lazyfoo.net/tutorials/SDL/17_mouse_events/index.php

require "../../src/sdl-crystal-bindings.cr"

SCREEN_WIDTH = 640
SCREEN_HEIGHT = 480

BUTTON_WIDTH = 300
BUTTON_HEIGHT = 200
TOTAL_BUTTONS = 4

enum LButtonSprite
  BUTTON_SPRITE_MOUSE_OUT = 0
  BUTTON_SPRITE_MOUSE_OVER_MOTION = 1
  BUTTON_SPRITE_MOUSE_DOWN = 2
  BUTTON_SPRITE_MOUSE_UP = 3
  BUTTON_SPRITE_TOTAL = 4
end

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

  # def load_from_rendered_text(texture_text : String, text_color : LibSDL::Color, font : LibSDL::TTFFont*)
  #   free

  #   text_surface = LibSDL.ttf_render_text_solid(font, texture_text, text_color)
  #   raise "Unable to create texture from rendered text! SDL Error: #{String.new(LibSDL.get_error)}" unless text_surface

  #   @texture = LibSDL.create_texture_from_surface(@renderer, text_surface)
  #   raise "Unable to create texture from rendered text! SDL Error: #{String.new(LibSDL.get_error)}" unless @texture

  #   @width = text_surface.value.w
  #   @height = text_surface.value.h

  #   LibSDL.free_surface(text_surface)
  # end

  def render(x : Int, y : Int, clip : LibSDL::Rect*? = nil, angle : Float = 0.0, center : LibSDL::Point*? = nil, flip : LibSDL::RendererFlip = LibSDL::RendererFlip::FLIP_NONE)
    render_quad = LibSDL::Rect.new(x: x, y: y, w: @width, h: @height)

    if clip
      render_quad.w = clip.value.w
      render_quad.h = clip.value.h
    end

    LibSDL.render_copy_ex(@renderer, @texture, clip, pointerof(render_quad), angle, center, flip)
  end
end

class LButton
  getter position : LibSDL::Point = LibSDL::Point.new(x: 0, y: 0)
  @current_sprite : LButtonSprite = LButtonSprite::BUTTON_SPRITE_MOUSE_OUT
  @texture : LTexture
  @sprite_clips : Array(LibSDL::Rect)

  def initialize(@texture, @sprite_clips)
  end

  def set_position(x : Int, y : Int)
    @position.x = x
    @position.y = y
  end

  def handle_event(e : LibSDL::Event*)
    if {LibSDL::EventType::MOUSEMOTION.to_i, LibSDL::EventType::MOUSEBUTTONDOWN.to_i, LibSDL::EventType::MOUSEBUTTONUP.to_i}.includes?(e.value.type)
      LibSDL.get_mouse_state(out x, out y)
      inside = true
      inside = false if x < @position.x || x > @position.x + BUTTON_WIDTH || y < @position.y || y > @position.y + BUTTON_HEIGHT
      
      unless inside
        @current_sprite = LButtonSprite::BUTTON_SPRITE_MOUSE_OUT
      else
        case e.value.type
          when LibSDL::EventType::MOUSEMOTION.to_i then @current_sprite = LButtonSprite::BUTTON_SPRITE_MOUSE_OVER_MOTION
          when LibSDL::EventType::MOUSEBUTTONDOWN.to_i then @current_sprite = LButtonSprite::BUTTON_SPRITE_MOUSE_DOWN
          when LibSDL::EventType::MOUSEBUTTONUP.to_i then @current_sprite = LButtonSprite::BUTTON_SPRITE_MOUSE_UP
        end
      end
    end
  end

  def render
    rect = @sprite_clips[@current_sprite.to_i]
    @texture.render(@position.x, @position.y, pointerof(rect))
  end
end

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

# if LibSDL.ttf_init == -1
#   raise "SDL_ttf could not initialize! SDL_ttf Error: #{String.new(LibSDLMacro.ttf_get_error)}"
# end

g_button_sprite_sheet_texture = LTexture.new(g_renderer)
g_button_sprite_sheet_texture.load_from_file("examples/17/button.png")

g_sprite_clips = [] of LibSDL::Rect
0.upto(LButtonSprite::BUTTON_SPRITE_TOTAL.to_i - 1) do |i|
  button = LibSDL::Rect.new(x: 0, y: i*200, w: BUTTON_WIDTH, h: BUTTON_HEIGHT)
  g_sprite_clips << button
end

g_buttons = [] of LButton
4.times {g_buttons << LButton.new(g_button_sprite_sheet_texture, g_sprite_clips)}
g_buttons[0].set_position(0, 0)
g_buttons[1].set_position(SCREEN_WIDTH - BUTTON_WIDTH, 0)
g_buttons[2].set_position(0, SCREEN_HEIGHT - BUTTON_HEIGHT)
g_buttons[3].set_position(SCREEN_WIDTH - BUTTON_WIDTH, SCREEN_HEIGHT - BUTTON_HEIGHT)

quit = false

while(!quit)
  while LibSDL.poll_event(out e) != 0
    if e.type == LibSDL::EventType::QUIT.to_i
      quit = true
    end

    0.upto(TOTAL_BUTTONS - 1) {|i| g_buttons[i].handle_event(pointerof(e))}
  end

  LibSDL.set_render_draw_color(g_renderer, 0xFF, 0xFF, 0xFF, 0xFF)
  LibSDL.render_clear(g_renderer)

  0.upto(TOTAL_BUTTONS - 1) do |i|
    g_buttons[i].render
  end

  LibSDL.render_present(g_renderer)
end

g_button_sprite_sheet_texture.free

LibSDL.destroy_renderer(g_renderer)
LibSDL.destroy_window(g_window)

# LibSDL.ttf_quit
LibSDL.img_quit
LibSDL.quit