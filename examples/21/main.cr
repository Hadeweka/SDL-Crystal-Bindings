# Based on https://lazyfoo.net/tutorials/SDL/21_sound_effects_and_music/index.php

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

if LibSDL.init(LibSDL::INIT_VIDEO | LibSDL::INIT_AUDIO) != 0
  raise "SDL could not initialize! SDL Error: #{String.new(LibSDL.get_error)}"
end

if LibSDL.set_hint(LibSDL::HINT_RENDER_SCALE_QUALITY, "1") == 0
  puts "Warning: Linear texture filtering not enabled!"
end

g_window = LibSDL.create_window("SDL Tutorial", 300, 200, SCREEN_WIDTH, SCREEN_HEIGHT, LibSDL::WindowFlags::WINDOW_SHOWN)
raise "Window could not be created! SDL Error: #{String.new(LibSDL.get_error)}" unless g_window

renderer_flags = LibSDL::RendererFlags::RENDERER_ACCELERATED | LibSDL::RendererFlags::RENDERER_PRESENTVSYNC
g_renderer = LibSDL.create_renderer(g_window, -1, renderer_flags)
raise "Renderer could not be created! SDL Error: #{String.new(LibSDL.get_error)}" unless g_renderer

LibSDL.set_render_draw_color(g_renderer, 0xFF, 0xFF, 0xFF, 0xFF)

img_flags = LibSDL::IMGInitFlags::IMG_INIT_PNG
if (LibSDL.img_init(img_flags) | img_flags.to_i) == 0
  raise "SDL_image could not initialize! SDL_image Error: #{String.new(LibSDLMacro.img_get_error)}"
end

if LibSDL.mix_open_audio(44100, LibSDL::MIX_DEFAULT_FORMAT, 2, 2048) < 0
  raise "SDL_mixer could not initialize! SDL_mixer Error: #{String.new(LibSDLMacro.mix_get_error)}"
end

# if LibSDL.ttf_init == -1
#   raise "SDL_ttf could not initialize! SDL_ttf Error: #{String.new(LibSDLMacro.ttf_get_error)}"
# end

g_prompt_texture = LTexture.new(g_renderer)
g_prompt_texture.load_from_file("examples/21/prompt.png")

g_music = LibSDL.mix_load_mus("examples/21/beat.wav")
raise("Failed to load beat music! SDL_mixer Error: #{String.new(LibSDLMacro.mix_get_error)}") unless g_music

g_scratch = LibSDL.mix_load_wav("examples/21/scratch.wav")
raise("Failed to load scratch sound effect! SDL_mixer Error: #{String.new(LibSDLMacro.mix_get_error)}") unless g_scratch

g_high = LibSDL.mix_load_wav("examples/21/high.wav")
raise("Failed to load high sound effect! SDL_mixer Error: #{String.new(LibSDLMacro.mix_get_error)}") unless g_high

g_medium = LibSDL.mix_load_wav("examples/21/medium.wav")
raise("Failed to load medium sound effect! SDL_mixer Error: #{String.new(LibSDLMacro.mix_get_error)}") unless g_medium

g_low = LibSDL.mix_load_wav("examples/21/low.wav")
raise("Failed to load low sound effect! SDL_mixer Error: #{String.new(LibSDLMacro.mix_get_error)}") unless g_low

quit = false

while(!quit)
  while LibSDL.poll_event(out e) != 0
    if e.type == LibSDL::EventType::QUIT.to_i
      quit = true
    elsif e.type == LibSDL::EventType::KEYDOWN.to_i
      case e.key.keysym.sym
      when LibSDL::KeyCode::K_1.to_i then LibSDL.mix_play_channel(-1, g_high, 0)
      when LibSDL::KeyCode::K_2.to_i then LibSDL.mix_play_channel(-1, g_medium, 0)
      when LibSDL::KeyCode::K_3.to_i then LibSDL.mix_play_channel(-1, g_low, 0)
      when LibSDL::KeyCode::K_4.to_i then LibSDL.mix_play_channel(-1, g_scratch, 0)
      when LibSDL::KeyCode::K_9.to_i
        if LibSDL.mix_playing_music == 0
          LibSDL.mix_play_music(g_music, -1)
        else
          if LibSDL.mix_paused_music == 1
            LibSDL.mix_resume_music
          else
            LibSDL.mix_pause_music
          end
        end
      when LibSDL::KeyCode::K_0.to_i then LibSDL.mix_halt_music
      end
    end
  end

  LibSDL.set_render_draw_color(g_renderer, 0xFF, 0xFF, 0xFF, 0xFF)
  LibSDL.render_clear(g_renderer)

  g_prompt_texture.render(0, 0)

  LibSDL.render_present(g_renderer)
end

g_prompt_texture.free

LibSDL.mix_free_chunk(g_scratch)
LibSDL.mix_free_chunk(g_high)
LibSDL.mix_free_chunk(g_medium)
LibSDL.mix_free_chunk(g_low)

LibSDL.mix_free_music(g_music)

LibSDL.destroy_renderer(g_renderer)
LibSDL.destroy_window(g_window)

# LibSDL.ttf_quit
LibSDL.mix_quit
LibSDL.img_quit
LibSDL.quit