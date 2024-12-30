  enum AudioFormat
    SDL_AUDIO_UNKNOWN = 0x0000
    SDL_AUDIO_U8 = 0x0008
    SDL_AUDIO_S8 = 0x8008
    SDL_AUDIO_S16LE = 0x8010
    SDL_AUDIO_S16BE = 0x9010
    SDL_AUDIO_S32LE = 0x8020
    SDL_AUDIO_S32BE = 0x9020
    SDL_AUDIO_F32LE = 0x8120
    # NOTE: The following definitions ONLY hold for little endian - if you are using big endian (why), please open an issue report
    SDL_AUDIO_S16 = SDL_AUDIO_S16LE
    SDL_AUDIO_S32 = SDL_AUDIO_S32LE
    SDL_AUDIO_F32 = SDL_AUDIO_F32LE
  end
  
  # (void* userdata, SDL_AudioStream* stream, int additional_amount, int total_amount)
  alias AudioStreamCallback = (Void*, AudioStream*, LibC::Int, LibC::Int) -> Void
  # (void* userdata, const SDL_AudioSpec* spec, float* buffer, int buflen)
  alias AudioPostmixCallback = (Void*, AudioSpec, LibC::Float*, LibC::Int) -> Void
