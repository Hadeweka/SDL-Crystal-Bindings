  # (void* userdata, Uint8* stream, int len)
  alias AudioCallback = (Void*, UInt8*, LibC::Int) -> Void
  # (struct SDL_AudioCVT* cvt, SDL_AudioFormat format)
  alias AudioFilter = (AudioCVT*, AudioFormat) -> Void

  AUDIOCVT_MAX_POINTERS = AUDIOCVT_MAX_FILTERS + 1

  @[Packed]
  struct AudioCVT
    needed : LibC::Int
    src_format : AudioFormat
    dst_format : AudioFormat
    rate_incr : LibC::Double
    buf : UInt8*
    len : LibC::Int
    len_cvt : LibC::Int
    len_mult : LibC::Int
    len_ratio : LibC::Double
    filters : AudioFilter[AUDIOCVT_MAX_POINTERS]
    filter_index : LibC::Int
  end