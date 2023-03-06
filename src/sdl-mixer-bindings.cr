@[Link("SDL2_mixer")]
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

  MIXER_MAJOR_VERSION = 2
  MIXER_MINOR_VERSION = 7
  MIXER_PATCHLEVEL = 0
  MIX_MAJOR_VERSION = MIXER_MAJOR_VERSION
  MIX_MINOR_VERSION = MIXER_MINOR_VERSION
  MIX_PATCHLEVEL = MIXER_PATCHLEVEL
  MIXER_COMPILEDVERSION = (((MIXER_MAJOR_VERSION)*1000 + (MIXER_MINOR_VERSION)*100 + (MIXER_PATCHLEVEL)))
  MIX_CHANNELS = 8
  MIX_DEFAULT_FREQUENCY = 44100
  MIX_DEFAULT_FORMAT = AUDIO_S16LSB
  MIX_DEFAULT_CHANNELS = 2
  MIX_MAX_VOLUME = MIX_MAXVOLUME
  MIX_CHANNEL_POST = (-2)
  MIX_EFFECTSMAXSPEED = "MIX_EFFECTSMAXSPEED"

  alias MixMusic = Void

  enum MIXInitFlags
    MIX_INIT_FLAC = 0x00000001
    MIX_INIT_MOD = 0x00000002
    MIX_INIT_MP3 = 0x00000008
    MIX_INIT_OGG = 0x00000010
    MIX_INIT_MID = 0x00000020
    MIX_INIT_OPUS = 0x00000040
    MIX_INIT_WAVPACK = 0x00000080
  end

  enum MixFading
    MIX_NO_FADING
    MIX_FADING_OUT
    MIX_FADING_IN
  end

  enum MixMusicType
    MUS_NONE
    MUS_CMD
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

  fun mix_linked_version = Mix_Linked_Version() : Version*
  fun mix_init = Mix_Init(flags : LibC::Int) : LibC::Int
  fun mix_quit = Mix_Quit() : Void
  fun mix_open_audio = Mix_OpenAudio(frequency : LibC::Int, format : UInt16, channels : LibC::Int, chunksize : LibC::Int) : LibC::Int
  fun mix_open_audio_device = Mix_OpenAudioDevice(frequency : LibC::Int, format : UInt16, channels : LibC::Int, chunksize : LibC::Int, device : LibC::Char*, allowed_changes : LibC::Int) : LibC::Int
  fun mix_pause_audio = Mix_PauseAudio(pause_on : LibC::Int) : Void
  fun mix_query_spec = Mix_QuerySpec(frequency : LibC::Int*, format : UInt16*, channels : LibC::Int*) : LibC::Int
  fun mix_allocate_channels = Mix_AllocateChannels(numchans : LibC::Int) : LibC::Int
  fun mix_load_wav_rw = Mix_LoadWAV_RW(src : RWops*, freesrc : LibC::Int) : MixChunk*
  fun mix_load_wav = Mix_LoadWAV(file : LibC::Char*) : MixChunk*
  fun mix_load_mus = Mix_LoadMUS(file : LibC::Char*) : MixMusic*
  fun mix_load_mus_rw = Mix_LoadMUS_RW(src : RWops*, freesrc : LibC::Int) : MixMusic*
  fun mix_load_mustype_rw = Mix_LoadMUSType_RW(src : RWops*, type : MixMusicType, freesrc : LibC::Int) : MixMusic*
  fun mix_quick_load_wav = Mix_QuickLoad_WAV(mem : UInt8*) : MixChunk*
  fun mix_quick_load_raw = Mix_QuickLoad_RAW(mem : UInt8*, len : UInt32) : MixChunk*
  fun mix_free_chunk = Mix_FreeChunk(chunk : MixChunk*) : Void
  fun mix_free_music = Mix_FreeMusic(music : MixMusic*) : Void
  fun mix_get_num_chunk_decoders = Mix_GetNumChunkDecoders() : LibC::Int
  fun mix_get_chunk_decoder = Mix_GetChunkDecoder(index : LibC::Int) : LibC::Char*
  fun mix_has_chunk_decoder = Mix_HasChunkDecoder(name : LibC::Char*) : SBool
  fun mix_get_num_music_decoders = Mix_GetNumMusicDecoders() : LibC::Int
  fun mix_get_music_decoder = Mix_GetMusicDecoder(index : LibC::Int) : LibC::Char*
  fun mix_has_music_decoder = Mix_HasMusicDecoder(name : LibC::Char*) : SBool
  fun mix_get_music_type = Mix_GetMusicType(music : MixMusic*) : MixMusicType
  fun mix_get_music_title = Mix_GetMusicTitle(music : MixMusic*) : LibC::Char*
  fun mix_get_music_title_tag = Mix_GetMusicTitleTag(music : MixMusic*) : LibC::Char*
  fun mix_get_music_artist_tag = Mix_GetMusicArtistTag(music : MixMusic*) : LibC::Char*
  fun mix_get_music_album_tag = Mix_GetMusicAlbumTag(music : MixMusic*) : LibC::Char*
  fun mix_get_music_copyright_tag = Mix_GetMusicCopyrightTag(music : MixMusic*) : LibC::Char*
  fun mix_get_music_hook_data = Mix_GetMusicHookData() : Void*
  fun mix_register_effect = Mix_RegisterEffect(chan : LibC::Int, f : MixEffectFuncT, d : MixEffectDoneT, arg : Void*) : LibC::Int
  fun mix_unregister_effect = Mix_UnregisterEffect(channel : LibC::Int, f : MixEffectFuncT) : LibC::Int
  fun mix_unregister_all_effects = Mix_UnregisterAllEffects(channel : LibC::Int) : LibC::Int
  fun mix_set_panning = Mix_SetPanning(channel : LibC::Int, left : UInt8, right : UInt8) : LibC::Int
  fun mix_set_position = Mix_SetPosition(channel : LibC::Int, angle : Int16, distance : UInt8) : LibC::Int
  fun mix_set_distance = Mix_SetDistance(channel : LibC::Int, distance : UInt8) : LibC::Int
  fun mix_set_reverse_stereo = Mix_SetReverseStereo(channel : LibC::Int, flip : LibC::Int) : LibC::Int
  fun mix_reserve_channels = Mix_ReserveChannels(num : LibC::Int) : LibC::Int
  fun mix_group_channel = Mix_GroupChannel(which : LibC::Int, tag : LibC::Int) : LibC::Int
  fun mix_group_channels = Mix_GroupChannels(from : LibC::Int, to : LibC::Int, tag : LibC::Int) : LibC::Int
  fun mix_group_available = Mix_GroupAvailable(tag : LibC::Int) : LibC::Int
  fun mix_group_count = Mix_GroupCount(tag : LibC::Int) : LibC::Int
  fun mix_group_oldest = Mix_GroupOldest(tag : LibC::Int) : LibC::Int
  fun mix_group_newer = Mix_GroupNewer(tag : LibC::Int) : LibC::Int
  fun mix_play_channel = Mix_PlayChannel(channel : LibC::Int, chunk : MixChunk*, loops : LibC::Int) : LibC::Int
  fun mix_play_channel_timed = Mix_PlayChannelTimed(channel : LibC::Int, chunk : MixChunk*, loops : LibC::Int, ticks : LibC::Int) : LibC::Int
  fun mix_play_music = Mix_PlayMusic(music : MixMusic*, loops : LibC::Int) : LibC::Int
  fun mix_fade_in_music = Mix_FadeInMusic(music : MixMusic*, loops : LibC::Int, ms : LibC::Int) : LibC::Int
  fun mix_fade_in_music_pos = Mix_FadeInMusicPos(music : MixMusic*, loops : LibC::Int, ms : LibC::Int, position : LibC::Double) : LibC::Int
  fun mix_fade_in_channel = Mix_FadeInChannel(channel : LibC::Int, chunk : MixChunk*, loops : LibC::Int, ms : LibC::Int) : LibC::Int
  fun mix_fade_in_channel_timed = Mix_FadeInChannelTimed(channel : LibC::Int, chunk : MixChunk*, loops : LibC::Int, ms : LibC::Int, ticks : LibC::Int) : LibC::Int
  fun mix_volume = Mix_Volume(channel : LibC::Int, volume : LibC::Int) : LibC::Int
  fun mix_volume_chunk = Mix_VolumeChunk(chunk : MixChunk*, volume : LibC::Int) : LibC::Int
  fun mix_volume_music = Mix_VolumeMusic(volume : LibC::Int) : LibC::Int
  fun mix_get_music_volume = Mix_GetMusicVolume(music : MixMusic*) : LibC::Int
  fun mix_master_volume = Mix_MasterVolume(volume : LibC::Int) : LibC::Int
  fun mix_halt_channel = Mix_HaltChannel(channel : LibC::Int) : LibC::Int
  fun mix_halt_group = Mix_HaltGroup(tag : LibC::Int) : LibC::Int
  fun mix_halt_music = Mix_HaltMusic() : LibC::Int
  fun mix_expire_channel = Mix_ExpireChannel(channel : LibC::Int, ticks : LibC::Int) : LibC::Int
  fun mix_fade_out_channel = Mix_FadeOutChannel(which : LibC::Int, ms : LibC::Int) : LibC::Int
  fun mix_fade_out_group = Mix_FadeOutGroup(tag : LibC::Int, ms : LibC::Int) : LibC::Int
  fun mix_fade_out_music = Mix_FadeOutMusic(ms : LibC::Int) : LibC::Int
  fun mix_fading_music = Mix_FadingMusic() : MixFading
  fun mix_fading_channel = Mix_FadingChannel(which : LibC::Int) : MixFading
  fun mix_pause = Mix_Pause(channel : LibC::Int) : Void
  fun mix_resume = Mix_Resume(channel : LibC::Int) : Void
  fun mix_paused = Mix_Paused(channel : LibC::Int) : LibC::Int
  fun mix_pause_music = Mix_PauseMusic() : Void
  fun mix_resume_music = Mix_ResumeMusic() : Void
  fun mix_rewind_music = Mix_RewindMusic() : Void
  fun mix_paused_music = Mix_PausedMusic() : LibC::Int
  fun mix_mod_music_jump_to_order = Mix_ModMusicJumpToOrder(order : LibC::Int) : LibC::Int
  fun mix_start_track = Mix_StartTrack(music : MixMusic*, track : LibC::Int) : LibC::Int
  fun mix_get_num_tracks = Mix_GetNumTracks(music : MixMusic*) : LibC::Int
  fun mix_set_music_position = Mix_SetMusicPosition(position : LibC::Double) : LibC::Int
  fun mix_get_music_position = Mix_GetMusicPosition(music : MixMusic*) : LibC::Double
  fun mix_music_duration = Mix_MusicDuration(music : MixMusic*) : LibC::Double
  fun mix_get_music_loop_start_time = Mix_GetMusicLoopStartTime(music : MixMusic*) : LibC::Double
  fun mix_get_music_loop_end_time = Mix_GetMusicLoopEndTime(music : MixMusic*) : LibC::Double
  fun mix_get_music_loop_length_time = Mix_GetMusicLoopLengthTime(music : MixMusic*) : LibC::Double
  fun mix_playing = Mix_Playing(channel : LibC::Int) : LibC::Int
  fun mix_playing_music = Mix_PlayingMusic() : LibC::Int
  fun mix_set_music_cmd = Mix_SetMusicCMD(command : LibC::Char*) : LibC::Int
  fun mix_set_synchro_value = Mix_SetSynchroValue(value : LibC::Int) : LibC::Int
  fun mix_get_synchro_value = Mix_GetSynchroValue() : LibC::Int
  fun mix_set_sound_fonts = Mix_SetSoundFonts(paths : LibC::Char*) : LibC::Int
  fun mix_get_sound_fonts = Mix_GetSoundFonts() : LibC::Char*
  fun mix_set_timidity_cfg = Mix_SetTimidityCfg(path : LibC::Char*) : LibC::Int
  fun mix_get_timidity_cfg = Mix_GetTimidityCfg() : LibC::Char*
  fun mix_get_chunk = Mix_GetChunk(channel : LibC::Int) : MixChunk*
  fun mix_close_audio = Mix_CloseAudio() : Void

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
