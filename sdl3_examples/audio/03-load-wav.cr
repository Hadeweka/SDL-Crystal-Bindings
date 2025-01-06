# Based on https://examples.libsdl.org/SDL3/audio/03-load-wav/

require "../../src/sdl3-crystal-bindings.cr"

require "file_utils"

LibSDLMacro.main_use_callbacks(->app_init_func, ->app_iterate_func, ->app_event_func, ->app_quit_func)

class Globals
  class_property window = Pointer(LibSDL::Window).null
  class_property renderer = Pointer(LibSDL::Renderer).null
  class_property stream = Pointer(LibSDL::AudioStream).null
  class_property wav_data = Pointer(UInt8).null
  class_property wav_data_length = 0u32
end

def app_init_func(appstate : Void**, argc : LibC::Int, argv : LibC::Char**)
  LibSDL.set_app_metadata("Example Audio Load Wave", "1.0", "com.example.audio-load-wav")

  if 0 == LibSDL.init(LibSDL::InitFlags::VIDEO | LibSDL::InitFlags::AUDIO)
    LibSDL.log("Couldn't initialize SDL: %s", LibSDL.get_error)
    return LibSDL::AppResult::FAILURE
  end

  if 0 == LibSDL.create_window_and_renderer("examples/audio/load-wav", 640, 480, LibSDL::WindowFlags::None, out window, out renderer)
    LibSDL.log("Couldn't create window/renderer: %s", LibSDL.get_error)
    return LibSDL::AppResult::FAILURE
  end

  Globals.window = window
  Globals.renderer = renderer

  spec = LibSDL::AudioSpec.new

  wav_path = Path.new(FileUtils.pwd, "sdl3_examples/resources/sample.wav")
  if !LibSDL.load_wav(wav_path.to_s, pointerof(spec), out wav_data, out wav_data_length)
    LibSDL.log("Couldn't load .wav file: %s", LibSDL.get_error)
    return LibSDL::AppResult::FAILURE
  end

  Globals.wav_data = wav_data
  Globals.wav_data_length = wav_data_length

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
  if LibSDL.get_audio_stream_available(Globals.stream) < Globals.wav_data_length
    LibSDL.put_audio_stream_data(Globals.stream, Globals.wav_data, Globals.wav_data_length)
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
  # NOTE: No need to free the wav_data pointer, as it is tracked by the GC, since we used the out keyword
end
