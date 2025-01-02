  # (void *udata, Uint8 *stream, int len)
  alias MixMixCallback = (Void*, UInt8*, LibC::Int) -> Void

  # (void)
  alias MixMusicFinishedCallback = (Void) -> Void

  # (int channel)
  alias MixChannelFinishedCallback = (LibC::Int) -> Void

  # (int chan, void *stream, int len, void *udata)
  alias MixEffectFuncT = (LibC::Int, Void*, LibC::Int, Void*) -> Void

  # (int chan, void *udata)
  alias MixEffectDoneT = (LibC::Int, Void*) -> Void

  # (const char*, void*)
  alias MixEachSoundFontCallback = (LibC::Char*, Void*) -> LibC::Char
