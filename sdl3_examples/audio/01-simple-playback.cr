# Based on https://examples.libsdl.org/SDL3/audio/01-simple-playback/

require "../../src/sdl3-crystal-bindings.cr"

LibSDLMacro.main_use_callbacks(->app_init_func, ->app_iterate_func, ->app_event_func, ->app_quit_func)

class Globals
  class_property window = Pointer(LibSDL::Window).null
  class_property renderer = Pointer(LibSDL::Renderer).null
  class_property stream = Pointer(LibSDL::AudioStream).null
  class_property samples = Array(Float32).new(size: 512) {0.0f32}
  class_property total_samples_generated = 0i32
end

def app_init_func(appstate : Void**, argc : LibC::Int, argv : LibC::Char**)
  LibSDL.set_app_metadata("Example Audio Simple Playback", "1.0", "com.example.audio-simple-playback")

  if 0 == LibSDL.init(LibSDL::InitFlags::VIDEO | LibSDL::InitFlags::AUDIO)
    LibSDL.log("Couldn't initialize SDL: %s", LibSDL.get_error)
    return LibSDL::AppResult::FAILURE
  end

  if 0 == LibSDL.create_window_and_renderer("examples/audio/simple-playback", 640, 480, LibSDL::WindowFlags::None, out window, out renderer)
    LibSDL.log("Couldn't create window/renderer: %s", LibSDL.get_error)
    return LibSDL::AppResult::FAILURE
  end

  Globals.window = window
  Globals.renderer = renderer

  spec = LibSDL::AudioSpec.new
  spec.channels = 1
  spec.format = LibSDL::AudioFormat::F32
  spec.freq = 8000
  Globals.stream = LibSDL.open_audio_device_stream(LibSDL::AUDIO_DEVICE_DEFAULT_PLAYBACK, pointerof(spec), nil, nil)
  puts String.new(LibSDL.get_error)
  if !Globals.stream
    LibSDL.log("Couldn't create audio stream: %s", LibSDL.get_error)
    return LibSDL::AppResult::FAILURE
  end

  LibSDL.resume_audio_stream_device(Globals.stream)

  return LibSDL::AppResult::CONTINUE
end

def app_iterate_func(appstate : Void*)
  minimum_audio = 8000 * sizeof(Float32) // 2
  if LibSDL.get_audio_stream_available(Globals.stream) < minimum_audio
    0.upto(Globals.samples.size - 1) do |i|
      time = Globals.total_samples_generated / 8000.0
      sine_freq = 500.0
      # NOTE: The hardcoded number in the C example should be 2 * pi 
      Globals.samples[i] = Math.sin(2.0 * Math::PI * sine_freq * time).to_f32
      # NOTE: Prevent overflow, as unlikely as it should be
      Globals.total_samples_generated &+= 1
    end

    LibSDL.put_audio_stream_data(Globals.stream, Globals.samples, Globals.samples.size)
  end

  LibSDL.render_clear(Globals.renderer)
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
