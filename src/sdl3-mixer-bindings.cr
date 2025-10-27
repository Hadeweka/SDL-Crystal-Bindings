@[Link("SDL3_mixer")]
lib LibSDL
  # additions3/helper_mixer.cr

  # (void* userdata, MIX_Track* track)
  alias MixTrackStoppedCallback = (Void*, MixTrack*) -> Void

  # (void* userdata, MIX_Track* track, const SDL_AudioSpec* spec, float* pcm, int samples)
  alias MixTrackMixCallback = (Void*, MixTrack*, AudioSpec*, LibC::Float*, LibC::Int) -> Void

  # (void* userdata, MIX_Group* group, const SDL_AudioSpec* spec, float* pcm, int samples)
  alias MixGroupMixCallback = (Void*, MixGroup*, AudioSpec*, LibC::Float*, LibC::Int) -> Void

  # (void* userdata, MIX_Mixer* mixer, const SDL_AudioSpec* spec, float* pcm, int samples)
  alias MixPostMixCallback = (Void*, MixMixer*, AudioSpec*, LibC::Float*, LibC::Int) -> Void

  # SDL_mixer

  MIXER_MAJOR_VERSION = 3
  MIXER_MINOR_VERSION = 1
  MIXER_MICRO_VERSION = 0
  MIXER_VERSION = (((MIXER_MAJOR_VERSION)*1000000 + (MIXER_MINOR_VERSION)*1000 + (MIXER_MICRO_VERSION)))
  MIX_PROP_AUDIO_LOAD_IOSTREAM_POINTER = "SDL_mixer.audio.load.iostream"
  MIX_PROP_AUDIO_LOAD_CLOSEIO_BOOLEAN = "SDL_mixer.audio.load.closeio"
  MIX_PROP_AUDIO_LOAD_PREDECODE_BOOLEAN = "SDL_mixer.audio.load.predecode"
  MIX_PROP_AUDIO_LOAD_PREFERRED_MIXER_POINTER = "SDL_mixer.audio.load.preferred_mixer"
  MIX_PROP_AUDIO_LOAD_SKIP_METADATA_TAGS_BOOLEAN = "SDL_mixer.audio.load.skip_metadata_tags"
  MIX_PROP_AUDIO_DECODER_STRING = "SDL_mixer.audio.decoder"
  MIX_PROP_METADATA_TITLE_STRING = "SDL_mixer.metadata.title"
  MIX_PROP_METADATA_ARTIST_STRING = "SDL_mixer.metadata.artist"
  MIX_PROP_METADATA_ALBUM_STRING = "SDL_mixer.metadata.album"
  MIX_PROP_METADATA_COPYRIGHT_STRING = "SDL_mixer.metadata.copyright"
  MIX_PROP_METADATA_TRACK_NUMBER = "SDL_mixer.metadata.track"
  MIX_PROP_METADATA_TOTAL_TRACKS_NUMBER = "SDL_mixer.metadata.total_tracks"
  MIX_PROP_METADATA_YEAR_NUMBER = "SDL_mixer.metadata.year"
  MIX_PROP_METADATA_DURATION_FRAMES_NUMBER = "SDL_mixer.metadata.duration_frames"
  MIX_PROP_METADATA_DURATION_INFINITE_BOOLEAN = "SDL_mixer.metadata.duration_infinite"
  MIX_DURATION_UNKNOWN = -1
  MIX_DURATION_INFINITE = -2
  MIX_PROP_PLAY_LOOPS_NUMBER = "SDL_mixer.play.loops"
  MIX_PROP_PLAY_MAX_FRAME_NUMBER = "SDL_mixer.play.max_frame"
  MIX_PROP_PLAY_MAX_MILLISECONDS_NUMBER = "SDL_mixer.play.max_milliseconds"
  MIX_PROP_PLAY_START_FRAME_NUMBER = "SDL_mixer.play.start_frame"
  MIX_PROP_PLAY_START_MILLISECOND_NUMBER = "SDL_mixer.play.start_millisecond"
  MIX_PROP_PLAY_LOOP_START_FRAME_NUMBER = "SDL_mixer.play.loop_start_frame"
  MIX_PROP_PLAY_LOOP_START_MILLISECOND_NUMBER = "SDL_mixer.play.loop_start_millisecond"
  MIX_PROP_PLAY_FADE_IN_FRAMES_NUMBER = "SDL_mixer.play.fade_in_frames"
  MIX_PROP_PLAY_FADE_IN_MILLISECONDS_NUMBER = "SDL_mixer.play.fade_in_milliseconds"
  MIX_PROP_PLAY_APPEND_SILENCE_FRAMES_NUMBER = "SDL_mixer.play.append_silence_frames"
  MIX_PROP_PLAY_APPEND_SILENCE_MILLISECONDS_NUMBER = "SDL_mixer.play.append_silence_milliseconds"

  type MixMixer = Void
  type MixAudio = Void
  type MixTrack = Void
  type MixGroup = Void
  type MixAudioDecoder = Void

  struct MixStereoGains
    left : LibC::Float
    right : LibC::Float
  end

  struct MixPoint3D
    x : LibC::Float
    y : LibC::Float
    z : LibC::Float
  end

  fun mix_version = MIX_Version() : LibC::Int
  fun mix_init = MIX_Init() : CBool
  fun mix_quit = MIX_Quit() : Void
  fun mix_get_num_audio_decoders = MIX_GetNumAudioDecoders() : LibC::Int
  fun mix_get_audio_decoder = MIX_GetAudioDecoder(index : LibC::Int) : LibC::Char*
  fun mix_create_mixer_device = MIX_CreateMixerDevice(devid : AudioDeviceID, spec : AudioSpec*) : MixMixer*
  fun mix_create_mixer = MIX_CreateMixer(spec : AudioSpec*) : MixMixer*
  fun mix_destroy_mixer = MIX_DestroyMixer(mixer : MixMixer*) : Void
  fun mix_get_mixer_properties = MIX_GetMixerProperties(mixer : MixMixer*) : PropertiesID
  fun mix_get_mixer_format = MIX_GetMixerFormat(mixer : MixMixer*, spec : AudioSpec*) : CBool
  fun mix_load_audio_io = MIX_LoadAudio_IO(mixer : MixMixer*, io : IOStream*, predecode : CBool, closeio : CBool) : MixAudio*
  fun mix_load_audio = MIX_LoadAudio(mixer : MixMixer*, path : LibC::Char*, predecode : CBool) : MixAudio*
  fun mix_load_audio_with_properties = MIX_LoadAudioWithProperties(props : PropertiesID) : MixAudio*
  fun mix_load_raw_audio_io = MIX_LoadRawAudio_IO(mixer : MixMixer*, io : IOStream*, spec : AudioSpec*, closeio : CBool) : MixAudio*
  fun mix_load_raw_audio = MIX_LoadRawAudio(mixer : MixMixer*, data : Void*, datalen : LibC::SizeT, spec : AudioSpec*) : MixAudio*
  fun mix_load_raw_audio_no_copy = MIX_LoadRawAudioNoCopy(mixer : MixMixer*, data : Void*, datalen : LibC::SizeT, spec : AudioSpec*, free_when_done : CBool) : MixAudio*
  fun mix_create_sine_wave_audio = MIX_CreateSineWaveAudio(mixer : MixMixer*, hz : LibC::Int, amplitude : LibC::Float) : MixAudio*
  fun mix_get_audio_properties = MIX_GetAudioProperties(audio : MixAudio*) : PropertiesID
  fun mix_get_audio_duration = MIX_GetAudioDuration(audio : MixAudio*) : Int64
  fun mix_get_audio_format = MIX_GetAudioFormat(audio : MixAudio*, spec : AudioSpec*) : CBool
  fun mix_destroy_audio = MIX_DestroyAudio(audio : MixAudio*) : Void
  fun mix_create_track = MIX_CreateTrack(mixer : MixMixer*) : MixTrack*
  fun mix_destroy_track = MIX_DestroyTrack(track : MixTrack*) : Void
  fun mix_get_track_properties = MIX_GetTrackProperties(track : MixTrack*) : PropertiesID
  fun mix_get_track_mixer = MIX_GetTrackMixer(track : MixTrack*) : MixMixer*
  fun mix_set_track_audio = MIX_SetTrackAudio(track : MixTrack*, audio : MixAudio*) : CBool
  fun mix_set_track_audio_stream = MIX_SetTrackAudioStream(track : MixTrack*, stream : AudioStream*) : CBool
  fun mix_set_track_iostream = MIX_SetTrackIOStream(track : MixTrack*, io : IOStream*, closeio : CBool) : CBool
  fun mix_set_track_raw_iostream = MIX_SetTrackRawIOStream(track : MixTrack*, io : IOStream*, spec : AudioSpec*, closeio : CBool) : CBool
  fun mix_tag_track = MIX_TagTrack(track : MixTrack*, tag : LibC::Char*) : CBool
  fun mix_untag_track = MIX_UntagTrack(track : MixTrack*, tag : LibC::Char*) : Void
  fun mix_set_track_playback_position = MIX_SetTrackPlaybackPosition(track : MixTrack*, frames : Int64) : CBool
  fun mix_get_track_playback_position = MIX_GetTrackPlaybackPosition(track : MixTrack*) : Int64
  fun mix_track_looping = MIX_TrackLooping(track : MixTrack*) : CBool
  fun mix_get_track_audio = MIX_GetTrackAudio(track : MixTrack*) : MixAudio*
  fun mix_get_track_audio_stream = MIX_GetTrackAudioStream(track : MixTrack*) : AudioStream*
  fun mix_get_track_remaining = MIX_GetTrackRemaining(track : MixTrack*) : Int64
  fun mix_track_msto_frames = MIX_TrackMSToFrames(track : MixTrack*, ms : Int64) : Int64
  fun mix_track_frames_to_ms = MIX_TrackFramesToMS(track : MixTrack*, frames : Int64) : Int64
  fun mix_audio_msto_frames = MIX_AudioMSToFrames(audio : MixAudio*, ms : Int64) : Int64
  fun mix_audio_frames_to_ms = MIX_AudioFramesToMS(audio : MixAudio*, frames : Int64) : Int64
  fun mix_msto_frames = MIX_MSToFrames(sample_rate : LibC::Int, ms : Int64) : Int64
  fun mix_frames_to_ms = MIX_FramesToMS(sample_rate : LibC::Int, frames : Int64) : Int64
  fun mix_play_track = MIX_PlayTrack(track : MixTrack*, options : PropertiesID) : CBool
  fun mix_play_tag = MIX_PlayTag(mixer : MixMixer*, tag : LibC::Char*, options : PropertiesID) : CBool
  fun mix_play_audio = MIX_PlayAudio(mixer : MixMixer*, audio : MixAudio*) : CBool
  fun mix_stop_track = MIX_StopTrack(track : MixTrack*, fade_out_frames : Int64) : CBool
  fun mix_stop_all_tracks = MIX_StopAllTracks(mixer : MixMixer*, fade_out_ms : Int64) : CBool
  fun mix_stop_tag = MIX_StopTag(mixer : MixMixer*, tag : LibC::Char*, fade_out_ms : Int64) : CBool
  fun mix_pause_track = MIX_PauseTrack(track : MixTrack*) : CBool
  fun mix_pause_all_tracks = MIX_PauseAllTracks(mixer : MixMixer*) : CBool
  fun mix_pause_tag = MIX_PauseTag(mixer : MixMixer*, tag : LibC::Char*) : CBool
  fun mix_resume_track = MIX_ResumeTrack(track : MixTrack*) : CBool
  fun mix_resume_all_tracks = MIX_ResumeAllTracks(mixer : MixMixer*) : CBool
  fun mix_resume_tag = MIX_ResumeTag(mixer : MixMixer*, tag : LibC::Char*) : CBool
  fun mix_track_playing = MIX_TrackPlaying(track : MixTrack*) : CBool
  fun mix_track_paused = MIX_TrackPaused(track : MixTrack*) : CBool
  fun mix_set_master_gain = MIX_SetMasterGain(mixer : MixMixer*, gain : LibC::Float) : CBool
  fun mix_get_master_gain = MIX_GetMasterGain(mixer : MixMixer*) : LibC::Float
  fun mix_set_track_gain = MIX_SetTrackGain(track : MixTrack*, gain : LibC::Float) : CBool
  fun mix_get_track_gain = MIX_GetTrackGain(track : MixTrack*) : LibC::Float
  fun mix_set_tag_gain = MIX_SetTagGain(mixer : MixMixer*, tag : LibC::Char*, gain : LibC::Float) : CBool
  fun mix_set_track_frequency_ratio = MIX_SetTrackFrequencyRatio(track : MixTrack*, ratio : LibC::Float) : CBool
  fun mix_get_track_frequency_ratio = MIX_GetTrackFrequencyRatio(track : MixTrack*) : LibC::Float
  fun mix_set_track_output_channel_map = MIX_SetTrackOutputChannelMap(track : MixTrack*, chmap : LibC::Int*, count : LibC::Int) : CBool
  fun mix_set_track_stereo = MIX_SetTrackStereo(track : MixTrack*, gains : MixStereoGains*) : CBool
  fun mix_set_track3_dposition = MIX_SetTrack3DPosition(track : MixTrack*, position : MixPoint3D*) : CBool
  fun mix_get_track3_dposition = MIX_GetTrack3DPosition(track : MixTrack*, position : MixPoint3D*) : CBool
  fun mix_create_group = MIX_CreateGroup(mixer : MixMixer*) : MixGroup*
  fun mix_destroy_group = MIX_DestroyGroup(group : MixGroup*) : Void
  fun mix_get_group_properties = MIX_GetGroupProperties(group : MixGroup*) : PropertiesID
  fun mix_get_group_mixer = MIX_GetGroupMixer(group : MixGroup*) : MixMixer*
  fun mix_set_track_group = MIX_SetTrackGroup(track : MixTrack*, group : MixGroup*) : CBool
  fun mix_set_track_stopped_callback = MIX_SetTrackStoppedCallback(track : MixTrack*, cb : MixTrackStoppedCallback, userdata : Void*) : CBool
  fun mix_set_track_raw_callback = MIX_SetTrackRawCallback(track : MixTrack*, cb : MixTrackMixCallback, userdata : Void*) : CBool
  fun mix_set_track_cooked_callback = MIX_SetTrackCookedCallback(track : MixTrack*, cb : MixTrackMixCallback, userdata : Void*) : CBool
  fun mix_set_group_post_mix_callback = MIX_SetGroupPostMixCallback(group : MixGroup*, cb : MixGroupMixCallback, userdata : Void*) : CBool
  fun mix_set_post_mix_callback = MIX_SetPostMixCallback(mixer : MixMixer*, cb : MixPostMixCallback, userdata : Void*) : CBool
  fun mix_generate = MIX_Generate(mixer : MixMixer*, buffer : Void*, buflen : LibC::Int) : CBool
  fun mix_create_audio_decoder = MIX_CreateAudioDecoder(path : LibC::Char*, props : PropertiesID) : MixAudioDecoder*
  fun mix_create_audio_decoder_io = MIX_CreateAudioDecoder_IO(io : IOStream*, closeio : CBool, props : PropertiesID) : MixAudioDecoder*
  fun mix_destroy_audio_decoder = MIX_DestroyAudioDecoder(audiodecoder : MixAudioDecoder*) : Void
  fun mix_get_audio_decoder_properties = MIX_GetAudioDecoderProperties(audiodecoder : MixAudioDecoder*) : PropertiesID
  fun mix_get_audio_decoder_format = MIX_GetAudioDecoderFormat(audiodecoder : MixAudioDecoder*, spec : AudioSpec*) : CBool
  fun mix_decode_audio = MIX_DecodeAudio(audiodecoder : MixAudioDecoder*, buffer : Void*, buflen : LibC::Int, spec : AudioSpec*) : LibC::Int

end

module LibSDLMacro
  # SDL_mixer
  
  macro mixer_version_atleast(x, y, z)
    (LibSDL::MIXER_MAJOR_VERSION >= {{x}}) && (LibSDL::MIXER_MAJOR_VERSION > {{x}} || LibSDL::MIXER_MINOR_VERSION >= {{y}}) && (LibSDL::MIXER_MAJOR_VERSION > {{x}} || LibSDL::MIXER_MINOR_VERSION > {{y}} || LibSDL::MIXER_PATCHLEVEL >= {{z}})
  end
end
