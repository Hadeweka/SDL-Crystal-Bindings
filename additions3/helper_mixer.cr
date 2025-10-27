  # (void* userdata, MIX_Track* track)
  alias MixTrackStoppedCallback = (Void*, MixTrack*) -> Void

  # (void* userdata, MIX_Track* track, const SDL_AudioSpec* spec, float* pcm, int samples)
  alias MixTrackMixCallback = (Void*, MixTrack*, AudioSpec*, LibC::Float*, LibC::Int) -> Void

  # (void* userdata, MIX_Group* group, const SDL_AudioSpec* spec, float* pcm, int samples)
  alias MixGroupMixCallback = (Void*, MixGroup*, AudioSpec*, LibC::Float*, LibC::Int) -> Void

  # (void* userdata, MIX_Mixer* mixer, const SDL_AudioSpec* spec, float* pcm, int samples)
  alias MixPostMixCallback = (Void*, MixMixer*, AudioSpec*, LibC::Float*, LibC::Int) -> Void
