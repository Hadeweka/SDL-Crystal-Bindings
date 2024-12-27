@[Link("SDL3_mixer")]
lib LibSDL
  # additions/helper_mixer.cr

  # (int chan, void *stream, int len, void *udata)
  alias MixEffectFuncT = (LibC::Int, Void*, LibC::Int, Void*) -> Void

  # (int chan, void *udata)
  alias MixEffectDoneT = (LibC::Int, Void*) -> Void
  
  # (void *udata, Uint8 *stream, int len)
  fun mix_set_post_mix = Mix_SetPostMix(mix_func : (Void*, UInt8*, LibC::Int) -> Void, arg : Void*) : Void
  # (void *udata, Uint8 *stream, int len)
  fun mix_hook_music = Mix_HookMusic(mix_func : (Void*, UInt8*, LibC::Int) -> Void, arg : Void*) : Void
  # (void)
  fun mix_hook_music_finished = Mix_HookMusicFinished(music_finished : (Void) -> Void) : Void
  # (int channel)
  fun mix_channel_finished = Mix_ChannelFinished(channel_finished : (LibC::Int) -> Void) : Void
  # (const char*, void*)
  fun mix_each_sound_font = Mix_EachSoundFont(function : (LibC::Char*, Void*) -> LibC::Int, data : Void*) : LibC::Int 

  # SDL_mixer

  MIXER_MAJOR_VERSION = 3
  MIXER_MINOR_VERSION = 0
  MIXER_MICRO_VERSION = 0
  MIXER_VERSION = (((MIXER_MAJOR_VERSION)*1000 + (MIXER_MINOR_VERSION)*100 + (MIXER_MICRO_VERSION)))
  MIX_INIT_FLAC = 0x00000001
  MIX_INIT_MOD = 0x00000002
  MIX_INIT_MP3 = 0x00000008
  MIX_INIT_OGG = 0x00000010
  MIX_INIT_MID = 0x00000020
  MIX_INIT_OPUS = 0x00000040
  MIX_INIT_WAVPACK = 0x00000080
  MIX_CHANNELS = 8
  MIX_DEFAULT_FREQUENCY = 44100
  MIX_DEFAULT_FORMAT = AUDIO_S16
  MIX_DEFAULT_CHANNELS = 2
  MIX_MAX_VOLUME = 128
  MIX_CHANNEL_POST = (-2)
  MIX_EFFECTSMAXSPEED = "MIX_EFFECTSMAXSPEED"

  alias MixMusic = Void
  alias MIXInitFlags = UInt32
  alias MixMusicFinishedCallback)(void) = Void(SDLCALL*

  enum MixFading
    MIX_NO_FADING
    MIX_FADING_OUT
    MIX_FADING_IN
  end

  enum MixMusicType
    MUS_NONE
    MUS_WAV
    MUS_MOD
    MUS_MID
    MUS_OGG
    MUS_MP3
    MUS_MP3_MAD_UNUSED
    MUS_FLAC
    MUS_MODPLUG_UNUSED
    MUS_OPUS
    MUS_WAVPACK
    MUS_GME
  end

  struct MixChunk
    allocated : LibC::Int
    abuf : UInt8*
    alen : UInt32
    volume : UInt8
  end

end

module LibSDLMacro
  # SDL_mixer

  def self.mixer_version(x)
    (x).value.major = LibSDL::MIXER_MAJOR_VERSION
    (x).value.minor = LibSDL::MIXER_MINOR_VERSION
    (x).value.patch = LibSDL::MIXER_PATCHLEVEL
  end

  def self.mix_version(x)
    self.mixer_version(x)
  end

  def self.mixer_version_atleast
    ((LibSDL::MIXER_MAJOR_VERSION >= x) && (LibSDL::MIXER_MAJOR_VERSION > x || LibSDL::MIXER_MINOR_VERSION >= y) && (LibSDL::MIXER_MAJOR_VERSION > x || LibSDL::MIXER_MINOR_VERSION > y || LibSDL::MIXER_PATCHLEVEL >= z))
  end

  def self.mix_set_error(*args)
    LibSDL.set_error(*args)
  end

  def self.mix_get_error
    LibSDL.get_error
  end

  def self.mix_clear_error
    LibSDL.clear_error
  end

  def self.mix_out_of_memory
    LibSDL.out_of_memory
  end
end
