  enum AudioFormat
    UNKNOWN = 0x0000
    U8 = 0x0008
    S8 = 0x8008
    S16LE = 0x8010
    S16BE = 0x9010
    S32LE = 0x8020
    S32BE = 0x9020
    F32LE = 0x8120
    F32BE = 0x9120
    # NOTE: The following definitions ONLY hold for little endian - if you are using big endian (why), please open an issue report
    S16 = S16LE
    S32 = S32LE
    F32 = F32LE
  end
  
  # (void* userdata, SDL_AudioStream* stream, int additional_amount, int total_amount)
  alias AudioStreamCallback = (Void*, AudioStream*, LibC::Int, LibC::Int) -> Void
  # (void* userdata, const SDL_AudioSpec* spec, float* buffer, int buflen)
  alias AudioPostmixCallback = (Void*, AudioSpec, LibC::Float*, LibC::Int) -> Void
  # (void* userdata, const void* buf, int buflen)
  alias AudioStreamDataCompleteCallback = (Void*, Void*, LibC::Int) -> Void
  