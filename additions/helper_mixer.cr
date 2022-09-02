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