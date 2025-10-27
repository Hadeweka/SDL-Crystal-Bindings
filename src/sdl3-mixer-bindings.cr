@[Link("SDL3_mixer")]
lib LibSDL
  # additions3/helper_mixer.cr

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

  # SDL_mixer

  MIXER_MAJOR_VERSION = 3
  MIXER_MINOR_VERSION = 1
  MIXER_MICRO_VERSION = 0
  MIXER_VERSION = (((MIXER_MAJOR_VERSION)*1000000 + (MIXER_MINOR_VERSION)*1000 + (MIXER_MICRO_VERSION)))
  MIX_PROP_AUDIO_LOAD_IOSTREAM_POINTER = "mixer.audio.load.iostream"
  MIX_PROP_AUDIO_LOAD_CLOSEIO_BOOLEAN = "mixer.audio.load.closeio"
  MIX_PROP_AUDIO_LOAD_PREDECODE_BOOLEAN = "mixer.audio.load.predecode"
  MIX_PROP_AUDIO_LOAD_PREFERRED_MIXER_POINTER = "mixer.audio.load.preferred_mixer"
  MIX_PROP_AUDIO_LOAD_SKIP_METADATA_TAGS_BOOLEAN = "mixer.audio.load.skip_metadata_tags"
  MIX_PROP_AUDIO_DECODER_STRING = "mixer.audio.decoder"
  MIX_PROP_METADATA_TITLE_STRING = "mixer.metadata.title"
  MIX_PROP_METADATA_ARTIST_STRING = "mixer.metadata.artist"
  MIX_PROP_METADATA_ALBUM_STRING = "mixer.metadata.album"
  MIX_PROP_METADATA_COPYRIGHT_STRING = "mixer.metadata.copyright"
  MIX_PROP_METADATA_TRACK_NUMBER = "mixer.metadata.track"
  MIX_PROP_METADATA_TOTAL_TRACKS_NUMBER = "mixer.metadata.total_tracks"
  MIX_PROP_METADATA_YEAR_NUMBER = "mixer.metadata.year"
  MIX_PROP_METADATA_DURATION_FRAMES_NUMBER = "mixer.metadata.duration_frames"
  MIX_PROP_METADATA_DURATION_INFINITE_BOOLEAN = "mixer.metadata.duration_infinite"
  MIX_DURATION_UNKNOWN = -1
  MIX_DURATION_INFINITE = -2
  MIX_PROP_PLAY_LOOPS_NUMBER = "mixer.play.loops"
  MIX_PROP_PLAY_MAX_FRAME_NUMBER = "mixer.play.max_frame"
  MIX_PROP_PLAY_MAX_MILLISECONDS_NUMBER = "mixer.play.max_milliseconds"
  MIX_PROP_PLAY_START_FRAME_NUMBER = "mixer.play.start_frame"
  MIX_PROP_PLAY_START_MILLISECOND_NUMBER = "mixer.play.start_millisecond"
  MIX_PROP_PLAY_LOOP_START_FRAME_NUMBER = "mixer.play.loop_start_frame"
  MIX_PROP_PLAY_LOOP_START_MILLISECOND_NUMBER = "mixer.play.loop_start_millisecond"
  MIX_PROP_PLAY_FADE_IN_FRAMES_NUMBER = "mixer.play.fade_in_frames"
  MIX_PROP_PLAY_FADE_IN_MILLISECONDS_NUMBER = "mixer.play.fade_in_milliseconds"
  MIX_PROP_PLAY_APPEND_SILENCE_FRAMES_NUMBER = "mixer.play.append_silence_frames"
  MIX_PROP_PLAY_APPEND_SILENCE_MILLISECONDS_NUMBER = "mixer.play.append_silence_milliseconds"

  type MIXMixer = Void
  type MIXAudio = Void
  type MIXTrack = Void
  type MIXGroup = Void
  type MIXAudioDecoder = Void

  struct MIXStereoGains
    left : LibC::Float
    right : LibC::Float
  end

  struct MIXPoint3D
    x : LibC::Float
    y : LibC::Float
    z : LibC::Float
  end

  fun mix_version = MIX_Version() : LibC::Int
  fun mix_init = MIX_Init() : CBool
  fun mix_quit = MIX_Quit() : Void
  fun mix_get_num_audio_decoders = MIX_GetNumAudioDecoders() : LibC::Int
  fun mix_get_audio_decoder = MIX_GetAudioDecoder(index : LibC::Int) : LibC::Char*
  fun mix_create_mixer_device = MIX_CreateMixerDevice(devid : AudioDeviceID, spec : AudioSpec*) : MIXMixer*
  fun mix_create_mixer = MIX_CreateMixer(spec : AudioSpec*) : MIXMixer*
  fun mix_destroy_mixer = MIX_DestroyMixer(mixer : MIXMixer*) : Void
  fun mix_get_mixer_properties = MIX_GetMixerProperties(mixer : MIXMixer*) : PropertiesID
  fun mix_get_mixer_format = MIX_GetMixerFormat(mixer : MIXMixer*, spec : AudioSpec*) : CBool
  fun mix_load_audio_io = MIX_LoadAudio_IO(mixer : MIXMixer*, io : IOStream*, predecode : CBool, closeio : CBool) : MIXAudio*
  fun mix_load_audio = MIX_LoadAudio(mixer : MIXMixer*, path : LibC::Char*, predecode : CBool) : MIXAudio*
  fun mix_load_audio_with_properties = MIX_LoadAudioWithProperties(props : PropertiesID) : MIXAudio*
  fun mix_load_raw_audio_io = MIX_LoadRawAudio_IO(mixer : MIXMixer*, io : IOStream*, spec : AudioSpec*, closeio : CBool) : MIXAudio*
  fun mix_load_raw_audio = MIX_LoadRawAudio(mixer : MIXMixer*, data : Void*, datalen : LibC::SizeT, spec : AudioSpec*) : MIXAudio*
  fun mix_load_raw_audio_no_copy = MIX_LoadRawAudioNoCopy(mixer : MIXMixer*, data : Void*, datalen : LibC::SizeT, spec : AudioSpec*, free_when_done : CBool) : MIXAudio*
  fun mix_create_sine_wave_audio = MIX_CreateSineWaveAudio(mixer : MIXMixer*, hz : LibC::Int, amplitude : LibC::Float) : MIXAudio*
  fun mix_get_audio_properties = MIX_GetAudioProperties(audio : MIXAudio*) : PropertiesID
  fun mix_get_audio_duration = MIX_GetAudioDuration(audio : MIXAudio*) : Int64
  fun mix_get_audio_format = MIX_GetAudioFormat(audio : MIXAudio*, spec : AudioSpec*) : CBool
  fun mix_destroy_audio = MIX_DestroyAudio(audio : MIXAudio*) : Void
  fun mix_create_track = MIX_CreateTrack(mixer : MIXMixer*) : MIXTrack*
  fun mix_destroy_track = MIX_DestroyTrack(track : MIXTrack*) : Void
  fun mix_get_track_properties = MIX_GetTrackProperties(track : MIXTrack*) : PropertiesID
  fun mix_get_track_mixer = MIX_GetTrackMixer(track : MIXTrack*) : MIXMixer*
  fun mix_set_track_audio = MIX_SetTrackAudio(track : MIXTrack*, audio : MIXAudio*) : CBool
  fun mix_set_track_audio_stream = MIX_SetTrackAudioStream(track : MIXTrack*, stream : AudioStream*) : CBool
  fun mix_set_track_iostream = MIX_SetTrackIOStream(track : MIXTrack*, io : IOStream*, closeio : CBool) : CBool
  fun mix_set_track_raw_iostream = MIX_SetTrackRawIOStream(track : MIXTrack*, io : IOStream*, spec : AudioSpec*, closeio : CBool) : CBool
  fun mix_tag_track = MIX_TagTrack(track : MIXTrack*, tag : LibC::Char*) : CBool
  fun mix_untag_track = MIX_UntagTrack(track : MIXTrack*, tag : LibC::Char*) : Void
  fun mix_set_track_playback_position = MIX_SetTrackPlaybackPosition(track : MIXTrack*, frames : Int64) : CBool
  fun mix_get_track_playback_position = MIX_GetTrackPlaybackPosition(track : MIXTrack*) : Int64
  fun mix_track_looping = MIX_TrackLooping(track : MIXTrack*) : CBool
  fun mix_get_track_audio = MIX_GetTrackAudio(track : MIXTrack*) : MIXAudio*
  fun mix_get_track_audio_stream = MIX_GetTrackAudioStream(track : MIXTrack*) : AudioStream*
  fun mix_get_track_remaining = MIX_GetTrackRemaining(track : MIXTrack*) : Int64
  fun mix_track_msto_frames = MIX_TrackMSToFrames(track : MIXTrack*, ms : Int64) : Int64
  fun mix_track_frames_to_ms = MIX_TrackFramesToMS(track : MIXTrack*, frames : Int64) : Int64
  fun mix_audio_msto_frames = MIX_AudioMSToFrames(audio : MIXAudio*, ms : Int64) : Int64
  fun mix_audio_frames_to_ms = MIX_AudioFramesToMS(audio : MIXAudio*, frames : Int64) : Int64
  fun mix_msto_frames = MIX_MSToFrames(sample_rate : LibC::Int, ms : Int64) : Int64
  fun mix_frames_to_ms = MIX_FramesToMS(sample_rate : LibC::Int, frames : Int64) : Int64
  fun mix_play_track = MIX_PlayTrack(track : MIXTrack*, options : PropertiesID) : CBool
  fun mix_play_tag = MIX_PlayTag(mixer : MIXMixer*, tag : LibC::Char*, options : PropertiesID) : CBool
  fun mix_play_audio = MIX_PlayAudio(mixer : MIXMixer*, audio : MIXAudio*) : CBool
  fun mix_stop_track = MIX_StopTrack(track : MIXTrack*, fade_out_frames : Int64) : CBool
  fun mix_stop_all_tracks = MIX_StopAllTracks(mixer : MIXMixer*, fade_out_ms : Int64) : CBool
  fun mix_stop_tag = MIX_StopTag(mixer : MIXMixer*, tag : LibC::Char*, fade_out_ms : Int64) : CBool
  fun mix_pause_track = MIX_PauseTrack(track : MIXTrack*) : CBool
  fun mix_pause_all_tracks = MIX_PauseAllTracks(mixer : MIXMixer*) : CBool
  fun mix_pause_tag = MIX_PauseTag(mixer : MIXMixer*, tag : LibC::Char*) : CBool
  fun mix_resume_track = MIX_ResumeTrack(track : MIXTrack*) : CBool
  fun mix_resume_all_tracks = MIX_ResumeAllTracks(mixer : MIXMixer*) : CBool
  fun mix_resume_tag = MIX_ResumeTag(mixer : MIXMixer*, tag : LibC::Char*) : CBool
  fun mix_track_playing = MIX_TrackPlaying(track : MIXTrack*) : CBool
  fun mix_track_paused = MIX_TrackPaused(track : MIXTrack*) : CBool
  fun mix_set_master_gain = MIX_SetMasterGain(mixer : MIXMixer*, gain : LibC::Float) : CBool
  fun mix_get_master_gain = MIX_GetMasterGain(mixer : MIXMixer*) : LibC::Float
  fun mix_set_track_gain = MIX_SetTrackGain(track : MIXTrack*, gain : LibC::Float) : CBool
  fun mix_get_track_gain = MIX_GetTrackGain(track : MIXTrack*) : LibC::Float
  fun mix_set_tag_gain = MIX_SetTagGain(mixer : MIXMixer*, tag : LibC::Char*, gain : LibC::Float) : CBool
  fun mix_set_track_frequency_ratio = MIX_SetTrackFrequencyRatio(track : MIXTrack*, ratio : LibC::Float) : CBool
  fun mix_get_track_frequency_ratio = MIX_GetTrackFrequencyRatio(track : MIXTrack*) : LibC::Float
  fun mix_set_track_output_channel_map = MIX_SetTrackOutputChannelMap(track : MIXTrack*, chmap : LibC::Int*, count : LibC::Int) : CBool
  fun mix_set_track_stereo = MIX_SetTrackStereo(track : MIXTrack*, gains : MIXStereoGains*) : CBool
  fun mix_set_track3_dposition = MIX_SetTrack3DPosition(track : MIXTrack*, position : MIXPoint3D*) : CBool
  fun mix_get_track3_dposition = MIX_GetTrack3DPosition(track : MIXTrack*, position : MIXPoint3D*) : CBool
  fun mix_create_group = MIX_CreateGroup(mixer : MIXMixer*) : MIXGroup*
  fun mix_destroy_group = MIX_DestroyGroup(group : MIXGroup*) : Void
  fun mix_get_group_properties = MIX_GetGroupProperties(group : MIXGroup*) : PropertiesID
  fun mix_get_group_mixer = MIX_GetGroupMixer(group : MIXGroup*) : MIXMixer*
  fun mix_set_track_group = MIX_SetTrackGroup(track : MIXTrack*, group : MIXGroup*) : CBool
  fun mix_set_track_stopped_callback = MIX_SetTrackStoppedCallback(track : MIXTrack*, cb : MIXTrackStoppedCallback, userdata : Void*) : CBool
  fun mix_set_track_raw_callback = MIX_SetTrackRawCallback(track : MIXTrack*, cb : MIXTrackMixCallback, userdata : Void*) : CBool
  fun mix_set_track_cooked_callback = MIX_SetTrackCookedCallback(track : MIXTrack*, cb : MIXTrackMixCallback, userdata : Void*) : CBool
  fun mix_set_group_post_mix_callback = MIX_SetGroupPostMixCallback(group : MIXGroup*, cb : MIXGroupMixCallback, userdata : Void*) : CBool
  fun mix_set_post_mix_callback = MIX_SetPostMixCallback(mixer : MIXMixer*, cb : MIXPostMixCallback, userdata : Void*) : CBool
  fun mix_generate = MIX_Generate(mixer : MIXMixer*, buffer : Void*, buflen : LibC::Int) : CBool
  fun mix_create_audio_decoder = MIX_CreateAudioDecoder(path : LibC::Char*, props : PropertiesID) : MIXAudioDecoder*
  fun mix_create_audio_decoder_io = MIX_CreateAudioDecoder_IO(io : IOStream*, closeio : CBool, props : PropertiesID) : MIXAudioDecoder*
  fun mix_destroy_audio_decoder = MIX_DestroyAudioDecoder(audiodecoder : MIXAudioDecoder*) : Void
  fun mix_get_audio_decoder_properties = MIX_GetAudioDecoderProperties(audiodecoder : MIXAudioDecoder*) : PropertiesID
  fun mix_get_audio_decoder_format = MIX_GetAudioDecoderFormat(audiodecoder : MIXAudioDecoder*, spec : AudioSpec*) : CBool
  fun mix_decode_audio = MIX_DecodeAudio(audiodecoder : MIXAudioDecoder*, buffer : Void*, buflen : LibC::Int, spec : AudioSpec*) : LibC::Int

end

module LibSDLMacro
  # SDL_mixer
  
  macro image_version_atleast(x, y, z)
    (LibSDL::MIXER_MAJOR_VERSION >= {{x}}) && (LibSDL::MIXER_MAJOR_VERSION > {{x}} || LibSDL::MIXER_MINOR_VERSION >= {{y}}) && (LibSDL::MIXER_MAJOR_VERSION > {{x}} || LibSDL::MIXER_MINOR_VERSION > {{y}} || LibSDL::MIXER_PATCHLEVEL >= {{z}})
  end
end
