@[Link("SDL3")]
lib LibSDL
  # additions/helper.cr

  # (void)
  alias FunctionPointer = (Void) -> Void

  FLT_EPSILON = 1.1920928955078125e-07

  # SDL_version

  MAJOR_VERSION = 3
  MINOR_VERSION = 1
  MICRO_VERSION = 7
  VERSION = (((MAJOR_VERSION)*1000000 + (MINOR_VERSION)*1000 + (MICRO_VERSION)))

  fun get_version = SDL_GetVersion() : LibC::Int
  fun get_revision = SDL_GetRevision() : LibC::Char*

  # SDL_scancode

  enum Scancode
    SCANCODE_UNKNOWN = 0
    SCANCODE_A = 4
    SCANCODE_B = 5
    SCANCODE_C = 6
    SCANCODE_D = 7
    SCANCODE_E = 8
    SCANCODE_F = 9
    SCANCODE_G = 10
    SCANCODE_H = 11
    SCANCODE_I = 12
    SCANCODE_J = 13
    SCANCODE_K = 14
    SCANCODE_L = 15
    SCANCODE_M = 16
    SCANCODE_N = 17
    SCANCODE_O = 18
    SCANCODE_P = 19
    SCANCODE_Q = 20
    SCANCODE_R = 21
    SCANCODE_S = 22
    SCANCODE_T = 23
    SCANCODE_U = 24
    SCANCODE_V = 25
    SCANCODE_W = 26
    SCANCODE_X = 27
    SCANCODE_Y = 28
    SCANCODE_Z = 29
    SCANCODE_1 = 30
    SCANCODE_2 = 31
    SCANCODE_3 = 32
    SCANCODE_4 = 33
    SCANCODE_5 = 34
    SCANCODE_6 = 35
    SCANCODE_7 = 36
    SCANCODE_8 = 37
    SCANCODE_9 = 38
    SCANCODE_0 = 39
    SCANCODE_RETURN = 40
    SCANCODE_ESCAPE = 41
    SCANCODE_BACKSPACE = 42
    SCANCODE_TAB = 43
    SCANCODE_SPACE = 44
    SCANCODE_MINUS = 45
    SCANCODE_EQUALS = 46
    SCANCODE_LEFTBRACKET = 47
    SCANCODE_RIGHTBRACKET = 48
    SCANCODE_BACKSLASH = 49
    SCANCODE_NONUSHASH = 50
    SCANCODE_SEMICOLON = 51
    SCANCODE_APOSTROPHE = 52
    SCANCODE_GRAVE = 53
    SCANCODE_COMMA = 54
    SCANCODE_PERIOD = 55
    SCANCODE_SLASH = 56
    SCANCODE_CAPSLOCK = 57
    SCANCODE_F1 = 58
    SCANCODE_F2 = 59
    SCANCODE_F3 = 60
    SCANCODE_F4 = 61
    SCANCODE_F5 = 62
    SCANCODE_F6 = 63
    SCANCODE_F7 = 64
    SCANCODE_F8 = 65
    SCANCODE_F9 = 66
    SCANCODE_F10 = 67
    SCANCODE_F11 = 68
    SCANCODE_F12 = 69
    SCANCODE_PRINTSCREEN = 70
    SCANCODE_SCROLLLOCK = 71
    SCANCODE_PAUSE = 72
    SCANCODE_INSERT = 73
    SCANCODE_HOME = 74
    SCANCODE_PAGEUP = 75
    SCANCODE_DELETE = 76
    SCANCODE_END = 77
    SCANCODE_PAGEDOWN = 78
    SCANCODE_RIGHT = 79
    SCANCODE_LEFT = 80
    SCANCODE_DOWN = 81
    SCANCODE_UP = 82
    SCANCODE_NUMLOCKCLEAR = 83
    SCANCODE_KP_DIVIDE = 84
    SCANCODE_KP_MULTIPLY = 85
    SCANCODE_KP_MINUS = 86
    SCANCODE_KP_PLUS = 87
    SCANCODE_KP_ENTER = 88
    SCANCODE_KP_1 = 89
    SCANCODE_KP_2 = 90
    SCANCODE_KP_3 = 91
    SCANCODE_KP_4 = 92
    SCANCODE_KP_5 = 93
    SCANCODE_KP_6 = 94
    SCANCODE_KP_7 = 95
    SCANCODE_KP_8 = 96
    SCANCODE_KP_9 = 97
    SCANCODE_KP_0 = 98
    SCANCODE_KP_PERIOD = 99
    SCANCODE_NONUSBACKSLASH = 100
    SCANCODE_APPLICATION = 101
    SCANCODE_POWER = 102
    SCANCODE_KP_EQUALS = 103
    SCANCODE_F13 = 104
    SCANCODE_F14 = 105
    SCANCODE_F15 = 106
    SCANCODE_F16 = 107
    SCANCODE_F17 = 108
    SCANCODE_F18 = 109
    SCANCODE_F19 = 110
    SCANCODE_F20 = 111
    SCANCODE_F21 = 112
    SCANCODE_F22 = 113
    SCANCODE_F23 = 114
    SCANCODE_F24 = 115
    SCANCODE_EXECUTE = 116
    SCANCODE_HELP = 117
    SCANCODE_MENU = 118
    SCANCODE_SELECT = 119
    SCANCODE_STOP = 120
    SCANCODE_AGAIN = 121
    SCANCODE_UNDO = 122
    SCANCODE_CUT = 123
    SCANCODE_COPY = 124
    SCANCODE_PASTE = 125
    SCANCODE_FIND = 126
    SCANCODE_MUTE = 127
    SCANCODE_VOLUMEUP = 128
    SCANCODE_VOLUMEDOWN = 129
    SCANCODE_KP_COMMA = 133
    SCANCODE_KP_EQUALSAS400 = 134
    SCANCODE_INTERNATIONAL1 = 135
    SCANCODE_INTERNATIONAL2 = 136
    SCANCODE_INTERNATIONAL3 = 137
    SCANCODE_INTERNATIONAL4 = 138
    SCANCODE_INTERNATIONAL5 = 139
    SCANCODE_INTERNATIONAL6 = 140
    SCANCODE_INTERNATIONAL7 = 141
    SCANCODE_INTERNATIONAL8 = 142
    SCANCODE_INTERNATIONAL9 = 143
    SCANCODE_LANG1 = 144
    SCANCODE_LANG2 = 145
    SCANCODE_LANG3 = 146
    SCANCODE_LANG4 = 147
    SCANCODE_LANG5 = 148
    SCANCODE_LANG6 = 149
    SCANCODE_LANG7 = 150
    SCANCODE_LANG8 = 151
    SCANCODE_LANG9 = 152
    SCANCODE_ALTERASE = 153
    SCANCODE_SYSREQ = 154
    SCANCODE_CANCEL = 155
    SCANCODE_CLEAR = 156
    SCANCODE_PRIOR = 157
    SCANCODE_RETURN2 = 158
    SCANCODE_SEPARATOR = 159
    SCANCODE_OUT = 160
    SCANCODE_OPER = 161
    SCANCODE_CLEARAGAIN = 162
    SCANCODE_CRSEL = 163
    SCANCODE_EXSEL = 164
    SCANCODE_KP_00 = 176
    SCANCODE_KP_000 = 177
    SCANCODE_THOUSANDSSEPARATOR = 178
    SCANCODE_DECIMALSEPARATOR = 179
    SCANCODE_CURRENCYUNIT = 180
    SCANCODE_CURRENCYSUBUNIT = 181
    SCANCODE_KP_LEFTPAREN = 182
    SCANCODE_KP_RIGHTPAREN = 183
    SCANCODE_KP_LEFTBRACE = 184
    SCANCODE_KP_RIGHTBRACE = 185
    SCANCODE_KP_TAB = 186
    SCANCODE_KP_BACKSPACE = 187
    SCANCODE_KP_A = 188
    SCANCODE_KP_B = 189
    SCANCODE_KP_C = 190
    SCANCODE_KP_D = 191
    SCANCODE_KP_E = 192
    SCANCODE_KP_F = 193
    SCANCODE_KP_XOR = 194
    SCANCODE_KP_POWER = 195
    SCANCODE_KP_PERCENT = 196
    SCANCODE_KP_LESS = 197
    SCANCODE_KP_GREATER = 198
    SCANCODE_KP_AMPERSAND = 199
    SCANCODE_KP_DBLAMPERSAND = 200
    SCANCODE_KP_VERTICALBAR = 201
    SCANCODE_KP_DBLVERTICALBAR = 202
    SCANCODE_KP_COLON = 203
    SCANCODE_KP_HASH = 204
    SCANCODE_KP_SPACE = 205
    SCANCODE_KP_AT = 206
    SCANCODE_KP_EXCLAM = 207
    SCANCODE_KP_MEMSTORE = 208
    SCANCODE_KP_MEMRECALL = 209
    SCANCODE_KP_MEMCLEAR = 210
    SCANCODE_KP_MEMADD = 211
    SCANCODE_KP_MEMSUBTRACT = 212
    SCANCODE_KP_MEMMULTIPLY = 213
    SCANCODE_KP_MEMDIVIDE = 214
    SCANCODE_KP_PLUSMINUS = 215
    SCANCODE_KP_CLEAR = 216
    SCANCODE_KP_CLEARENTRY = 217
    SCANCODE_KP_BINARY = 218
    SCANCODE_KP_OCTAL = 219
    SCANCODE_KP_DECIMAL = 220
    SCANCODE_KP_HEXADECIMAL = 221
    SCANCODE_LCTRL = 224
    SCANCODE_LSHIFT = 225
    SCANCODE_LALT = 226
    SCANCODE_LGUI = 227
    SCANCODE_RCTRL = 228
    SCANCODE_RSHIFT = 229
    SCANCODE_RALT = 230
    SCANCODE_RGUI = 231
    SCANCODE_MODE = 257
    SCANCODE_SLEEP = 258
    SCANCODE_WAKE = 259
    SCANCODE_CHANNEL_INCREMENT = 260
    SCANCODE_CHANNEL_DECREMENT = 261
    SCANCODE_MEDIA_PLAY = 262
    SCANCODE_MEDIA_PAUSE = 263
    SCANCODE_MEDIA_RECORD = 264
    SCANCODE_MEDIA_FAST_FORWARD = 265
    SCANCODE_MEDIA_REWIND = 266
    SCANCODE_MEDIA_NEXT_TRACK = 267
    SCANCODE_MEDIA_PREVIOUS_TRACK = 268
    SCANCODE_MEDIA_STOP = 269
    SCANCODE_MEDIA_EJECT = 270
    SCANCODE_MEDIA_PLAY_PAUSE = 271
    SCANCODE_MEDIA_SELECT = 272
    SCANCODE_AC_NEW = 273
    SCANCODE_AC_OPEN = 274
    SCANCODE_AC_CLOSE = 275
    SCANCODE_AC_EXIT = 276
    SCANCODE_AC_SAVE = 277
    SCANCODE_AC_PRINT = 278
    SCANCODE_AC_PROPERTIES = 279
    SCANCODE_AC_SEARCH = 280
    SCANCODE_AC_HOME = 281
    SCANCODE_AC_BACK = 282
    SCANCODE_AC_FORWARD = 283
    SCANCODE_AC_STOP = 284
    SCANCODE_AC_REFRESH = 285
    SCANCODE_AC_BOOKMARKS = 286
    SCANCODE_SOFTLEFT = 287
    SCANCODE_SOFTRIGHT = 288
    SCANCODE_CALL = 289
    SCANCODE_ENDCALL = 290
    SCANCODE_RESERVED = 400
    SCANCODE_COUNT = 512
  end

  # additions/helper_audio.cr

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

  # SDL_audio

  AUDIO_MASK_BITSIZE = (0xFF)
  AUDIO_MASK_FLOAT = (1 << 8)
  AUDIO_MASK_BIG_ENDIAN = (1 << 12)
  AUDIO_MASK_SIGNED = (1 << 15)
  AUDIO_DEVICE_DEFAULT_PLAYBACK = AudioDeviceID.new(0xFFFFFFFF)
  AUDIO_DEVICE_DEFAULT_RECORDING = AudioDeviceID.new(0xFFFFFFFE)

  alias AudioStream = Void
  alias AudioDeviceID = UInt32

  struct AudioSpec
    format : AudioFormat
    channels : LibC::Int
    freq : LibC::Int
  end

  fun get_num_audio_drivers = SDL_GetNumAudioDrivers() : LibC::Int
  fun get_audio_driver = SDL_GetAudioDriver(index : LibC::Int) : LibC::Char*
  fun get_current_audio_driver = SDL_GetCurrentAudioDriver() : LibC::Char*
  fun get_audio_playback_devices = SDL_GetAudioPlaybackDevices(count : LibC::Int*) : AudioDeviceID*
  fun get_audio_recording_devices = SDL_GetAudioRecordingDevices(count : LibC::Int*) : AudioDeviceID*
  fun get_audio_device_name = SDL_GetAudioDeviceName(devid : AudioDeviceID) : LibC::Char*
  fun get_audio_device_format = SDL_GetAudioDeviceFormat(devid : AudioDeviceID, spec : AudioSpec*, sample_frames : LibC::Int*) : LibC::Char
  fun get_audio_device_channel_map = SDL_GetAudioDeviceChannelMap(devid : AudioDeviceID, count : LibC::Int*) : LibC::Int*
  fun open_audio_device = SDL_OpenAudioDevice(devid : AudioDeviceID, spec : AudioSpec*) : AudioDeviceID
  fun is_audio_device_physical = SDL_IsAudioDevicePhysical(devid : AudioDeviceID) : LibC::Char
  fun is_audio_device_playback = SDL_IsAudioDevicePlayback(devid : AudioDeviceID) : LibC::Char
  fun pause_audio_device = SDL_PauseAudioDevice(dev : AudioDeviceID) : LibC::Char
  fun resume_audio_device = SDL_ResumeAudioDevice(dev : AudioDeviceID) : LibC::Char
  fun audio_device_paused = SDL_AudioDevicePaused(dev : AudioDeviceID) : LibC::Char
  fun get_audio_device_gain = SDL_GetAudioDeviceGain(devid : AudioDeviceID) : LibC::Float
  fun set_audio_device_gain = SDL_SetAudioDeviceGain(devid : AudioDeviceID, gain : LibC::Float) : LibC::Char
  fun close_audio_device = SDL_CloseAudioDevice(devid : AudioDeviceID) : Void
  fun bind_audio_streams = SDL_BindAudioStreams(devid : AudioDeviceID, streams : AudioStream**, num_streams : LibC::Int) : LibC::Char
  fun bind_audio_stream = SDL_BindAudioStream(devid : AudioDeviceID, stream : AudioStream*) : LibC::Char
  fun unbind_audio_streams = SDL_UnbindAudioStreams(streams : AudioStream**, num_streams : LibC::Int) : Void
  fun unbind_audio_stream = SDL_UnbindAudioStream(stream : AudioStream*) : Void
  fun get_audio_stream_device = SDL_GetAudioStreamDevice(stream : AudioStream*) : AudioDeviceID
  fun create_audio_stream = SDL_CreateAudioStream(src_spec : AudioSpec*, dst_spec : AudioSpec*) : AudioStream*
  fun get_audio_stream_properties = SDL_GetAudioStreamProperties(stream : AudioStream*) : PropertiesID
  fun get_audio_stream_format = SDL_GetAudioStreamFormat(stream : AudioStream*, src_spec : AudioSpec*, dst_spec : AudioSpec*) : LibC::Char
  fun set_audio_stream_format = SDL_SetAudioStreamFormat(stream : AudioStream*, src_spec : AudioSpec*, dst_spec : AudioSpec*) : LibC::Char
  fun get_audio_stream_frequency_ratio = SDL_GetAudioStreamFrequencyRatio(stream : AudioStream*) : LibC::Float
  fun set_audio_stream_frequency_ratio = SDL_SetAudioStreamFrequencyRatio(stream : AudioStream*, ratio : LibC::Float) : LibC::Char
  fun get_audio_stream_gain = SDL_GetAudioStreamGain(stream : AudioStream*) : LibC::Float
  fun set_audio_stream_gain = SDL_SetAudioStreamGain(stream : AudioStream*, gain : LibC::Float) : LibC::Char
  fun get_audio_stream_input_channel_map = SDL_GetAudioStreamInputChannelMap(stream : AudioStream*, count : LibC::Int*) : LibC::Int*
  fun get_audio_stream_output_channel_map = SDL_GetAudioStreamOutputChannelMap(stream : AudioStream*, count : LibC::Int*) : LibC::Int*
  fun set_audio_stream_input_channel_map = SDL_SetAudioStreamInputChannelMap(stream : AudioStream*, chmap : LibC::Int*, count : LibC::Int) : LibC::Char
  fun set_audio_stream_output_channel_map = SDL_SetAudioStreamOutputChannelMap(stream : AudioStream*, chmap : LibC::Int*, count : LibC::Int) : LibC::Char
  fun put_audio_stream_data = SDL_PutAudioStreamData(stream : AudioStream*, buf : Void*, len : LibC::Int) : LibC::Char
  fun get_audio_stream_data = SDL_GetAudioStreamData(stream : AudioStream*, buf : Void*, len : LibC::Int) : LibC::Int
  fun get_audio_stream_available = SDL_GetAudioStreamAvailable(stream : AudioStream*) : LibC::Int
  fun get_audio_stream_queued = SDL_GetAudioStreamQueued(stream : AudioStream*) : LibC::Int
  fun flush_audio_stream = SDL_FlushAudioStream(stream : AudioStream*) : LibC::Char
  fun clear_audio_stream = SDL_ClearAudioStream(stream : AudioStream*) : LibC::Char
  fun pause_audio_stream_device = SDL_PauseAudioStreamDevice(stream : AudioStream*) : LibC::Char
  fun resume_audio_stream_device = SDL_ResumeAudioStreamDevice(stream : AudioStream*) : LibC::Char
  fun lock_audio_stream = SDL_LockAudioStream(stream : AudioStream*) : LibC::Char
  fun unlock_audio_stream = SDL_UnlockAudioStream(stream : AudioStream*) : LibC::Char
  fun set_audio_stream_get_callback = SDL_SetAudioStreamGetCallback(stream : AudioStream*, callback : AudioStreamCallback, userdata : Void*) : LibC::Char
  fun set_audio_stream_put_callback = SDL_SetAudioStreamPutCallback(stream : AudioStream*, callback : AudioStreamCallback, userdata : Void*) : LibC::Char
  fun destroy_audio_stream = SDL_DestroyAudioStream(stream : AudioStream*) : Void
  fun open_audio_device_stream = SDL_OpenAudioDeviceStream(devid : AudioDeviceID, spec : AudioSpec*, callback : AudioStreamCallback, userdata : Void*) : AudioStream*
  fun set_audio_postmix_callback = SDL_SetAudioPostmixCallback(devid : AudioDeviceID, callback : AudioPostmixCallback, userdata : Void*) : LibC::Char
  fun load_wav_io = SDL_LoadWAV_IO(src : IOStream*, closeio : LibC::Char, spec : AudioSpec*, audio_buf : UInt8**, audio_len : UInt32*) : LibC::Char
  fun load_wav = SDL_LoadWAV(path : LibC::Char*, spec : AudioSpec*, audio_buf : UInt8**, audio_len : UInt32*) : LibC::Char
  fun mix_audio = SDL_MixAudio(dst : UInt8*, src : UInt8*, format : AudioFormat, len : UInt32, volume : LibC::Float) : LibC::Char
  fun convert_audio_samples = SDL_ConvertAudioSamples(src_spec : AudioSpec*, src_data : UInt8*, src_len : LibC::Int, dst_spec : AudioSpec*, dst_data : UInt8**, dst_len : LibC::Int*) : LibC::Char
  fun get_audio_format_name = SDL_GetAudioFormatName(format : AudioFormat) : LibC::Char*
  fun get_silence_value_for_format = SDL_GetSilenceValueForFormat(format : AudioFormat) : LibC::Int

  # SDL_blendmode

  BLENDMODE_NONE = 0x00000000
  BLENDMODE_BLEND = 0x00000001
  BLENDMODE_BLEND_PREMULTIPLIED = 0x00000010
  BLENDMODE_ADD = 0x00000002
  BLENDMODE_ADD_PREMULTIPLIED = 0x00000020
  BLENDMODE_MOD = 0x00000004
  BLENDMODE_MUL = 0x00000008
  BLENDMODE_INVALID = 0x7FFFFFFF

  alias BlendMode = UInt32

  enum BlendOperation
    BLENDOPERATION_ADD = 0x1
    BLENDOPERATION_SUBTRACT = 0x2
    BLENDOPERATION_REV_SUBTRACT = 0x3
    BLENDOPERATION_MINIMUM = 0x4
    BLENDOPERATION_MAXIMUM = 0x5
  end

  enum BlendFactor
    BLENDFACTOR_ZERO = 0x1
    BLENDFACTOR_ONE = 0x2
    BLENDFACTOR_SRC_COLOR = 0x3
    BLENDFACTOR_ONE_MINUS_SRC_COLOR = 0x4
    BLENDFACTOR_SRC_ALPHA = 0x5
    BLENDFACTOR_ONE_MINUS_SRC_ALPHA = 0x6
    BLENDFACTOR_DST_COLOR = 0x7
    BLENDFACTOR_ONE_MINUS_DST_COLOR = 0x8
    BLENDFACTOR_DST_ALPHA = 0x9
    BLENDFACTOR_ONE_MINUS_DST_ALPHA = 0xA
  end

  fun compose_custom_blend_mode = SDL_ComposeCustomBlendMode(src_color_factor : BlendFactor, dst_color_factor : BlendFactor, color_operation : BlendOperation, src_alpha_factor : BlendFactor, dst_alpha_factor : BlendFactor, alpha_operation : BlendOperation) : BlendMode

  # SDL_camera

  alias Camera = Void
  alias CameraID = UInt32

  enum CameraPosition
    CAMERA_POSITION_UNKNOWN
    CAMERA_POSITION_FRONT_FACING
    CAMERA_POSITION_BACK_FACING
  end

  struct CameraSpec
    format : PixelFormat
    colorspace : Colorspace
    width : LibC::Int
    height : LibC::Int
    framerate_numerator : LibC::Int
    framerate_denominator : LibC::Int
  end

  fun get_num_camera_drivers = SDL_GetNumCameraDrivers() : LibC::Int
  fun get_camera_driver = SDL_GetCameraDriver(index : LibC::Int) : LibC::Char*
  fun get_current_camera_driver = SDL_GetCurrentCameraDriver() : LibC::Char*
  fun get_cameras = SDL_GetCameras(count : LibC::Int*) : CameraID*
  fun get_camera_supported_formats = SDL_GetCameraSupportedFormats(devid : CameraID, count : LibC::Int*) : CameraSpec**
  fun get_camera_name = SDL_GetCameraName(instance_id : CameraID) : LibC::Char*
  fun get_camera_position = SDL_GetCameraPosition(instance_id : CameraID) : CameraPosition
  fun open_camera = SDL_OpenCamera(instance_id : CameraID, spec : CameraSpec*) : Camera*
  fun get_camera_permission_state = SDL_GetCameraPermissionState(camera : Camera*) : LibC::Int
  fun get_camera_id = SDL_GetCameraID(camera : Camera*) : CameraID
  fun get_camera_properties = SDL_GetCameraProperties(camera : Camera*) : PropertiesID
  fun get_camera_format = SDL_GetCameraFormat(camera : Camera*, spec : CameraSpec*) : LibC::Char
  fun acquire_camera_frame = SDL_AcquireCameraFrame(camera : Camera*, timestamp_ns : UInt64*) : Surface*
  fun release_camera_frame = SDL_ReleaseCameraFrame(camera : Camera*, frame : Surface*) : Void
  fun close_camera = SDL_CloseCamera(camera : Camera*) : Void

  # additions/helper_clipboard.cr

  # (void* userdata, const char* mime_type, size_t* size)
  alias ClipboardDataCallback = (Void*, LibC::Char*, LibC::SizeT*) -> Void*
  # (void* userdata)
  alias ClipboardCleanupCallback = (Void*) -> Void

  # SDL_clipboard

  fun set_clipboard_text = SDL_SetClipboardText(text : LibC::Char*) : LibC::Char
  fun get_clipboard_text = SDL_GetClipboardText() : LibC::Char*
  fun has_clipboard_text = SDL_HasClipboardText() : LibC::Char
  fun set_primary_selection_text = SDL_SetPrimarySelectionText(text : LibC::Char*) : LibC::Char
  fun get_primary_selection_text = SDL_GetPrimarySelectionText() : LibC::Char*
  fun has_primary_selection_text = SDL_HasPrimarySelectionText() : LibC::Char
  fun set_clipboard_data = SDL_SetClipboardData(callback : ClipboardDataCallback, cleanup : ClipboardCleanupCallback, userdata : Void*, mime_types : LibC::Char**, num_mime_types : LibC::SizeT) : LibC::Char
  fun clear_clipboard_data = SDL_ClearClipboardData() : LibC::Char
  fun get_clipboard_data = SDL_GetClipboardData(mime_type : LibC::Char*, size : LibC::SizeT*) : Void*
  fun has_clipboard_data = SDL_HasClipboardData(mime_type : LibC::Char*) : LibC::Char
  fun get_clipboard_mime_types = SDL_GetClipboardMimeTypes(num_mime_types : LibC::SizeT*) : LibC::Char**

  # SDL_cpuinfo

  CACHELINE_SIZE = 128

  fun get_num_logical_cpucores = SDL_GetNumLogicalCPUCores() : LibC::Int
  fun get_cpucache_line_size = SDL_GetCPUCacheLineSize() : LibC::Int
  fun has_alti_vec = SDL_HasAltiVec() : LibC::Char
  fun has_mmx = SDL_HasMMX() : LibC::Char
  fun has_sse = SDL_HasSSE() : LibC::Char
  fun has_sse2 = SDL_HasSSE2() : LibC::Char
  fun has_sse3 = SDL_HasSSE3() : LibC::Char
  fun has_sse41 = SDL_HasSSE41() : LibC::Char
  fun has_sse42 = SDL_HasSSE42() : LibC::Char
  fun has_avx = SDL_HasAVX() : LibC::Char
  fun has_avx2 = SDL_HasAVX2() : LibC::Char
  fun has_avx512_f = SDL_HasAVX512F() : LibC::Char
  fun has_armsimd = SDL_HasARMSIMD() : LibC::Char
  fun has_neon = SDL_HasNEON() : LibC::Char
  fun has_lsx = SDL_HasLSX() : LibC::Char
  fun has_lasx = SDL_HasLASX() : LibC::Char
  fun get_system_ram = SDL_GetSystemRAM() : LibC::Int
  fun get_simdalignment = SDL_GetSIMDAlignment() : LibC::SizeT

  # additions/helper_dialog.cr

  # (void* userdata, const char* const* filelist, int filter)
  alias DialogFileCallback = (Void*, LibC::Char*, LibC::Int) -> Void

  # SDL_dialog

  PROP_FILE_DIALOG_FILTERS_POINTER = "SDL.filedialog.filters"
  PROP_FILE_DIALOG_NFILTERS_NUMBER = "SDL.filedialog.nfilters"
  PROP_FILE_DIALOG_WINDOW_POINTER = "SDL.filedialog.window"
  PROP_FILE_DIALOG_LOCATION_STRING = "SDL.filedialog.location"
  PROP_FILE_DIALOG_MANY_BOOLEAN = "SDL.filedialog.many"
  PROP_FILE_DIALOG_TITLE_STRING = "SDL.filedialog.title"
  PROP_FILE_DIALOG_ACCEPT_STRING = "SDL.filedialog.accept"
  PROP_FILE_DIALOG_CANCEL_STRING = "SDL.filedialog.cancel"

  enum FileDialogType
    FILEDIALOG_OPENFILE
    FILEDIALOG_SAVEFILE
    FILEDIALOG_OPENFOLDER
  end

  struct DialogFileFilter
    name : LibC::Char*
    pattern : LibC::Char*
  end

  fun show_open_file_dialog = SDL_ShowOpenFileDialog(callback : DialogFileCallback, userdata : Void*, window : Window*, filters : DialogFileFilter*, nfilters : LibC::Int, default_location : LibC::Char*, allow_many : LibC::Char) : Void
  fun show_save_file_dialog = SDL_ShowSaveFileDialog(callback : DialogFileCallback, userdata : Void*, window : Window*, filters : DialogFileFilter*, nfilters : LibC::Int, default_location : LibC::Char*) : Void
  fun show_open_folder_dialog = SDL_ShowOpenFolderDialog(callback : DialogFileCallback, userdata : Void*, window : Window*, default_location : LibC::Char*, allow_many : LibC::Char) : Void
  fun show_file_dialog_with_properties = SDL_ShowFileDialogWithProperties(type : FileDialogType, callback : DialogFileCallback, userdata : Void*, props : PropertiesID) : Void

  # SDL_error

  fun set_error = SDL_SetError(fmt : LibC::Char*, ...) : LibC::Char
  fun out_of_memory = SDL_OutOfMemory() : LibC::Char
  fun get_error = SDL_GetError() : LibC::Char*
  fun clear_error = SDL_ClearError() : LibC::Char

  # additions/helper_event.cr

  union Event
    type : UInt32
    common : CommonEvent
    display : DisplayEvent
    window : WindowEvent
    kdevice : KeyboardDeviceEvent
    key : KeyboardEvent
    edit : TextEditingEvent
    edit_candidates : TextEditingCandidatesEvent
    text : TextInputEvent
    mdevice : MouseDeviceEvent
    motion : MouseMotionEvent
    button : MouseButtonEvent
    wheel : MouseWheelEvent
    jdevice : JoyDeviceEvent
    jaxis : JoyAxisEvent
    jball : JoyBallEvent
    jhat : JoyHatEvent
    jbutton : JoyButtonEvent
    jbattery : JoyBatteryEvent
    gdevice : GamepadDeviceEvent
    gaxis : GamepadAxisEvent
    gbutton : GamepadButtonEvent
    gtouchpad : GamepadTouchpadEvent
    gsensor : GamepadSensorEvent
    adevice : AudioDeviceEvent
    cdevice : CameraDeviceEvent
    sensor : SensorEvent
    quit : QuitEvent
    user : UserEvent
    tfinger : TouchFingerEvent
    pproximity : PenProximityEvent
    ptouch : PenTouchEvent
    pmotion: PenMotionEvent
    pbutton : PenButtonEvent
    paxis : PenAxisEvent
    render : RenderEvent
    drop : DropEvent
    clipboard : ClipboardEvent
    padding : UInt8[128] # NOTE: This might become difficult on certain architectures
  end

  # (void* userdata, SDL_Event* event)
  alias EventFilter = (Void*, Event*) -> LibC::Char

  # SDL_events

  enum EventType
    EVENT_FIRST = 0
    EVENT_QUIT = 0x100
    EVENT_TERMINATING
    EVENT_LOW_MEMORY
    EVENT_WILL_ENTER_BACKGROUND
    EVENT_DID_ENTER_BACKGROUND
    EVENT_WILL_ENTER_FOREGROUND
    EVENT_DID_ENTER_FOREGROUND
    EVENT_LOCALE_CHANGED
    EVENT_SYSTEM_THEME_CHANGED
    EVENT_DISPLAY_ORIENTATION = 0x151
    EVENT_DISPLAY_ADDED
    EVENT_DISPLAY_REMOVED
    EVENT_DISPLAY_MOVED
    EVENT_DISPLAY_DESKTOP_MODE_CHANGED
    EVENT_DISPLAY_CURRENT_MODE_CHANGED
    EVENT_DISPLAY_CONTENT_SCALE_CHANGED
    EVENT_DISPLAY_FIRST = EVENT_DISPLAY_ORIENTATION
    EVENT_DISPLAY_LAST = EVENT_DISPLAY_CONTENT_SCALE_CHANGED
    EVENT_WINDOW_SHOWN = 0x202
    EVENT_WINDOW_HIDDEN
    EVENT_WINDOW_EXPOSED
    EVENT_WINDOW_MOVED
    EVENT_WINDOW_RESIZED
    EVENT_WINDOW_PIXEL_SIZE_CHANGED
    EVENT_WINDOW_METAL_VIEW_RESIZED
    EVENT_WINDOW_MINIMIZED
    EVENT_WINDOW_MAXIMIZED
    EVENT_WINDOW_RESTORED
    EVENT_WINDOW_MOUSE_ENTER
    EVENT_WINDOW_MOUSE_LEAVE
    EVENT_WINDOW_FOCUS_GAINED
    EVENT_WINDOW_FOCUS_LOST
    EVENT_WINDOW_CLOSE_REQUESTED
    EVENT_WINDOW_HIT_TEST
    EVENT_WINDOW_ICCPROF_CHANGED
    EVENT_WINDOW_DISPLAY_CHANGED
    EVENT_WINDOW_DISPLAY_SCALE_CHANGED
    EVENT_WINDOW_SAFE_AREA_CHANGED
    EVENT_WINDOW_OCCLUDED
    EVENT_WINDOW_ENTER_FULLSCREEN
    EVENT_WINDOW_LEAVE_FULLSCREEN
    EVENT_WINDOW_DESTROYED
    EVENT_WINDOW_HDR_STATE_CHANGED
    EVENT_WINDOW_FIRST = EVENT_WINDOW_SHOWN
    EVENT_WINDOW_LAST = EVENT_WINDOW_HDR_STATE_CHANGED
    EVENT_KEY_DOWN = 0x300
    EVENT_KEY_UP
    EVENT_TEXT_EDITING
    EVENT_TEXT_INPUT
    EVENT_KEYMAP_CHANGED
    EVENT_KEYBOARD_ADDED
    EVENT_KEYBOARD_REMOVED
    EVENT_TEXT_EDITING_CANDIDATES
    EVENT_MOUSE_MOTION = 0x400
    EVENT_MOUSE_BUTTON_DOWN
    EVENT_MOUSE_BUTTON_UP
    EVENT_MOUSE_WHEEL
    EVENT_MOUSE_ADDED
    EVENT_MOUSE_REMOVED
    EVENT_JOYSTICK_AXIS_MOTION = 0x600
    EVENT_JOYSTICK_BALL_MOTION
    EVENT_JOYSTICK_HAT_MOTION
    EVENT_JOYSTICK_BUTTON_DOWN
    EVENT_JOYSTICK_BUTTON_UP
    EVENT_JOYSTICK_ADDED
    EVENT_JOYSTICK_REMOVED
    EVENT_JOYSTICK_BATTERY_UPDATED
    EVENT_JOYSTICK_UPDATE_COMPLETE
    EVENT_GAMEPAD_AXIS_MOTION = 0x650
    EVENT_GAMEPAD_BUTTON_DOWN
    EVENT_GAMEPAD_BUTTON_UP
    EVENT_GAMEPAD_ADDED
    EVENT_GAMEPAD_REMOVED
    EVENT_GAMEPAD_REMAPPED
    EVENT_GAMEPAD_TOUCHPAD_DOWN
    EVENT_GAMEPAD_TOUCHPAD_MOTION
    EVENT_GAMEPAD_TOUCHPAD_UP
    EVENT_GAMEPAD_SENSOR_UPDATE
    EVENT_GAMEPAD_UPDATE_COMPLETE
    EVENT_GAMEPAD_STEAM_HANDLE_UPDATED
    EVENT_FINGER_DOWN = 0x700
    EVENT_FINGER_UP
    EVENT_FINGER_MOTION
    EVENT_FINGER_CANCELED
    EVENT_CLIPBOARD_UPDATE = 0x900
    EVENT_DROP_FILE = 0x1000
    EVENT_DROP_TEXT
    EVENT_DROP_BEGIN
    EVENT_DROP_COMPLETE
    EVENT_DROP_POSITION
    EVENT_AUDIO_DEVICE_ADDED = 0x1100
    EVENT_AUDIO_DEVICE_REMOVED
    EVENT_AUDIO_DEVICE_FORMAT_CHANGED
    EVENT_SENSOR_UPDATE = 0x1200
    EVENT_PEN_PROXIMITY_IN = 0x1300
    EVENT_PEN_PROXIMITY_OUT
    EVENT_PEN_DOWN
    EVENT_PEN_UP
    EVENT_PEN_BUTTON_DOWN
    EVENT_PEN_BUTTON_UP
    EVENT_PEN_MOTION
    EVENT_PEN_AXIS
    EVENT_CAMERA_DEVICE_ADDED = 0x1400
    EVENT_CAMERA_DEVICE_REMOVED
    EVENT_CAMERA_DEVICE_APPROVED
    EVENT_CAMERA_DEVICE_DENIED
    EVENT_RENDER_TARGETS_RESET = 0x2000
    EVENT_RENDER_DEVICE_RESET
    EVENT_RENDER_DEVICE_LOST
    EVENT_PRIVATE0 = 0x4000
    EVENT_PRIVATE1
    EVENT_PRIVATE2
    EVENT_PRIVATE3
    EVENT_POLL_SENTINEL = 0x7F00
    EVENT_USER = 0x8000
    EVENT_LAST = 0xFFFF
    EVENT_ENUM_PADDING = 0x7FFFFFFF
  end

  enum EventAction
    ADDEVENT
    PEEKEVENT
    GETEVENT
  end

  struct CommonEvent
    type : UInt32
    reserved : UInt32
    timestamp : UInt64
  end

  struct DisplayEvent
    type : EventType
    reserved : UInt32
    timestamp : UInt64
    display_id : DisplayID
    data1 : Int32
    data2 : Int32
  end

  struct WindowEvent
    type : EventType
    reserved : UInt32
    timestamp : UInt64
    window_id : WindowID
    data1 : Int32
    data2 : Int32
  end

  struct KeyboardDeviceEvent
    type : EventType
    reserved : UInt32
    timestamp : UInt64
    which : KeyboardID
  end

  struct KeyboardEvent
    type : EventType
    reserved : UInt32
    timestamp : UInt64
    window_id : WindowID
    which : KeyboardID
    scancode : Scancode
    key : Keycode
    mod : Keymod
    raw : UInt16
    down : LibC::Char
    repeat : LibC::Char
  end

  struct TextEditingEvent
    type : EventType
    reserved : UInt32
    timestamp : UInt64
    window_id : WindowID
    text : LibC::Char*
    start_point : Int32
    length : Int32
  end

  struct TextEditingCandidatesEvent
    type : EventType
    reserved : UInt32
    timestamp : UInt64
    window_id : WindowID
    candidates : LibC::Char**
    num_candidates : Int32
    selected_candidate : Int32
    horizontal : LibC::Char
    padding1 : UInt8
    padding2 : UInt8
    padding3 : UInt8
  end

  struct TextInputEvent
    type : EventType
    reserved : UInt32
    timestamp : UInt64
    window_id : WindowID
    text : LibC::Char*
  end

  struct MouseDeviceEvent
    type : EventType
    reserved : UInt32
    timestamp : UInt64
    which : MouseID
  end

  struct MouseMotionEvent
    type : EventType
    reserved : UInt32
    timestamp : UInt64
    window_id : WindowID
    which : MouseID
    state : MouseButtonFlags
    x : LibC::Float
    y : LibC::Float
    xrel : LibC::Float
    yrel : LibC::Float
  end

  struct MouseButtonEvent
    type : EventType
    reserved : UInt32
    timestamp : UInt64
    window_id : WindowID
    which : MouseID
    button : UInt8
    down : LibC::Char
    clicks : UInt8
    padding : UInt8
    x : LibC::Float
    y : LibC::Float
  end

  struct MouseWheelEvent
    type : EventType
    reserved : UInt32
    timestamp : UInt64
    window_id : WindowID
    which : MouseID
    x : LibC::Float
    y : LibC::Float
    direction : MouseWheelDirection
    mouse_x : LibC::Float
    mouse_y : LibC::Float
  end

  struct JoyAxisEvent
    type : EventType
    reserved : UInt32
    timestamp : UInt64
    which : JoystickID
    axis : UInt8
    padding1 : UInt8
    padding2 : UInt8
    padding3 : UInt8
    value : Int16
    padding4 : UInt16
  end

  struct JoyBallEvent
    type : EventType
    reserved : UInt32
    timestamp : UInt64
    which : JoystickID
    ball : UInt8
    padding1 : UInt8
    padding2 : UInt8
    padding3 : UInt8
    xrel : Int16
    yrel : Int16
  end

  struct JoyHatEvent
    type : EventType
    reserved : UInt32
    timestamp : UInt64
    which : JoystickID
    hat : UInt8
    value : UInt8
    padding1 : UInt8
    padding2 : UInt8
  end

  struct JoyButtonEvent
    type : EventType
    reserved : UInt32
    timestamp : UInt64
    which : JoystickID
    button : UInt8
    down : LibC::Char
    padding1 : UInt8
    padding2 : UInt8
  end

  struct JoyDeviceEvent
    type : EventType
    reserved : UInt32
    timestamp : UInt64
    which : JoystickID
  end

  struct JoyBatteryEvent
    type : EventType
    reserved : UInt32
    timestamp : UInt64
    which : JoystickID
    state : PowerState
    percent : LibC::Int
  end

  struct GamepadAxisEvent
    type : EventType
    reserved : UInt32
    timestamp : UInt64
    which : JoystickID
    axis : UInt8
    padding1 : UInt8
    padding2 : UInt8
    padding3 : UInt8
    value : Int16
    padding4 : UInt16
  end

  struct GamepadButtonEvent
    type : EventType
    reserved : UInt32
    timestamp : UInt64
    which : JoystickID
    button : UInt8
    down : LibC::Char
    padding1 : UInt8
    padding2 : UInt8
  end

  struct GamepadDeviceEvent
    type : EventType
    reserved : UInt32
    timestamp : UInt64
    which : JoystickID
  end

  struct GamepadTouchpadEvent
    type : EventType
    reserved : UInt32
    timestamp : UInt64
    which : JoystickID
    touchpad : Int32
    finger : Int32
    x : LibC::Float
    y : LibC::Float
    pressure : LibC::Float
  end

  struct GamepadSensorEvent
    type : EventType
    reserved : UInt32
    timestamp : UInt64
    which : JoystickID
    sensor : Int32
    data : LibC::Float[3]
    sensor_timestamp : UInt64
  end

  struct AudioDeviceEvent
    type : EventType
    reserved : UInt32
    timestamp : UInt64
    which : AudioDeviceID
    recording : LibC::Char
    padding1 : UInt8
    padding2 : UInt8
    padding3 : UInt8
  end

  struct CameraDeviceEvent
    type : EventType
    reserved : UInt32
    timestamp : UInt64
    which : CameraID
  end

  struct RenderEvent
    type : EventType
    reserved : UInt32
    timestamp : UInt64
    window_id : WindowID
  end

  struct TouchFingerEvent
    type : EventType
    reserved : UInt32
    timestamp : UInt64
    touch_id : TouchID
    finger_id : FingerID
    x : LibC::Float
    y : LibC::Float
    dx : LibC::Float
    dy : LibC::Float
    pressure : LibC::Float
    window_id : WindowID
  end

  struct PenProximityEvent
    type : EventType
    reserved : UInt32
    timestamp : UInt64
    window_id : WindowID
    which : PenID
  end

  struct PenMotionEvent
    type : EventType
    reserved : UInt32
    timestamp : UInt64
    window_id : WindowID
    which : PenID
    pen_state : PenInputFlags
    x : LibC::Float
    y : LibC::Float
  end

  struct PenTouchEvent
    type : EventType
    reserved : UInt32
    timestamp : UInt64
    window_id : WindowID
    which : PenID
    pen_state : PenInputFlags
    x : LibC::Float
    y : LibC::Float
    eraser : LibC::Char
    down : LibC::Char
  end

  struct PenButtonEvent
    type : EventType
    reserved : UInt32
    timestamp : UInt64
    window_id : WindowID
    which : PenID
    pen_state : PenInputFlags
    x : LibC::Float
    y : LibC::Float
    button : UInt8
    down : LibC::Char
  end

  struct PenAxisEvent
    type : EventType
    reserved : UInt32
    timestamp : UInt64
    window_id : WindowID
    which : PenID
    pen_state : PenInputFlags
    x : LibC::Float
    y : LibC::Float
    axis : PenAxis
    value : LibC::Float
  end

  struct DropEvent
    type : EventType
    reserved : UInt32
    timestamp : UInt64
    window_id : WindowID
    x : LibC::Float
    y : LibC::Float
    source : LibC::Char*
    data : LibC::Char*
  end

  struct ClipboardEvent
    type : EventType
    reserved : UInt32
    timestamp : UInt64
    owner : LibC::Char
    num_mime_types : Int32
    mime_types : LibC::Char**
  end

  struct SensorEvent
    type : EventType
    reserved : UInt32
    timestamp : UInt64
    which : SensorID
    data : LibC::Float[6]
    sensor_timestamp : UInt64
  end

  struct QuitEvent
    type : EventType
    reserved : UInt32
    timestamp : UInt64
  end

  struct UserEvent
    type : UInt32
    reserved : UInt32
    timestamp : UInt64
    window_id : WindowID
    code : Int32
    data1 : Void*
    data2 : Void*
  end

  fun pump_events = SDL_PumpEvents() : Void
  fun peep_events = SDL_PeepEvents(events : Event*, numevents : LibC::Int, action : EventAction, min_type : UInt32, max_type : UInt32) : LibC::Int
  fun has_event = SDL_HasEvent(type : UInt32) : LibC::Char
  fun has_events = SDL_HasEvents(min_type : UInt32, max_type : UInt32) : LibC::Char
  fun flush_event = SDL_FlushEvent(type : UInt32) : Void
  fun flush_events = SDL_FlushEvents(min_type : UInt32, max_type : UInt32) : Void
  fun poll_event = SDL_PollEvent(event : Event*) : LibC::Char
  fun wait_event = SDL_WaitEvent(event : Event*) : LibC::Char
  fun wait_event_timeout = SDL_WaitEventTimeout(event : Event*, timeout_ms : Int32) : LibC::Char
  fun push_event = SDL_PushEvent(event : Event*) : LibC::Char
  fun set_event_filter = SDL_SetEventFilter(filter : EventFilter, userdata : Void*) : Void
  fun get_event_filter = SDL_GetEventFilter(filter : EventFilter*, userdata : Void**) : LibC::Char
  fun add_event_watch = SDL_AddEventWatch(filter : EventFilter, userdata : Void*) : LibC::Char
  fun remove_event_watch = SDL_RemoveEventWatch(filter : EventFilter, userdata : Void*) : Void
  fun filter_events = SDL_FilterEvents(filter : EventFilter, userdata : Void*) : Void
  fun set_event_enabled = SDL_SetEventEnabled(type : UInt32, enabled : LibC::Char) : Void
  fun event_enabled = SDL_EventEnabled(type : UInt32) : LibC::Char
  fun register_events = SDL_RegisterEvents(numevents : LibC::Int) : UInt32
  fun get_window_from_event = SDL_GetWindowFromEvent(event : Event*) : Window*

  # additions/helper_gamepad.cr

  # NOTE: Helper struct, not named in original SDL
  struct GamepadBindingInputAxis
    axis : LibC::Int
    axis_min : LibC::Int
    axis_max : LibC::Int
  end

  # NOTE: Helper struct, not named in original SDL
  struct GamepadBindingInputHat
    hat : LibC::Int
    hat_mask : LibC::Int
  end

  # NOTE: Helper struct, not named in original SDL
  struct GamepadBindingOutputAxis
    axis : GamepadAxis
    axis_min : LibC::Int
    axis_max : LibC::Int
  end
  
  # NOTE: Helper struct, not named in original SDL
  union GamepadBindingInput
    button : LibC::Int
    axis : GamepadBindingInputAxis
    hat : GamepadBindingInputHat
  end

  # NOTE: Helper struct, not named in original SDL
  union GamepadBindingOutput
    button : GamepadButton
    axis : GamepadBindingOutputAxis
  end

  struct GamepadBinding
    input_type : GamepadBindingType
    input : GamepadBindingInput
    output_type : GamepadBindingType
    output : GamepadBindingOutput
  end

  # SDL_gamepad

  PROP_GAMEPAD_CAP_MONO_LED_BOOLEAN = PROP_JOYSTICK_CAP_MONO_LED_BOOLEAN
  PROP_GAMEPAD_CAP_RGB_LED_BOOLEAN = PROP_JOYSTICK_CAP_RGB_LED_BOOLEAN
  PROP_GAMEPAD_CAP_PLAYER_LED_BOOLEAN = PROP_JOYSTICK_CAP_PLAYER_LED_BOOLEAN
  PROP_GAMEPAD_CAP_RUMBLE_BOOLEAN = PROP_JOYSTICK_CAP_RUMBLE_BOOLEAN
  PROP_GAMEPAD_CAP_TRIGGER_RUMBLE_BOOLEAN = PROP_JOYSTICK_CAP_TRIGGER_RUMBLE_BOOLEAN

  alias Gamepad = Void

  enum GamepadType
    GAMEPAD_TYPE_UNKNOWN = 0
    GAMEPAD_TYPE_STANDARD
    GAMEPAD_TYPE_XBOX360
    GAMEPAD_TYPE_XBOXONE
    GAMEPAD_TYPE_PS3
    GAMEPAD_TYPE_PS4
    GAMEPAD_TYPE_PS5
    GAMEPAD_TYPE_NINTENDO_SWITCH_PRO
    GAMEPAD_TYPE_NINTENDO_SWITCH_JOYCON_LEFT
    GAMEPAD_TYPE_NINTENDO_SWITCH_JOYCON_RIGHT
    GAMEPAD_TYPE_NINTENDO_SWITCH_JOYCON_PAIR
    GAMEPAD_TYPE_COUNT
  end

  enum GamepadButton
    GAMEPAD_BUTTON_INVALID = -1
    GAMEPAD_BUTTON_SOUTH
    GAMEPAD_BUTTON_EAST
    GAMEPAD_BUTTON_WEST
    GAMEPAD_BUTTON_NORTH
    GAMEPAD_BUTTON_BACK
    GAMEPAD_BUTTON_GUIDE
    GAMEPAD_BUTTON_START
    GAMEPAD_BUTTON_LEFT_STICK
    GAMEPAD_BUTTON_RIGHT_STICK
    GAMEPAD_BUTTON_LEFT_SHOULDER
    GAMEPAD_BUTTON_RIGHT_SHOULDER
    GAMEPAD_BUTTON_DPAD_UP
    GAMEPAD_BUTTON_DPAD_DOWN
    GAMEPAD_BUTTON_DPAD_LEFT
    GAMEPAD_BUTTON_DPAD_RIGHT
    GAMEPAD_BUTTON_MISC1
    GAMEPAD_BUTTON_RIGHT_PADDLE1
    GAMEPAD_BUTTON_LEFT_PADDLE1
    GAMEPAD_BUTTON_RIGHT_PADDLE2
    GAMEPAD_BUTTON_LEFT_PADDLE2
    GAMEPAD_BUTTON_TOUCHPAD
    GAMEPAD_BUTTON_MISC2
    GAMEPAD_BUTTON_MISC3
    GAMEPAD_BUTTON_MISC4
    GAMEPAD_BUTTON_MISC5
    GAMEPAD_BUTTON_MISC6
    GAMEPAD_BUTTON_COUNT
  end

  enum GamepadButtonLabel
    GAMEPAD_BUTTON_LABEL_UNKNOWN
    GAMEPAD_BUTTON_LABEL_A
    GAMEPAD_BUTTON_LABEL_B
    GAMEPAD_BUTTON_LABEL_X
    GAMEPAD_BUTTON_LABEL_Y
    GAMEPAD_BUTTON_LABEL_CROSS
    GAMEPAD_BUTTON_LABEL_CIRCLE
    GAMEPAD_BUTTON_LABEL_SQUARE
    GAMEPAD_BUTTON_LABEL_TRIANGLE
  end

  enum GamepadAxis
    GAMEPAD_AXIS_INVALID = -1
    GAMEPAD_AXIS_LEFTX
    GAMEPAD_AXIS_LEFTY
    GAMEPAD_AXIS_RIGHTX
    GAMEPAD_AXIS_RIGHTY
    GAMEPAD_AXIS_LEFT_TRIGGER
    GAMEPAD_AXIS_RIGHT_TRIGGER
    GAMEPAD_AXIS_COUNT
  end

  enum GamepadBindingType
    GAMEPAD_BINDTYPE_NONE = 0
    GAMEPAD_BINDTYPE_BUTTON
    GAMEPAD_BINDTYPE_AXIS
    GAMEPAD_BINDTYPE_HAT
  end

  fun add_gamepad_mapping = SDL_AddGamepadMapping(mapping : LibC::Char*) : LibC::Int
  fun add_gamepad_mappings_from_io = SDL_AddGamepadMappingsFromIO(src : IOStream*, closeio : LibC::Char) : LibC::Int
  fun add_gamepad_mappings_from_file = SDL_AddGamepadMappingsFromFile(file : LibC::Char*) : LibC::Int
  fun reload_gamepad_mappings = SDL_ReloadGamepadMappings() : LibC::Char
  fun get_gamepad_mappings = SDL_GetGamepadMappings(count : LibC::Int*) : LibC::Char**
  fun get_gamepad_mapping_for_guid = SDL_GetGamepadMappingForGUID(guid : GUID) : LibC::Char*
  fun get_gamepad_mapping = SDL_GetGamepadMapping(gamepad : Gamepad*) : LibC::Char*
  fun set_gamepad_mapping = SDL_SetGamepadMapping(instance_id : JoystickID, mapping : LibC::Char*) : LibC::Char
  fun has_gamepad = SDL_HasGamepad() : LibC::Char
  fun get_gamepads = SDL_GetGamepads(count : LibC::Int*) : JoystickID*
  fun is_gamepad = SDL_IsGamepad(instance_id : JoystickID) : LibC::Char
  fun get_gamepad_name_for_id = SDL_GetGamepadNameForID(instance_id : JoystickID) : LibC::Char*
  fun get_gamepad_path_for_id = SDL_GetGamepadPathForID(instance_id : JoystickID) : LibC::Char*
  fun get_gamepad_player_index_for_id = SDL_GetGamepadPlayerIndexForID(instance_id : JoystickID) : LibC::Int
  fun get_gamepad_guidfor_id = SDL_GetGamepadGUIDForID(instance_id : JoystickID) : GUID
  fun get_gamepad_vendor_for_id = SDL_GetGamepadVendorForID(instance_id : JoystickID) : UInt16
  fun get_gamepad_product_for_id = SDL_GetGamepadProductForID(instance_id : JoystickID) : UInt16
  fun get_gamepad_product_version_for_id = SDL_GetGamepadProductVersionForID(instance_id : JoystickID) : UInt16
  fun get_gamepad_type_for_id = SDL_GetGamepadTypeForID(instance_id : JoystickID) : GamepadType
  fun get_real_gamepad_type_for_id = SDL_GetRealGamepadTypeForID(instance_id : JoystickID) : GamepadType
  fun get_gamepad_mapping_for_id = SDL_GetGamepadMappingForID(instance_id : JoystickID) : LibC::Char*
  fun open_gamepad = SDL_OpenGamepad(instance_id : JoystickID) : Gamepad*
  fun get_gamepad_from_id = SDL_GetGamepadFromID(instance_id : JoystickID) : Gamepad*
  fun get_gamepad_from_player_index = SDL_GetGamepadFromPlayerIndex(player_index : LibC::Int) : Gamepad*
  fun get_gamepad_properties = SDL_GetGamepadProperties(gamepad : Gamepad*) : PropertiesID
  fun get_gamepad_id = SDL_GetGamepadID(gamepad : Gamepad*) : JoystickID
  fun get_gamepad_name = SDL_GetGamepadName(gamepad : Gamepad*) : LibC::Char*
  fun get_gamepad_path = SDL_GetGamepadPath(gamepad : Gamepad*) : LibC::Char*
  fun get_gamepad_type = SDL_GetGamepadType(gamepad : Gamepad*) : GamepadType
  fun get_real_gamepad_type = SDL_GetRealGamepadType(gamepad : Gamepad*) : GamepadType
  fun get_gamepad_player_index = SDL_GetGamepadPlayerIndex(gamepad : Gamepad*) : LibC::Int
  fun set_gamepad_player_index = SDL_SetGamepadPlayerIndex(gamepad : Gamepad*, player_index : LibC::Int) : LibC::Char
  fun get_gamepad_vendor = SDL_GetGamepadVendor(gamepad : Gamepad*) : UInt16
  fun get_gamepad_product = SDL_GetGamepadProduct(gamepad : Gamepad*) : UInt16
  fun get_gamepad_product_version = SDL_GetGamepadProductVersion(gamepad : Gamepad*) : UInt16
  fun get_gamepad_firmware_version = SDL_GetGamepadFirmwareVersion(gamepad : Gamepad*) : UInt16
  fun get_gamepad_serial = SDL_GetGamepadSerial(gamepad : Gamepad*) : LibC::Char*
  fun get_gamepad_steam_handle = SDL_GetGamepadSteamHandle(gamepad : Gamepad*) : UInt64
  fun get_gamepad_connection_state = SDL_GetGamepadConnectionState(gamepad : Gamepad*) : JoystickConnectionState
  fun get_gamepad_power_info = SDL_GetGamepadPowerInfo(gamepad : Gamepad*, percent : LibC::Int*) : PowerState
  fun gamepad_connected = SDL_GamepadConnected(gamepad : Gamepad*) : LibC::Char
  fun get_gamepad_joystick = SDL_GetGamepadJoystick(gamepad : Gamepad*) : Joystick*
  fun set_gamepad_events_enabled = SDL_SetGamepadEventsEnabled(enabled : LibC::Char) : Void
  fun gamepad_events_enabled = SDL_GamepadEventsEnabled() : LibC::Char
  fun get_gamepad_bindings = SDL_GetGamepadBindings(gamepad : Gamepad*, count : LibC::Int*) : GamepadBinding**
  fun update_gamepads = SDL_UpdateGamepads() : Void
  fun get_gamepad_type_from_string = SDL_GetGamepadTypeFromString(str : LibC::Char*) : GamepadType
  fun get_gamepad_string_for_type = SDL_GetGamepadStringForType(type : GamepadType) : LibC::Char*
  fun get_gamepad_axis_from_string = SDL_GetGamepadAxisFromString(str : LibC::Char*) : GamepadAxis
  fun get_gamepad_string_for_axis = SDL_GetGamepadStringForAxis(axis : GamepadAxis) : LibC::Char*
  fun gamepad_has_axis = SDL_GamepadHasAxis(gamepad : Gamepad*, axis : GamepadAxis) : LibC::Char
  fun get_gamepad_axis = SDL_GetGamepadAxis(gamepad : Gamepad*, axis : GamepadAxis) : Int16
  fun get_gamepad_button_from_string = SDL_GetGamepadButtonFromString(str : LibC::Char*) : GamepadButton
  fun get_gamepad_string_for_button = SDL_GetGamepadStringForButton(button : GamepadButton) : LibC::Char*
  fun gamepad_has_button = SDL_GamepadHasButton(gamepad : Gamepad*, button : GamepadButton) : LibC::Char
  fun get_gamepad_button = SDL_GetGamepadButton(gamepad : Gamepad*, button : GamepadButton) : LibC::Char
  fun get_gamepad_button_label_for_type = SDL_GetGamepadButtonLabelForType(type : GamepadType, button : GamepadButton) : GamepadButtonLabel
  fun get_gamepad_button_label = SDL_GetGamepadButtonLabel(gamepad : Gamepad*, button : GamepadButton) : GamepadButtonLabel
  fun get_num_gamepad_touchpads = SDL_GetNumGamepadTouchpads(gamepad : Gamepad*) : LibC::Int
  fun get_num_gamepad_touchpad_fingers = SDL_GetNumGamepadTouchpadFingers(gamepad : Gamepad*, touchpad : LibC::Int) : LibC::Int
  fun get_gamepad_touchpad_finger = SDL_GetGamepadTouchpadFinger(gamepad : Gamepad*, touchpad : LibC::Int, finger : LibC::Int, down : LibC::Char*, x : LibC::Float*, y : LibC::Float*, pressure : LibC::Float*) : LibC::Char
  fun gamepad_has_sensor = SDL_GamepadHasSensor(gamepad : Gamepad*, type : SensorType) : LibC::Char
  fun set_gamepad_sensor_enabled = SDL_SetGamepadSensorEnabled(gamepad : Gamepad*, type : SensorType, enabled : LibC::Char) : LibC::Char
  fun gamepad_sensor_enabled = SDL_GamepadSensorEnabled(gamepad : Gamepad*, type : SensorType) : LibC::Char
  fun get_gamepad_sensor_data_rate = SDL_GetGamepadSensorDataRate(gamepad : Gamepad*, type : SensorType) : LibC::Float
  fun get_gamepad_sensor_data = SDL_GetGamepadSensorData(gamepad : Gamepad*, type : SensorType, data : LibC::Float*, num_values : LibC::Int) : LibC::Char
  fun rumble_gamepad = SDL_RumbleGamepad(gamepad : Gamepad*, low_frequency_rumble : UInt16, high_frequency_rumble : UInt16, duration_ms : UInt32) : LibC::Char
  fun rumble_gamepad_triggers = SDL_RumbleGamepadTriggers(gamepad : Gamepad*, left_rumble : UInt16, right_rumble : UInt16, duration_ms : UInt32) : LibC::Char
  fun set_gamepad_led = SDL_SetGamepadLED(gamepad : Gamepad*, red : UInt8, green : UInt8, blue : UInt8) : LibC::Char
  fun send_gamepad_effect = SDL_SendGamepadEffect(gamepad : Gamepad*, data : Void*, size : LibC::Int) : LibC::Char
  fun close_gamepad = SDL_CloseGamepad(gamepad : Gamepad*) : Void
  fun get_gamepad_apple_sfsymbols_name_for_button = SDL_GetGamepadAppleSFSymbolsNameForButton(gamepad : Gamepad*, button : GamepadButton) : LibC::Char*
  fun get_gamepad_apple_sfsymbols_name_for_axis = SDL_GetGamepadAppleSFSymbolsNameForAxis(gamepad : Gamepad*, axis : GamepadAxis) : LibC::Char*

  # SDL_gpu

  GPU_TEXTUREUSAGE_SAMPLER = (1 << 0)
  GPU_TEXTUREUSAGE_COLOR_TARGET = (1 << 1)
  GPU_TEXTUREUSAGE_DEPTH_STENCIL_TARGET = (1 << 2)
  GPU_TEXTUREUSAGE_GRAPHICS_STORAGE_READ = (1 << 3)
  GPU_TEXTUREUSAGE_COMPUTE_STORAGE_READ = (1 << 4)
  GPU_TEXTUREUSAGE_COMPUTE_STORAGE_WRITE = (1 << 5)
  GPU_TEXTUREUSAGE_COMPUTE_STORAGE_SIMULTANEOUS_READ_WRITE = (1 << 6)
  GPU_BUFFERUSAGE_VERTEX = (1 << 0)
  GPU_BUFFERUSAGE_INDEX = (1 << 1)
  GPU_BUFFERUSAGE_INDIRECT = (1 << 2)
  GPU_BUFFERUSAGE_GRAPHICS_STORAGE_READ = (1 << 3)
  GPU_BUFFERUSAGE_COMPUTE_STORAGE_READ = (1 << 4)
  GPU_BUFFERUSAGE_COMPUTE_STORAGE_WRITE = (1 << 5)
  GPU_SHADERFORMAT_INVALID = 0
  GPU_SHADERFORMAT_PRIVATE = (1 << 0)
  GPU_SHADERFORMAT_SPIRV = (1 << 1)
  GPU_SHADERFORMAT_DXBC = (1 << 2)
  GPU_SHADERFORMAT_DXIL = (1 << 3)
  GPU_SHADERFORMAT_MSL = (1 << 4)
  GPU_SHADERFORMAT_METALLIB = (1 << 5)
  GPU_COLORCOMPONENT_R = (1 << 0)
  GPU_COLORCOMPONENT_G = (1 << 1)
  GPU_COLORCOMPONENT_B = (1 << 2)
  GPU_COLORCOMPONENT_A = (1 << 3)
  PROP_GPU_DEVICE_CREATE_DEBUGMODE_BOOLEAN = "SDL.gpu.device.create.debugmode"
  PROP_GPU_DEVICE_CREATE_PREFERLOWPOWER_BOOLEAN = "SDL.gpu.device.create.preferlowpower"
  PROP_GPU_DEVICE_CREATE_NAME_STRING = "SDL.gpu.device.create.name"
  PROP_GPU_DEVICE_CREATE_SHADERS_PRIVATE_BOOLEAN = "SDL.gpu.device.create.shaders.private"
  PROP_GPU_DEVICE_CREATE_SHADERS_SPIRV_BOOLEAN = "SDL.gpu.device.create.shaders.spirv"
  PROP_GPU_DEVICE_CREATE_SHADERS_DXBC_BOOLEAN = "SDL.gpu.device.create.shaders.dxbc"
  PROP_GPU_DEVICE_CREATE_SHADERS_DXIL_BOOLEAN = "SDL.gpu.device.create.shaders.dxil"
  PROP_GPU_DEVICE_CREATE_SHADERS_MSL_BOOLEAN = "SDL.gpu.device.create.shaders.msl"
  PROP_GPU_DEVICE_CREATE_SHADERS_METALLIB_BOOLEAN = "SDL.gpu.device.create.shaders.metallib"
  PROP_GPU_DEVICE_CREATE_D3D12_SEMANTIC_NAME_STRING = "SDL.gpu.device.create.d3d12.semantic"
  PROP_GPU_CREATETEXTURE_D3D12_CLEAR_R_FLOAT = "SDL.gpu.createtexture.d3d12.clear.r"
  PROP_GPU_CREATETEXTURE_D3D12_CLEAR_G_FLOAT = "SDL.gpu.createtexture.d3d12.clear.g"
  PROP_GPU_CREATETEXTURE_D3D12_CLEAR_B_FLOAT = "SDL.gpu.createtexture.d3d12.clear.b"
  PROP_GPU_CREATETEXTURE_D3D12_CLEAR_A_FLOAT = "SDL.gpu.createtexture.d3d12.clear.a"
  PROP_GPU_CREATETEXTURE_D3D12_CLEAR_DEPTH_FLOAT = "SDL.gpu.createtexture.d3d12.clear.depth"
  PROP_GPU_CREATETEXTURE_D3D12_CLEAR_STENCIL_UINT8 = "SDL.gpu.createtexture.d3d12.clear.stencil"

  alias GPUDevice = Void
  alias GPUBuffer = Void
  alias GPUTransferBuffer = Void
  alias GPUTexture = Void
  alias GPUSampler = Void
  alias GPUShader = Void
  alias GPUComputePipeline = Void
  alias GPUGraphicsPipeline = Void
  alias GPUCommandBuffer = Void
  alias GPURenderPass = Void
  alias GPUComputePass = Void
  alias GPUCopyPass = Void
  alias GPUFence = Void
  alias GPUTextureUsageFlags = UInt32
  alias GPUBufferUsageFlags = UInt32
  alias GPUShaderFormat = UInt32
  alias GPUColorComponentFlags = UInt8

  enum GPUPrimitiveType
    GPU_PRIMITIVETYPE_TRIANGLELIST
    GPU_PRIMITIVETYPE_TRIANGLESTRIP
    GPU_PRIMITIVETYPE_LINELIST
    GPU_PRIMITIVETYPE_LINESTRIP
    GPU_PRIMITIVETYPE_POINTLIST
  end

  enum GPULoadOp
    GPU_LOADOP_LOAD
    GPU_LOADOP_CLEAR
    GPU_LOADOP_DONT_CARE
  end

  enum GPUStoreOp
    GPU_STOREOP_STORE
    GPU_STOREOP_DONT_CARE
    GPU_STOREOP_RESOLVE
    GPU_STOREOP_RESOLVE_AND_STORE
  end

  enum GPUIndexElementSize
    GPU_INDEXELEMENTSIZE_16BIT
    GPU_INDEXELEMENTSIZE_32BIT
  end

  enum GPUTextureFormat
    GPU_TEXTUREFORMAT_INVALID
    GPU_TEXTUREFORMAT_A8_UNORM
    GPU_TEXTUREFORMAT_R8_UNORM
    GPU_TEXTUREFORMAT_R8G8_UNORM
    GPU_TEXTUREFORMAT_R8G8B8A8_UNORM
    GPU_TEXTUREFORMAT_R16_UNORM
    GPU_TEXTUREFORMAT_R16G16_UNORM
    GPU_TEXTUREFORMAT_R16G16B16A16_UNORM
    GPU_TEXTUREFORMAT_R10G10B10A2_UNORM
    GPU_TEXTUREFORMAT_B5G6R5_UNORM
    GPU_TEXTUREFORMAT_B5G5R5A1_UNORM
    GPU_TEXTUREFORMAT_B4G4R4A4_UNORM
    GPU_TEXTUREFORMAT_B8G8R8A8_UNORM
    GPU_TEXTUREFORMAT_BC1_RGBA_UNORM
    GPU_TEXTUREFORMAT_BC2_RGBA_UNORM
    GPU_TEXTUREFORMAT_BC3_RGBA_UNORM
    GPU_TEXTUREFORMAT_BC4_R_UNORM
    GPU_TEXTUREFORMAT_BC5_RG_UNORM
    GPU_TEXTUREFORMAT_BC7_RGBA_UNORM
    GPU_TEXTUREFORMAT_BC6H_RGB_FLOAT
    GPU_TEXTUREFORMAT_BC6H_RGB_UFLOAT
    GPU_TEXTUREFORMAT_R8_SNORM
    GPU_TEXTUREFORMAT_R8G8_SNORM
    GPU_TEXTUREFORMAT_R8G8B8A8_SNORM
    GPU_TEXTUREFORMAT_R16_SNORM
    GPU_TEXTUREFORMAT_R16G16_SNORM
    GPU_TEXTUREFORMAT_R16G16B16A16_SNORM
    GPU_TEXTUREFORMAT_R16_FLOAT
    GPU_TEXTUREFORMAT_R16G16_FLOAT
    GPU_TEXTUREFORMAT_R16G16B16A16_FLOAT
    GPU_TEXTUREFORMAT_R32_FLOAT
    GPU_TEXTUREFORMAT_R32G32_FLOAT
    GPU_TEXTUREFORMAT_R32G32B32A32_FLOAT
    GPU_TEXTUREFORMAT_R11G11B10_UFLOAT
    GPU_TEXTUREFORMAT_R8_UINT
    GPU_TEXTUREFORMAT_R8G8_UINT
    GPU_TEXTUREFORMAT_R8G8B8A8_UINT
    GPU_TEXTUREFORMAT_R16_UINT
    GPU_TEXTUREFORMAT_R16G16_UINT
    GPU_TEXTUREFORMAT_R16G16B16A16_UINT
    GPU_TEXTUREFORMAT_R32_UINT
    GPU_TEXTUREFORMAT_R32G32_UINT
    GPU_TEXTUREFORMAT_R32G32B32A32_UINT
    GPU_TEXTUREFORMAT_R8_INT
    GPU_TEXTUREFORMAT_R8G8_INT
    GPU_TEXTUREFORMAT_R8G8B8A8_INT
    GPU_TEXTUREFORMAT_R16_INT
    GPU_TEXTUREFORMAT_R16G16_INT
    GPU_TEXTUREFORMAT_R16G16B16A16_INT
    GPU_TEXTUREFORMAT_R32_INT
    GPU_TEXTUREFORMAT_R32G32_INT
    GPU_TEXTUREFORMAT_R32G32B32A32_INT
    GPU_TEXTUREFORMAT_R8G8B8A8_UNORM_SRGB
    GPU_TEXTUREFORMAT_B8G8R8A8_UNORM_SRGB
    GPU_TEXTUREFORMAT_BC1_RGBA_UNORM_SRGB
    GPU_TEXTUREFORMAT_BC2_RGBA_UNORM_SRGB
    GPU_TEXTUREFORMAT_BC3_RGBA_UNORM_SRGB
    GPU_TEXTUREFORMAT_BC7_RGBA_UNORM_SRGB
    GPU_TEXTUREFORMAT_D16_UNORM
    GPU_TEXTUREFORMAT_D24_UNORM
    GPU_TEXTUREFORMAT_D32_FLOAT
    GPU_TEXTUREFORMAT_D24_UNORM_S8_UINT
    GPU_TEXTUREFORMAT_D32_FLOAT_S8_UINT
    GPU_TEXTUREFORMAT_ASTC_4X4_UNORM
    GPU_TEXTUREFORMAT_ASTC_5X4_UNORM
    GPU_TEXTUREFORMAT_ASTC_5X5_UNORM
    GPU_TEXTUREFORMAT_ASTC_6X5_UNORM
    GPU_TEXTUREFORMAT_ASTC_6X6_UNORM
    GPU_TEXTUREFORMAT_ASTC_8X5_UNORM
    GPU_TEXTUREFORMAT_ASTC_8X6_UNORM
    GPU_TEXTUREFORMAT_ASTC_8X8_UNORM
    GPU_TEXTUREFORMAT_ASTC_10X5_UNORM
    GPU_TEXTUREFORMAT_ASTC_10X6_UNORM
    GPU_TEXTUREFORMAT_ASTC_10X8_UNORM
    GPU_TEXTUREFORMAT_ASTC_10X10_UNORM
    GPU_TEXTUREFORMAT_ASTC_12X10_UNORM
    GPU_TEXTUREFORMAT_ASTC_12X12_UNORM
    GPU_TEXTUREFORMAT_ASTC_4X4_UNORM_SRGB
    GPU_TEXTUREFORMAT_ASTC_5X4_UNORM_SRGB
    GPU_TEXTUREFORMAT_ASTC_5X5_UNORM_SRGB
    GPU_TEXTUREFORMAT_ASTC_6X5_UNORM_SRGB
    GPU_TEXTUREFORMAT_ASTC_6X6_UNORM_SRGB
    GPU_TEXTUREFORMAT_ASTC_8X5_UNORM_SRGB
    GPU_TEXTUREFORMAT_ASTC_8X6_UNORM_SRGB
    GPU_TEXTUREFORMAT_ASTC_8X8_UNORM_SRGB
    GPU_TEXTUREFORMAT_ASTC_10X5_UNORM_SRGB
    GPU_TEXTUREFORMAT_ASTC_10X6_UNORM_SRGB
    GPU_TEXTUREFORMAT_ASTC_10X8_UNORM_SRGB
    GPU_TEXTUREFORMAT_ASTC_10X10_UNORM_SRGB
    GPU_TEXTUREFORMAT_ASTC_12X10_UNORM_SRGB
    GPU_TEXTUREFORMAT_ASTC_12X12_UNORM_SRGB
    GPU_TEXTUREFORMAT_ASTC_4X4_FLOAT
    GPU_TEXTUREFORMAT_ASTC_5X4_FLOAT
    GPU_TEXTUREFORMAT_ASTC_5X5_FLOAT
    GPU_TEXTUREFORMAT_ASTC_6X5_FLOAT
    GPU_TEXTUREFORMAT_ASTC_6X6_FLOAT
    GPU_TEXTUREFORMAT_ASTC_8X5_FLOAT
    GPU_TEXTUREFORMAT_ASTC_8X6_FLOAT
    GPU_TEXTUREFORMAT_ASTC_8X8_FLOAT
    GPU_TEXTUREFORMAT_ASTC_10X5_FLOAT
    GPU_TEXTUREFORMAT_ASTC_10X6_FLOAT
    GPU_TEXTUREFORMAT_ASTC_10X8_FLOAT
    GPU_TEXTUREFORMAT_ASTC_10X10_FLOAT
    GPU_TEXTUREFORMAT_ASTC_12X10_FLOAT
    GPU_TEXTUREFORMAT_ASTC_12X12_FLOAT
  end

  enum GPUTextureType
    GPU_TEXTURETYPE_2D
    GPU_TEXTURETYPE_2D_ARRAY
    GPU_TEXTURETYPE_3D
    GPU_TEXTURETYPE_CUBE
    GPU_TEXTURETYPE_CUBE_ARRAY
  end

  enum GPUSampleCount
    GPU_SAMPLECOUNT_1
    GPU_SAMPLECOUNT_2
    GPU_SAMPLECOUNT_4
    GPU_SAMPLECOUNT_8
  end

  enum GPUCubeMapFace
    GPU_CUBEMAPFACE_POSITIVEX
    GPU_CUBEMAPFACE_NEGATIVEX
    GPU_CUBEMAPFACE_POSITIVEY
    GPU_CUBEMAPFACE_NEGATIVEY
    GPU_CUBEMAPFACE_POSITIVEZ
    GPU_CUBEMAPFACE_NEGATIVEZ
  end

  enum GPUTransferBufferUsage
    GPU_TRANSFERBUFFERUSAGE_UPLOAD
    GPU_TRANSFERBUFFERUSAGE_DOWNLOAD
  end

  enum GPUShaderStage
    GPU_SHADERSTAGE_VERTEX
    GPU_SHADERSTAGE_FRAGMENT
  end

  enum GPUVertexElementFormat
    GPU_VERTEXELEMENTFORMAT_INVALID
    GPU_VERTEXELEMENTFORMAT_INT
    GPU_VERTEXELEMENTFORMAT_INT2
    GPU_VERTEXELEMENTFORMAT_INT3
    GPU_VERTEXELEMENTFORMAT_INT4
    GPU_VERTEXELEMENTFORMAT_UINT
    GPU_VERTEXELEMENTFORMAT_UINT2
    GPU_VERTEXELEMENTFORMAT_UINT3
    GPU_VERTEXELEMENTFORMAT_UINT4
    GPU_VERTEXELEMENTFORMAT_FLOAT
    GPU_VERTEXELEMENTFORMAT_FLOAT2
    GPU_VERTEXELEMENTFORMAT_FLOAT3
    GPU_VERTEXELEMENTFORMAT_FLOAT4
    GPU_VERTEXELEMENTFORMAT_BYTE2
    GPU_VERTEXELEMENTFORMAT_BYTE4
    GPU_VERTEXELEMENTFORMAT_UBYTE2
    GPU_VERTEXELEMENTFORMAT_UBYTE4
    GPU_VERTEXELEMENTFORMAT_BYTE2_NORM
    GPU_VERTEXELEMENTFORMAT_BYTE4_NORM
    GPU_VERTEXELEMENTFORMAT_UBYTE2_NORM
    GPU_VERTEXELEMENTFORMAT_UBYTE4_NORM
    GPU_VERTEXELEMENTFORMAT_SHORT2
    GPU_VERTEXELEMENTFORMAT_SHORT4
    GPU_VERTEXELEMENTFORMAT_USHORT2
    GPU_VERTEXELEMENTFORMAT_USHORT4
    GPU_VERTEXELEMENTFORMAT_SHORT2_NORM
    GPU_VERTEXELEMENTFORMAT_SHORT4_NORM
    GPU_VERTEXELEMENTFORMAT_USHORT2_NORM
    GPU_VERTEXELEMENTFORMAT_USHORT4_NORM
    GPU_VERTEXELEMENTFORMAT_HALF2
    GPU_VERTEXELEMENTFORMAT_HALF4
  end

  enum GPUVertexInputRate
    GPU_VERTEXINPUTRATE_VERTEX
    GPU_VERTEXINPUTRATE_INSTANCE
  end

  enum GPUFillMode
    GPU_FILLMODE_FILL
    GPU_FILLMODE_LINE
  end

  enum GPUCullMode
    GPU_CULLMODE_NONE
    GPU_CULLMODE_FRONT
    GPU_CULLMODE_BACK
  end

  enum GPUFrontFace
    GPU_FRONTFACE_COUNTER_CLOCKWISE
    GPU_FRONTFACE_CLOCKWISE
  end

  enum GPUCompareOp
    GPU_COMPAREOP_INVALID
    GPU_COMPAREOP_NEVER
    GPU_COMPAREOP_LESS
    GPU_COMPAREOP_EQUAL
    GPU_COMPAREOP_LESS_OR_EQUAL
    GPU_COMPAREOP_GREATER
    GPU_COMPAREOP_NOT_EQUAL
    GPU_COMPAREOP_GREATER_OR_EQUAL
    GPU_COMPAREOP_ALWAYS
  end

  enum GPUStencilOp
    GPU_STENCILOP_INVALID
    GPU_STENCILOP_KEEP
    GPU_STENCILOP_ZERO
    GPU_STENCILOP_REPLACE
    GPU_STENCILOP_INCREMENT_AND_CLAMP
    GPU_STENCILOP_DECREMENT_AND_CLAMP
    GPU_STENCILOP_INVERT
    GPU_STENCILOP_INCREMENT_AND_WRAP
    GPU_STENCILOP_DECREMENT_AND_WRAP
  end

  enum GPUBlendOp
    GPU_BLENDOP_INVALID
    GPU_BLENDOP_ADD
    GPU_BLENDOP_SUBTRACT
    GPU_BLENDOP_REVERSE_SUBTRACT
    GPU_BLENDOP_MIN
    GPU_BLENDOP_MAX
  end

  enum GPUBlendFactor
    GPU_BLENDFACTOR_INVALID
    GPU_BLENDFACTOR_ZERO
    GPU_BLENDFACTOR_ONE
    GPU_BLENDFACTOR_SRC_COLOR
    GPU_BLENDFACTOR_ONE_MINUS_SRC_COLOR
    GPU_BLENDFACTOR_DST_COLOR
    GPU_BLENDFACTOR_ONE_MINUS_DST_COLOR
    GPU_BLENDFACTOR_SRC_ALPHA
    GPU_BLENDFACTOR_ONE_MINUS_SRC_ALPHA
    GPU_BLENDFACTOR_DST_ALPHA
    GPU_BLENDFACTOR_ONE_MINUS_DST_ALPHA
    GPU_BLENDFACTOR_CONSTANT_COLOR
    GPU_BLENDFACTOR_ONE_MINUS_CONSTANT_COLOR
    GPU_BLENDFACTOR_SRC_ALPHA_SATURATE
  end

  enum GPUFilter
    GPU_FILTER_NEAREST
    GPU_FILTER_LINEAR
  end

  enum GPUSamplerMipmapMode
    GPU_SAMPLERMIPMAPMODE_NEAREST
    GPU_SAMPLERMIPMAPMODE_LINEAR
  end

  enum GPUSamplerAddressMode
    GPU_SAMPLERADDRESSMODE_REPEAT
    GPU_SAMPLERADDRESSMODE_MIRRORED_REPEAT
    GPU_SAMPLERADDRESSMODE_CLAMP_TO_EDGE
  end

  enum GPUPresentMode
    GPU_PRESENTMODE_VSYNC
    GPU_PRESENTMODE_IMMEDIATE
    GPU_PRESENTMODE_MAILBOX
  end

  enum GPUSwapchainComposition
    GPU_SWAPCHAINCOMPOSITION_SDR
    GPU_SWAPCHAINCOMPOSITION_SDR_LINEAR
    GPU_SWAPCHAINCOMPOSITION_HDR_EXTENDED_LINEAR
    GPU_SWAPCHAINCOMPOSITION_HDR10_ST2084
  end

  struct GPUViewport
    x : LibC::Float
    y : LibC::Float
    w : LibC::Float
    h : LibC::Float
    min_depth : LibC::Float
    max_depth : LibC::Float
  end

  struct GPUTextureTransferInfo
    transfer_buffer : GPUTransferBuffer*
    offset : UInt32
    pixels_per_row : UInt32
    rows_per_layer : UInt32
  end

  struct GPUTransferBufferLocation
    transfer_buffer : GPUTransferBuffer*
    offset : UInt32
  end

  struct GPUTextureLocation
    texture : GPUTexture*
    mip_level : UInt32
    layer : UInt32
    x : UInt32
    y : UInt32
    z : UInt32
  end

  struct GPUTextureRegion
    texture : GPUTexture*
    mip_level : UInt32
    layer : UInt32
    x : UInt32
    y : UInt32
    z : UInt32
    w : UInt32
    h : UInt32
    d : UInt32
  end

  struct GPUBlitRegion
    texture : GPUTexture*
    mip_level : UInt32
    layer_or_depth_plane : UInt32
    x : UInt32
    y : UInt32
    w : UInt32
    h : UInt32
  end

  struct GPUBufferLocation
    buffer : GPUBuffer*
    offset : UInt32
  end

  struct GPUBufferRegion
    buffer : GPUBuffer*
    offset : UInt32
    size : UInt32
  end

  struct GPUIndirectDrawCommand
    num_vertices : UInt32
    num_instances : UInt32
    first_vertex : UInt32
    first_instance : UInt32
  end

  struct GPUIndexedIndirectDrawCommand
    num_indices : UInt32
    num_instances : UInt32
    first_index : UInt32
    vertex_offset : Int32
    first_instance : UInt32
  end

  struct GPUIndirectDispatchCommand
    groupcount_x : UInt32
    groupcount_y : UInt32
    groupcount_z : UInt32
  end

  struct GPUSamplerCreateInfo
    min_filter : GPUFilter
    mag_filter : GPUFilter
    mipmap_mode : GPUSamplerMipmapMode
    address_mode_u : GPUSamplerAddressMode
    address_mode_v : GPUSamplerAddressMode
    address_mode_w : GPUSamplerAddressMode
    mip_lod_bias : LibC::Float
    max_anisotropy : LibC::Float
    compare_op : GPUCompareOp
    min_lod : LibC::Float
    max_lod : LibC::Float
    enable_anisotropy : LibC::Char
    enable_compare : LibC::Char
    padding1 : UInt8
    padding2 : UInt8
    props : PropertiesID
  end

  struct GPUVertexBufferDescription
    slot : UInt32
    pitch : UInt32
    input_rate : GPUVertexInputRate
    instance_step_rate : UInt32
  end

  struct GPUVertexAttribute
    location : UInt32
    buffer_slot : UInt32
    format : GPUVertexElementFormat
    offset : UInt32
  end

  struct GPUVertexInputState
    vertex_buffer_descriptions : GPUVertexBufferDescription*
    num_vertex_buffers : UInt32
    vertex_attributes : GPUVertexAttribute*
    num_vertex_attributes : UInt32
  end

  struct GPUStencilOpState
    fail_op : GPUStencilOp
    pass_op : GPUStencilOp
    depth_fail_op : GPUStencilOp
    compare_op : GPUCompareOp
  end

  struct GPUColorTargetBlendState
    src_color_blendfactor : GPUBlendFactor
    dst_color_blendfactor : GPUBlendFactor
    color_blend_op : GPUBlendOp
    src_alpha_blendfactor : GPUBlendFactor
    dst_alpha_blendfactor : GPUBlendFactor
    alpha_blend_op : GPUBlendOp
    color_write_mask : GPUColorComponentFlags
    enable_blend : LibC::Char
    enable_color_write_mask : LibC::Char
    padding1 : UInt8
    padding2 : UInt8
  end

  struct GPUShaderCreateInfo
    code_size : LibC::SizeT
    code : UInt8*
    entrypoint : LibC::Char*
    format : GPUShaderFormat
    stage : GPUShaderStage
    num_samplers : UInt32
    num_storage_textures : UInt32
    num_storage_buffers : UInt32
    num_uniform_buffers : UInt32
    props : PropertiesID
  end

  struct GPUTextureCreateInfo
    type : GPUTextureType
    format : GPUTextureFormat
    usage : GPUTextureUsageFlags
    width : UInt32
    height : UInt32
    layer_count_or_depth : UInt32
    num_levels : UInt32
    sample_count : GPUSampleCount
    props : PropertiesID
  end

  struct GPUBufferCreateInfo
    usage : GPUBufferUsageFlags
    size : UInt32
    props : PropertiesID
  end

  struct GPUTransferBufferCreateInfo
    usage : GPUTransferBufferUsage
    size : UInt32
    props : PropertiesID
  end

  struct GPURasterizerState
    fill_mode : GPUFillMode
    cull_mode : GPUCullMode
    front_face : GPUFrontFace
    depth_bias_constant_factor : LibC::Float
    depth_bias_clamp : LibC::Float
    depth_bias_slope_factor : LibC::Float
    enable_depth_bias : LibC::Char
    enable_depth_clip : LibC::Char
    padding1 : UInt8
    padding2 : UInt8
  end

  struct GPUMultisampleState
    sample_count : GPUSampleCount
    sample_mask : UInt32
    enable_mask : LibC::Char
    padding1 : UInt8
    padding2 : UInt8
    padding3 : UInt8
  end

  struct GPUDepthStencilState
    compare_op : GPUCompareOp
    back_stencil_state : GPUStencilOpState
    front_stencil_state : GPUStencilOpState
    compare_mask : UInt8
    write_mask : UInt8
    enable_depth_test : LibC::Char
    enable_depth_write : LibC::Char
    enable_stencil_test : LibC::Char
    padding1 : UInt8
    padding2 : UInt8
    padding3 : UInt8
  end

  struct GPUColorTargetDescription
    format : GPUTextureFormat
    blend_state : GPUColorTargetBlendState
  end

  struct GPUGraphicsPipelineTargetInfo
    color_target_descriptions : GPUColorTargetDescription*
    num_color_targets : UInt32
    depth_stencil_format : GPUTextureFormat
    has_depth_stencil_target : LibC::Char
    padding1 : UInt8
    padding2 : UInt8
    padding3 : UInt8
  end

  struct GPUGraphicsPipelineCreateInfo
    vertex_shader : GPUShader*
    fragment_shader : GPUShader*
    vertex_input_state : GPUVertexInputState
    primitive_type : GPUPrimitiveType
    rasterizer_state : GPURasterizerState
    multisample_state : GPUMultisampleState
    depth_stencil_state : GPUDepthStencilState
    target_info : GPUGraphicsPipelineTargetInfo
    props : PropertiesID
  end

  struct GPUComputePipelineCreateInfo
    code_size : LibC::SizeT
    code : UInt8*
    entrypoint : LibC::Char*
    format : GPUShaderFormat
    num_samplers : UInt32
    num_readonly_storage_textures : UInt32
    num_readonly_storage_buffers : UInt32
    num_readwrite_storage_textures : UInt32
    num_readwrite_storage_buffers : UInt32
    num_uniform_buffers : UInt32
    threadcount_x : UInt32
    threadcount_y : UInt32
    threadcount_z : UInt32
    props : PropertiesID
  end

  struct GPUColorTargetInfo
    texture : GPUTexture*
    mip_level : UInt32
    layer_or_depth_plane : UInt32
    clear_color : FColor
    load_op : GPULoadOp
    store_op : GPUStoreOp
    resolve_texture : GPUTexture*
    resolve_mip_level : UInt32
    resolve_layer : UInt32
    cycle : LibC::Char
    cycle_resolve_texture : LibC::Char
    padding1 : UInt8
    padding2 : UInt8
  end

  struct GPUDepthStencilTargetInfo
    texture : GPUTexture*
    clear_depth : LibC::Float
    load_op : GPULoadOp
    store_op : GPUStoreOp
    stencil_load_op : GPULoadOp
    stencil_store_op : GPUStoreOp
    cycle : LibC::Char
    clear_stencil : UInt8
    padding1 : UInt8
    padding2 : UInt8
  end

  struct GPUBlitInfo
    source : GPUBlitRegion
    destination : GPUBlitRegion
    load_op : GPULoadOp
    clear_color : FColor
    flip_mode : FlipMode
    filter : GPUFilter
    cycle : LibC::Char
    padding1 : UInt8
    padding2 : UInt8
    padding3 : UInt8
  end

  struct GPUBufferBinding
    buffer : GPUBuffer*
    offset : UInt32
  end

  struct GPUTextureSamplerBinding
    texture : GPUTexture*
    sampler : GPUSampler*
  end

  struct GPUStorageBufferReadWriteBinding
    buffer : GPUBuffer*
    cycle : LibC::Char
    padding1 : UInt8
    padding2 : UInt8
    padding3 : UInt8
  end

  struct GPUStorageTextureReadWriteBinding
    texture : GPUTexture*
    mip_level : UInt32
    layer : UInt32
    cycle : LibC::Char
    padding1 : UInt8
    padding2 : UInt8
    padding3 : UInt8
  end

  fun gpusupports_shader_formats = SDL_GPUSupportsShaderFormats(format_flags : GPUShaderFormat, name : LibC::Char*) : LibC::Char
  fun gpusupports_properties = SDL_GPUSupportsProperties(props : PropertiesID) : LibC::Char
  fun create_gpudevice = SDL_CreateGPUDevice(format_flags : GPUShaderFormat, debug_mode : LibC::Char, name : LibC::Char*) : GPUDevice*
  fun create_gpudevice_with_properties = SDL_CreateGPUDeviceWithProperties(props : PropertiesID) : GPUDevice*
  fun destroy_gpudevice = SDL_DestroyGPUDevice(device : GPUDevice*) : Void
  fun get_num_gpudrivers = SDL_GetNumGPUDrivers() : LibC::Int
  fun get_gpudriver = SDL_GetGPUDriver(index : LibC::Int) : LibC::Char*
  fun get_gpudevice_driver = SDL_GetGPUDeviceDriver(device : GPUDevice*) : LibC::Char*
  fun get_gpushader_formats = SDL_GetGPUShaderFormats(device : GPUDevice*) : GPUShaderFormat
  fun create_gpucompute_pipeline = SDL_CreateGPUComputePipeline(device : GPUDevice*, createinfo : GPUComputePipelineCreateInfo*) : GPUComputePipeline*
  fun create_gpugraphics_pipeline = SDL_CreateGPUGraphicsPipeline(device : GPUDevice*, createinfo : GPUGraphicsPipelineCreateInfo*) : GPUGraphicsPipeline*
  fun create_gpusampler = SDL_CreateGPUSampler(device : GPUDevice*, createinfo : GPUSamplerCreateInfo*) : GPUSampler*
  fun create_gpushader = SDL_CreateGPUShader(device : GPUDevice*, createinfo : GPUShaderCreateInfo*) : GPUShader*
  fun create_gputexture = SDL_CreateGPUTexture(device : GPUDevice*, createinfo : GPUTextureCreateInfo*) : GPUTexture*
  fun create_gpubuffer = SDL_CreateGPUBuffer(device : GPUDevice*, createinfo : GPUBufferCreateInfo*) : GPUBuffer*
  fun create_gputransfer_buffer = SDL_CreateGPUTransferBuffer(device : GPUDevice*, createinfo : GPUTransferBufferCreateInfo*) : GPUTransferBuffer*
  fun set_gpubuffer_name = SDL_SetGPUBufferName(device : GPUDevice*, buffer : GPUBuffer*, text : LibC::Char*) : Void
  fun set_gputexture_name = SDL_SetGPUTextureName(device : GPUDevice*, texture : GPUTexture*, text : LibC::Char*) : Void
  fun insert_gpudebug_label = SDL_InsertGPUDebugLabel(command_buffer : GPUCommandBuffer*, text : LibC::Char*) : Void
  fun push_gpudebug_group = SDL_PushGPUDebugGroup(command_buffer : GPUCommandBuffer*, name : LibC::Char*) : Void
  fun pop_gpudebug_group = SDL_PopGPUDebugGroup(command_buffer : GPUCommandBuffer*) : Void
  fun release_gputexture = SDL_ReleaseGPUTexture(device : GPUDevice*, texture : GPUTexture*) : Void
  fun release_gpusampler = SDL_ReleaseGPUSampler(device : GPUDevice*, sampler : GPUSampler*) : Void
  fun release_gpubuffer = SDL_ReleaseGPUBuffer(device : GPUDevice*, buffer : GPUBuffer*) : Void
  fun release_gputransfer_buffer = SDL_ReleaseGPUTransferBuffer(device : GPUDevice*, transfer_buffer : GPUTransferBuffer*) : Void
  fun release_gpucompute_pipeline = SDL_ReleaseGPUComputePipeline(device : GPUDevice*, compute_pipeline : GPUComputePipeline*) : Void
  fun release_gpushader = SDL_ReleaseGPUShader(device : GPUDevice*, shader : GPUShader*) : Void
  fun release_gpugraphics_pipeline = SDL_ReleaseGPUGraphicsPipeline(device : GPUDevice*, graphics_pipeline : GPUGraphicsPipeline*) : Void
  fun acquire_gpucommand_buffer = SDL_AcquireGPUCommandBuffer(device : GPUDevice*) : GPUCommandBuffer*
  fun push_gpuvertex_uniform_data = SDL_PushGPUVertexUniformData(command_buffer : GPUCommandBuffer*, slot_index : UInt32, data : Void*, length : UInt32) : Void
  fun push_gpufragment_uniform_data = SDL_PushGPUFragmentUniformData(command_buffer : GPUCommandBuffer*, slot_index : UInt32, data : Void*, length : UInt32) : Void
  fun push_gpucompute_uniform_data = SDL_PushGPUComputeUniformData(command_buffer : GPUCommandBuffer*, slot_index : UInt32, data : Void*, length : UInt32) : Void
  fun begin_gpurender_pass = SDL_BeginGPURenderPass(command_buffer : GPUCommandBuffer*, color_target_infos : GPUColorTargetInfo*, num_color_targets : UInt32, depth_stencil_target_info : GPUDepthStencilTargetInfo*) : GPURenderPass*
  fun bind_gpugraphics_pipeline = SDL_BindGPUGraphicsPipeline(render_pass : GPURenderPass*, graphics_pipeline : GPUGraphicsPipeline*) : Void
  fun set_gpuviewport = SDL_SetGPUViewport(render_pass : GPURenderPass*, viewport : GPUViewport*) : Void
  fun set_gpuscissor = SDL_SetGPUScissor(render_pass : GPURenderPass*, scissor : Rect*) : Void
  fun set_gpublend_constants = SDL_SetGPUBlendConstants(render_pass : GPURenderPass*, blend_constants : FColor) : Void
  fun set_gpustencil_reference = SDL_SetGPUStencilReference(render_pass : GPURenderPass*, reference : UInt8) : Void
  fun bind_gpuvertex_buffers = SDL_BindGPUVertexBuffers(render_pass : GPURenderPass*, first_slot : UInt32, bindings : GPUBufferBinding*, num_bindings : UInt32) : Void
  fun bind_gpuindex_buffer = SDL_BindGPUIndexBuffer(render_pass : GPURenderPass*, binding : GPUBufferBinding*, index_element_size : GPUIndexElementSize) : Void
  fun bind_gpuvertex_samplers = SDL_BindGPUVertexSamplers(render_pass : GPURenderPass*, first_slot : UInt32, texture_sampler_bindings : GPUTextureSamplerBinding*, num_bindings : UInt32) : Void
  fun bind_gpuvertex_storage_textures = SDL_BindGPUVertexStorageTextures(render_pass : GPURenderPass*, first_slot : UInt32, storage_textures : GPUTexture**, num_bindings : UInt32) : Void
  fun bind_gpuvertex_storage_buffers = SDL_BindGPUVertexStorageBuffers(render_pass : GPURenderPass*, first_slot : UInt32, storage_buffers : GPUBuffer**, num_bindings : UInt32) : Void
  fun bind_gpufragment_samplers = SDL_BindGPUFragmentSamplers(render_pass : GPURenderPass*, first_slot : UInt32, texture_sampler_bindings : GPUTextureSamplerBinding*, num_bindings : UInt32) : Void
  fun bind_gpufragment_storage_textures = SDL_BindGPUFragmentStorageTextures(render_pass : GPURenderPass*, first_slot : UInt32, storage_textures : GPUTexture**, num_bindings : UInt32) : Void
  fun bind_gpufragment_storage_buffers = SDL_BindGPUFragmentStorageBuffers(render_pass : GPURenderPass*, first_slot : UInt32, storage_buffers : GPUBuffer**, num_bindings : UInt32) : Void
  fun draw_gpuindexed_primitives = SDL_DrawGPUIndexedPrimitives(render_pass : GPURenderPass*, num_indices : UInt32, num_instances : UInt32, first_index : UInt32, vertex_offset : Int32, first_instance : UInt32) : Void
  fun draw_gpuprimitives = SDL_DrawGPUPrimitives(render_pass : GPURenderPass*, num_vertices : UInt32, num_instances : UInt32, first_vertex : UInt32, first_instance : UInt32) : Void
  fun draw_gpuprimitives_indirect = SDL_DrawGPUPrimitivesIndirect(render_pass : GPURenderPass*, buffer : GPUBuffer*, offset : UInt32, draw_count : UInt32) : Void
  fun draw_gpuindexed_primitives_indirect = SDL_DrawGPUIndexedPrimitivesIndirect(render_pass : GPURenderPass*, buffer : GPUBuffer*, offset : UInt32, draw_count : UInt32) : Void
  fun end_gpurender_pass = SDL_EndGPURenderPass(render_pass : GPURenderPass*) : Void
  fun begin_gpucompute_pass = SDL_BeginGPUComputePass(command_buffer : GPUCommandBuffer*, storage_texture_bindings : GPUStorageTextureReadWriteBinding*, num_storage_texture_bindings : UInt32, storage_buffer_bindings : GPUStorageBufferReadWriteBinding*, num_storage_buffer_bindings : UInt32) : GPUComputePass*
  fun bind_gpucompute_pipeline = SDL_BindGPUComputePipeline(compute_pass : GPUComputePass*, compute_pipeline : GPUComputePipeline*) : Void
  fun bind_gpucompute_samplers = SDL_BindGPUComputeSamplers(compute_pass : GPUComputePass*, first_slot : UInt32, texture_sampler_bindings : GPUTextureSamplerBinding*, num_bindings : UInt32) : Void
  fun bind_gpucompute_storage_textures = SDL_BindGPUComputeStorageTextures(compute_pass : GPUComputePass*, first_slot : UInt32, storage_textures : GPUTexture**, num_bindings : UInt32) : Void
  fun bind_gpucompute_storage_buffers = SDL_BindGPUComputeStorageBuffers(compute_pass : GPUComputePass*, first_slot : UInt32, storage_buffers : GPUBuffer**, num_bindings : UInt32) : Void
  fun dispatch_gpucompute = SDL_DispatchGPUCompute(compute_pass : GPUComputePass*, groupcount_x : UInt32, groupcount_y : UInt32, groupcount_z : UInt32) : Void
  fun dispatch_gpucompute_indirect = SDL_DispatchGPUComputeIndirect(compute_pass : GPUComputePass*, buffer : GPUBuffer*, offset : UInt32) : Void
  fun end_gpucompute_pass = SDL_EndGPUComputePass(compute_pass : GPUComputePass*) : Void
  fun map_gputransfer_buffer = SDL_MapGPUTransferBuffer(device : GPUDevice*, transfer_buffer : GPUTransferBuffer*, cycle : LibC::Char) : Void*
  fun unmap_gputransfer_buffer = SDL_UnmapGPUTransferBuffer(device : GPUDevice*, transfer_buffer : GPUTransferBuffer*) : Void
  fun begin_gpucopy_pass = SDL_BeginGPUCopyPass(command_buffer : GPUCommandBuffer*) : GPUCopyPass*
  fun upload_to_gputexture = SDL_UploadToGPUTexture(copy_pass : GPUCopyPass*, source : GPUTextureTransferInfo*, destination : GPUTextureRegion*, cycle : LibC::Char) : Void
  fun upload_to_gpubuffer = SDL_UploadToGPUBuffer(copy_pass : GPUCopyPass*, source : GPUTransferBufferLocation*, destination : GPUBufferRegion*, cycle : LibC::Char) : Void
  fun copy_gputexture_to_texture = SDL_CopyGPUTextureToTexture(copy_pass : GPUCopyPass*, source : GPUTextureLocation*, destination : GPUTextureLocation*, w : UInt32, h : UInt32, d : UInt32, cycle : LibC::Char) : Void
  fun copy_gpubuffer_to_buffer = SDL_CopyGPUBufferToBuffer(copy_pass : GPUCopyPass*, source : GPUBufferLocation*, destination : GPUBufferLocation*, size : UInt32, cycle : LibC::Char) : Void
  fun download_from_gputexture = SDL_DownloadFromGPUTexture(copy_pass : GPUCopyPass*, source : GPUTextureRegion*, destination : GPUTextureTransferInfo*) : Void
  fun download_from_gpubuffer = SDL_DownloadFromGPUBuffer(copy_pass : GPUCopyPass*, source : GPUBufferRegion*, destination : GPUTransferBufferLocation*) : Void
  fun end_gpucopy_pass = SDL_EndGPUCopyPass(copy_pass : GPUCopyPass*) : Void
  fun generate_mipmaps_for_gputexture = SDL_GenerateMipmapsForGPUTexture(command_buffer : GPUCommandBuffer*, texture : GPUTexture*) : Void
  fun blit_gputexture = SDL_BlitGPUTexture(command_buffer : GPUCommandBuffer*, info : GPUBlitInfo*) : Void
  fun window_supports_gpuswapchain_composition = SDL_WindowSupportsGPUSwapchainComposition(device : GPUDevice*, window : Window*, swapchain_composition : GPUSwapchainComposition) : LibC::Char
  fun window_supports_gpupresent_mode = SDL_WindowSupportsGPUPresentMode(device : GPUDevice*, window : Window*, present_mode : GPUPresentMode) : LibC::Char
  fun claim_window_for_gpudevice = SDL_ClaimWindowForGPUDevice(device : GPUDevice*, window : Window*) : LibC::Char
  fun release_window_from_gpudevice = SDL_ReleaseWindowFromGPUDevice(device : GPUDevice*, window : Window*) : Void
  fun set_gpuswapchain_parameters = SDL_SetGPUSwapchainParameters(device : GPUDevice*, window : Window*, swapchain_composition : GPUSwapchainComposition, present_mode : GPUPresentMode) : LibC::Char
  fun set_gpuallowed_frames_in_flight = SDL_SetGPUAllowedFramesInFlight(device : GPUDevice*, allowed_frames_in_flight : UInt32) : LibC::Char
  fun get_gpuswapchain_texture_format = SDL_GetGPUSwapchainTextureFormat(device : GPUDevice*, window : Window*) : GPUTextureFormat
  fun acquire_gpuswapchain_texture = SDL_AcquireGPUSwapchainTexture(command_buffer : GPUCommandBuffer*, window : Window*, swapchain_texture : GPUTexture**, swapchain_texture_width : UInt32*, swapchain_texture_height : UInt32*) : LibC::Char
  fun wait_for_gpuswapchain = SDL_WaitForGPUSwapchain(device : GPUDevice*, window : Window*) : LibC::Char
  fun wait_and_acquire_gpuswapchain_texture = SDL_WaitAndAcquireGPUSwapchainTexture(command_buffer : GPUCommandBuffer*, window : Window*, swapchain_texture : GPUTexture**, swapchain_texture_width : UInt32*, swapchain_texture_height : UInt32*) : LibC::Char
  fun submit_gpucommand_buffer = SDL_SubmitGPUCommandBuffer(command_buffer : GPUCommandBuffer*) : LibC::Char
  fun submit_gpucommand_buffer_and_acquire_fence = SDL_SubmitGPUCommandBufferAndAcquireFence(command_buffer : GPUCommandBuffer*) : GPUFence*
  fun cancel_gpucommand_buffer = SDL_CancelGPUCommandBuffer(command_buffer : GPUCommandBuffer*) : LibC::Char
  fun wait_for_gpuidle = SDL_WaitForGPUIdle(device : GPUDevice*) : LibC::Char
  fun wait_for_gpufences = SDL_WaitForGPUFences(device : GPUDevice*, wait_all : LibC::Char, fences : GPUFence**, num_fences : UInt32) : LibC::Char
  fun query_gpufence = SDL_QueryGPUFence(device : GPUDevice*, fence : GPUFence*) : LibC::Char
  fun release_gpufence = SDL_ReleaseGPUFence(device : GPUDevice*, fence : GPUFence*) : Void
  fun gputexture_format_texel_block_size = SDL_GPUTextureFormatTexelBlockSize(format : GPUTextureFormat) : UInt32
  fun gputexture_supports_format = SDL_GPUTextureSupportsFormat(device : GPUDevice*, format : GPUTextureFormat, type : GPUTextureType, usage : GPUTextureUsageFlags) : LibC::Char
  fun gputexture_supports_sample_count = SDL_GPUTextureSupportsSampleCount(device : GPUDevice*, format : GPUTextureFormat, sample_count : GPUSampleCount) : LibC::Char
  fun calculate_gputexture_format_size = SDL_CalculateGPUTextureFormatSize(format : GPUTextureFormat, width : UInt32, height : UInt32, depth_or_layer_count : UInt32) : UInt32
  fun gdksuspend_gpu = SDL_GDKSuspendGPU(device : GPUDevice*) : Void
  fun gdkresume_gpu = SDL_GDKResumeGPU(device : GPUDevice*) : Void

  # SDL_guid

  struct GUID
    data : UInt8[16]
  end

  fun guidto_string = SDL_GUIDToString(guid : GUID, psz_guid : LibC::Char*, cb_guid : LibC::Int) : Void
  fun string_to_guid = SDL_StringToGUID(pch_guid : LibC::Char*) : GUID

  # additions/helper_haptic.cr

  union HapticEffect
    type : UInt16
    constant : HapticConstant
    periodic : HapticPeriodic
    condition : HapticCondition
    ramp : HapticRamp
    leftright : HapticLeftRight
    custom : HapticCustom
  end

  # SDL_haptic

  HAPTIC_CONSTANT = (1 << 0)
  HAPTIC_SINE = (1 << 1)
  HAPTIC_SQUARE = (1 << 2)
  HAPTIC_TRIANGLE = (1 << 3)
  HAPTIC_SAWTOOTHUP = (1 << 4)
  HAPTIC_SAWTOOTHDOWN = (1 << 5)
  HAPTIC_RAMP = (1 << 6)
  HAPTIC_SPRING = (1 << 7)
  HAPTIC_DAMPER = (1 << 8)
  HAPTIC_INERTIA = (1 << 9)
  HAPTIC_FRICTION = (1 << 10)
  HAPTIC_LEFTRIGHT = (1 << 11)
  HAPTIC_RESERVED1 = (1 << 12)
  HAPTIC_RESERVED2 = (1 << 13)
  HAPTIC_RESERVED3 = (1 << 14)
  HAPTIC_CUSTOM = (1 << 15)
  HAPTIC_GAIN = (1 << 16)
  HAPTIC_AUTOCENTER = (1 << 17)
  HAPTIC_STATUS = (1 << 18)
  HAPTIC_PAUSE = (1 << 19)
  HAPTIC_POLAR = 0
  HAPTIC_CARTESIAN = 1
  HAPTIC_SPHERICAL = 2
  HAPTIC_STEERING_AXIS = 3
  HAPTIC_INFINITY = 4294967295

  alias Haptic = Void
  alias HapticID = UInt32

  struct HapticDirection
    type : UInt8
    dir : Int32[3]
  end

  struct HapticConstant
    type : UInt16
    direction : HapticDirection
    length : UInt32
    delay : UInt16
    button : UInt16
    interval : UInt16
    level : Int16
    attack_length : UInt16
    attack_level : UInt16
    fade_length : UInt16
    fade_level : UInt16
  end

  struct HapticPeriodic
    type : UInt16
    direction : HapticDirection
    length : UInt32
    delay : UInt16
    button : UInt16
    interval : UInt16
    period : UInt16
    magnitude : Int16
    offset : Int16
    phase : UInt16
    attack_length : UInt16
    attack_level : UInt16
    fade_length : UInt16
    fade_level : UInt16
  end

  struct HapticCondition
    type : UInt16
    direction : HapticDirection
    length : UInt32
    delay : UInt16
    button : UInt16
    interval : UInt16
    right_sat : UInt16[3]
    left_sat : UInt16[3]
    right_coeff : Int16[3]
    left_coeff : Int16[3]
    deadband : UInt16[3]
    center : Int16[3]
  end

  struct HapticRamp
    type : UInt16
    direction : HapticDirection
    length : UInt32
    delay : UInt16
    button : UInt16
    interval : UInt16
    start_point : Int16
    end_point : Int16
    attack_length : UInt16
    attack_level : UInt16
    fade_length : UInt16
    fade_level : UInt16
  end

  struct HapticLeftRight
    type : UInt16
    length : UInt32
    large_magnitude : UInt16
    small_magnitude : UInt16
  end

  struct HapticCustom
    type : UInt16
    direction : HapticDirection
    length : UInt32
    delay : UInt16
    button : UInt16
    interval : UInt16
    channels : UInt8
    period : UInt16
    samples : UInt16
    data : UInt16*
    attack_length : UInt16
    attack_level : UInt16
    fade_length : UInt16
    fade_level : UInt16
  end

  fun get_haptics = SDL_GetHaptics(count : LibC::Int*) : HapticID*
  fun get_haptic_name_for_id = SDL_GetHapticNameForID(instance_id : HapticID) : LibC::Char*
  fun open_haptic = SDL_OpenHaptic(instance_id : HapticID) : Haptic*
  fun get_haptic_from_id = SDL_GetHapticFromID(instance_id : HapticID) : Haptic*
  fun get_haptic_id = SDL_GetHapticID(haptic : Haptic*) : HapticID
  fun get_haptic_name = SDL_GetHapticName(haptic : Haptic*) : LibC::Char*
  fun is_mouse_haptic = SDL_IsMouseHaptic() : LibC::Char
  fun open_haptic_from_mouse = SDL_OpenHapticFromMouse() : Haptic*
  fun is_joystick_haptic = SDL_IsJoystickHaptic(joystick : Joystick*) : LibC::Char
  fun open_haptic_from_joystick = SDL_OpenHapticFromJoystick(joystick : Joystick*) : Haptic*
  fun close_haptic = SDL_CloseHaptic(haptic : Haptic*) : Void
  fun get_max_haptic_effects = SDL_GetMaxHapticEffects(haptic : Haptic*) : LibC::Int
  fun get_max_haptic_effects_playing = SDL_GetMaxHapticEffectsPlaying(haptic : Haptic*) : LibC::Int
  fun get_haptic_features = SDL_GetHapticFeatures(haptic : Haptic*) : UInt32
  fun get_num_haptic_axes = SDL_GetNumHapticAxes(haptic : Haptic*) : LibC::Int
  fun haptic_effect_supported = SDL_HapticEffectSupported(haptic : Haptic*, effect : HapticEffect*) : LibC::Char
  fun create_haptic_effect = SDL_CreateHapticEffect(haptic : Haptic*, effect : HapticEffect*) : LibC::Int
  fun update_haptic_effect = SDL_UpdateHapticEffect(haptic : Haptic*, effect : LibC::Int, data : HapticEffect*) : LibC::Char
  fun run_haptic_effect = SDL_RunHapticEffect(haptic : Haptic*, effect : LibC::Int, iterations : UInt32) : LibC::Char
  fun stop_haptic_effect = SDL_StopHapticEffect(haptic : Haptic*, effect : LibC::Int) : LibC::Char
  fun destroy_haptic_effect = SDL_DestroyHapticEffect(haptic : Haptic*, effect : LibC::Int) : Void
  fun get_haptic_effect_status = SDL_GetHapticEffectStatus(haptic : Haptic*, effect : LibC::Int) : LibC::Char
  fun set_haptic_gain = SDL_SetHapticGain(haptic : Haptic*, gain : LibC::Int) : LibC::Char
  fun set_haptic_autocenter = SDL_SetHapticAutocenter(haptic : Haptic*, autocenter : LibC::Int) : LibC::Char
  fun pause_haptic = SDL_PauseHaptic(haptic : Haptic*) : LibC::Char
  fun resume_haptic = SDL_ResumeHaptic(haptic : Haptic*) : LibC::Char
  fun stop_haptic_effects = SDL_StopHapticEffects(haptic : Haptic*) : LibC::Char
  fun haptic_rumble_supported = SDL_HapticRumbleSupported(haptic : Haptic*) : LibC::Char
  fun init_haptic_rumble = SDL_InitHapticRumble(haptic : Haptic*) : LibC::Char
  fun play_haptic_rumble = SDL_PlayHapticRumble(haptic : Haptic*, strength : LibC::Float, length : UInt32) : LibC::Char
  fun stop_haptic_rumble = SDL_StopHapticRumble(haptic : Haptic*) : LibC::Char

  # additions/helper_hints.cr

  # (void* userdata, const char* name, const char* oldValue, const char* newValue)
  alias HintCallback = (Void*, LibC::Char*, LibC::Char*, LibC::Char*) -> Void

  # SDL_hints

  HINT_ALLOW_ALT_TAB_WHILE_GRABBED = "ALLOW_ALT_TAB_WHILE_GRABBED"
  HINT_ANDROID_ALLOW_RECREATE_ACTIVITY = "ANDROID_ALLOW_RECREATE_ACTIVITY"
  HINT_ANDROID_BLOCK_ON_PAUSE = "ANDROID_BLOCK_ON_PAUSE"
  HINT_ANDROID_LOW_LATENCY_AUDIO = "ANDROID_LOW_LATENCY_AUDIO"
  HINT_ANDROID_TRAP_BACK_BUTTON = "ANDROID_TRAP_BACK_BUTTON"
  HINT_APP_ID = "APP_ID"
  HINT_APP_NAME = "APP_NAME"
  HINT_APPLE_TV_CONTROLLER_UI_EVENTS = "APPLE_TV_CONTROLLER_UI_EVENTS"
  HINT_APPLE_TV_REMOTE_ALLOW_ROTATION = "APPLE_TV_REMOTE_ALLOW_ROTATION"
  HINT_AUDIO_ALSA_DEFAULT_DEVICE = "AUDIO_ALSA_DEFAULT_DEVICE"
  HINT_AUDIO_ALSA_DEFAULT_PLAYBACK_DEVICE = "AUDIO_ALSA_DEFAULT_PLAYBACK_DEVICE"
  HINT_AUDIO_ALSA_DEFAULT_RECORDING_DEVICE = "AUDIO_ALSA_DEFAULT_RECORDING_DEVICE"
  HINT_AUDIO_CATEGORY = "AUDIO_CATEGORY"
  HINT_AUDIO_CHANNELS = "AUDIO_CHANNELS"
  HINT_AUDIO_DEVICE_APP_ICON_NAME = "AUDIO_DEVICE_APP_ICON_NAME"
  HINT_AUDIO_DEVICE_SAMPLE_FRAMES = "AUDIO_DEVICE_SAMPLE_FRAMES"
  HINT_AUDIO_DEVICE_STREAM_NAME = "AUDIO_DEVICE_STREAM_NAME"
  HINT_AUDIO_DEVICE_STREAM_ROLE = "AUDIO_DEVICE_STREAM_ROLE"
  HINT_AUDIO_DISK_INPUT_FILE = "AUDIO_DISK_INPUT_FILE"
  HINT_AUDIO_DISK_OUTPUT_FILE = "AUDIO_DISK_OUTPUT_FILE"
  HINT_AUDIO_DISK_TIMESCALE = "AUDIO_DISK_TIMESCALE"
  HINT_AUDIO_DRIVER = "AUDIO_DRIVER"
  HINT_AUDIO_DUMMY_TIMESCALE = "AUDIO_DUMMY_TIMESCALE"
  HINT_AUDIO_FORMAT = "AUDIO_FORMAT"
  HINT_AUDIO_FREQUENCY = "AUDIO_FREQUENCY"
  HINT_AUDIO_INCLUDE_MONITORS = "AUDIO_INCLUDE_MONITORS"
  HINT_AUTO_UPDATE_JOYSTICKS = "AUTO_UPDATE_JOYSTICKS"
  HINT_AUTO_UPDATE_SENSORS = "AUTO_UPDATE_SENSORS"
  HINT_BMP_SAVE_LEGACY_FORMAT = "BMP_SAVE_LEGACY_FORMAT"
  HINT_CAMERA_DRIVER = "CAMERA_DRIVER"
  HINT_CPU_FEATURE_MASK = "CPU_FEATURE_MASK"
  HINT_JOYSTICK_DIRECTINPUT = "JOYSTICK_DIRECTINPUT"
  HINT_FILE_DIALOG_DRIVER = "FILE_DIALOG_DRIVER"
  HINT_DISPLAY_USABLE_BOUNDS = "DISPLAY_USABLE_BOUNDS"
  HINT_EMSCRIPTEN_ASYNCIFY = "EMSCRIPTEN_ASYNCIFY"
  HINT_EMSCRIPTEN_CANVAS_SELECTOR = "EMSCRIPTEN_CANVAS_SELECTOR"
  HINT_EMSCRIPTEN_KEYBOARD_ELEMENT = "EMSCRIPTEN_KEYBOARD_ELEMENT"
  HINT_ENABLE_SCREEN_KEYBOARD = "ENABLE_SCREEN_KEYBOARD"
  HINT_EVDEV_DEVICES = "EVDEV_DEVICES"
  HINT_EVENT_LOGGING = "EVENT_LOGGING"
  HINT_FORCE_RAISEWINDOW = "FORCE_RAISEWINDOW"
  HINT_FRAMEBUFFER_ACCELERATION = "FRAMEBUFFER_ACCELERATION"
  HINT_GAMECONTROLLERCONFIG = "GAMECONTROLLERCONFIG"
  HINT_GAMECONTROLLERCONFIG_FILE = "GAMECONTROLLERCONFIG_FILE"
  HINT_GAMECONTROLLERTYPE = "GAMECONTROLLERTYPE"
  HINT_GAMECONTROLLER_IGNORE_DEVICES = "GAMECONTROLLER_IGNORE_DEVICES"
  HINT_GAMECONTROLLER_IGNORE_DEVICES_EXCEPT = "GAMECONTROLLER_IGNORE_DEVICES_EXCEPT"
  HINT_GAMECONTROLLER_SENSOR_FUSION = "GAMECONTROLLER_SENSOR_FUSION"
  HINT_GDK_TEXTINPUT_DEFAULT_TEXT = "GDK_TEXTINPUT_DEFAULT_TEXT"
  HINT_GDK_TEXTINPUT_DESCRIPTION = "GDK_TEXTINPUT_DESCRIPTION"
  HINT_GDK_TEXTINPUT_MAX_LENGTH = "GDK_TEXTINPUT_MAX_LENGTH"
  HINT_GDK_TEXTINPUT_SCOPE = "GDK_TEXTINPUT_SCOPE"
  HINT_GDK_TEXTINPUT_TITLE = "GDK_TEXTINPUT_TITLE"
  HINT_HIDAPI_LIBUSB = "HIDAPI_LIBUSB"
  HINT_HIDAPI_LIBUSB_WHITELIST = "HIDAPI_LIBUSB_WHITELIST"
  HINT_HIDAPI_UDEV = "HIDAPI_UDEV"
  HINT_GPU_DRIVER = "GPU_DRIVER"
  HINT_HIDAPI_ENUMERATE_ONLY_CONTROLLERS = "HIDAPI_ENUMERATE_ONLY_CONTROLLERS"
  HINT_HIDAPI_IGNORE_DEVICES = "HIDAPI_IGNORE_DEVICES"
  HINT_IME_IMPLEMENTED_UI = "IME_IMPLEMENTED_UI"
  HINT_IOS_HIDE_HOME_INDICATOR = "IOS_HIDE_HOME_INDICATOR"
  HINT_JOYSTICK_ALLOW_BACKGROUND_EVENTS = "JOYSTICK_ALLOW_BACKGROUND_EVENTS"
  HINT_JOYSTICK_ARCADESTICK_DEVICES = "JOYSTICK_ARCADESTICK_DEVICES"
  HINT_JOYSTICK_ARCADESTICK_DEVICES_EXCLUDED = "JOYSTICK_ARCADESTICK_DEVICES_EXCLUDED"
  HINT_JOYSTICK_BLACKLIST_DEVICES = "JOYSTICK_BLACKLIST_DEVICES"
  HINT_JOYSTICK_BLACKLIST_DEVICES_EXCLUDED = "JOYSTICK_BLACKLIST_DEVICES_EXCLUDED"
  HINT_JOYSTICK_DEVICE = "JOYSTICK_DEVICE"
  HINT_JOYSTICK_FLIGHTSTICK_DEVICES = "JOYSTICK_FLIGHTSTICK_DEVICES"
  HINT_JOYSTICK_FLIGHTSTICK_DEVICES_EXCLUDED = "JOYSTICK_FLIGHTSTICK_DEVICES_EXCLUDED"
  HINT_JOYSTICK_GAMEINPUT = "JOYSTICK_GAMEINPUT"
  HINT_JOYSTICK_GAMECUBE_DEVICES = "JOYSTICK_GAMECUBE_DEVICES"
  HINT_JOYSTICK_GAMECUBE_DEVICES_EXCLUDED = "JOYSTICK_GAMECUBE_DEVICES_EXCLUDED"
  HINT_JOYSTICK_HIDAPI = "JOYSTICK_HIDAPI"
  HINT_JOYSTICK_HIDAPI_COMBINE_JOY_CONS = "JOYSTICK_HIDAPI_COMBINE_JOY_CONS"
  HINT_JOYSTICK_HIDAPI_GAMECUBE = "JOYSTICK_HIDAPI_GAMECUBE"
  HINT_JOYSTICK_HIDAPI_GAMECUBE_RUMBLE_BRAKE = "JOYSTICK_HIDAPI_GAMECUBE_RUMBLE_BRAKE"
  HINT_JOYSTICK_HIDAPI_JOY_CONS = "JOYSTICK_HIDAPI_JOY_CONS"
  HINT_JOYSTICK_HIDAPI_JOYCON_HOME_LED = "JOYSTICK_HIDAPI_JOYCON_HOME_LED"
  HINT_JOYSTICK_HIDAPI_LUNA = "JOYSTICK_HIDAPI_LUNA"
  HINT_JOYSTICK_HIDAPI_NINTENDO_CLASSIC = "JOYSTICK_HIDAPI_NINTENDO_CLASSIC"
  HINT_JOYSTICK_HIDAPI_PS3 = "JOYSTICK_HIDAPI_PS3"
  HINT_JOYSTICK_HIDAPI_PS3_SIXAXIS_DRIVER = "JOYSTICK_HIDAPI_PS3_SIXAXIS_DRIVER"
  HINT_JOYSTICK_HIDAPI_PS4 = "JOYSTICK_HIDAPI_PS4"
  HINT_JOYSTICK_HIDAPI_PS4_REPORT_INTERVAL = "JOYSTICK_HIDAPI_PS4_REPORT_INTERVAL"
  HINT_JOYSTICK_HIDAPI_PS4_RUMBLE = "JOYSTICK_HIDAPI_PS4_RUMBLE"
  HINT_JOYSTICK_HIDAPI_PS5 = "JOYSTICK_HIDAPI_PS5"
  HINT_JOYSTICK_HIDAPI_PS5_PLAYER_LED = "JOYSTICK_HIDAPI_PS5_PLAYER_LED"
  HINT_JOYSTICK_HIDAPI_PS5_RUMBLE = "JOYSTICK_HIDAPI_PS5_RUMBLE"
  HINT_JOYSTICK_HIDAPI_SHIELD = "JOYSTICK_HIDAPI_SHIELD"
  HINT_JOYSTICK_HIDAPI_STADIA = "JOYSTICK_HIDAPI_STADIA"
  HINT_JOYSTICK_HIDAPI_STEAM = "JOYSTICK_HIDAPI_STEAM"
  HINT_JOYSTICK_HIDAPI_STEAM_HOME_LED = "JOYSTICK_HIDAPI_STEAM_HOME_LED"
  HINT_JOYSTICK_HIDAPI_STEAMDECK = "JOYSTICK_HIDAPI_STEAMDECK"
  HINT_JOYSTICK_HIDAPI_STEAM_HORI = "JOYSTICK_HIDAPI_STEAM_HORI"
  HINT_JOYSTICK_HIDAPI_SWITCH = "JOYSTICK_HIDAPI_SWITCH"
  HINT_JOYSTICK_HIDAPI_SWITCH_HOME_LED = "JOYSTICK_HIDAPI_SWITCH_HOME_LED"
  HINT_JOYSTICK_HIDAPI_SWITCH_PLAYER_LED = "JOYSTICK_HIDAPI_SWITCH_PLAYER_LED"
  HINT_JOYSTICK_HIDAPI_VERTICAL_JOY_CONS = "JOYSTICK_HIDAPI_VERTICAL_JOY_CONS"
  HINT_JOYSTICK_HIDAPI_WII = "JOYSTICK_HIDAPI_WII"
  HINT_JOYSTICK_HIDAPI_WII_PLAYER_LED = "JOYSTICK_HIDAPI_WII_PLAYER_LED"
  HINT_JOYSTICK_HIDAPI_XBOX = "JOYSTICK_HIDAPI_XBOX"
  HINT_JOYSTICK_HIDAPI_XBOX_360 = "JOYSTICK_HIDAPI_XBOX_360"
  HINT_JOYSTICK_HIDAPI_XBOX_360_PLAYER_LED = "JOYSTICK_HIDAPI_XBOX_360_PLAYER_LED"
  HINT_JOYSTICK_HIDAPI_XBOX_360_WIRELESS = "JOYSTICK_HIDAPI_XBOX_360_WIRELESS"
  HINT_JOYSTICK_HIDAPI_XBOX_ONE = "JOYSTICK_HIDAPI_XBOX_ONE"
  HINT_JOYSTICK_HIDAPI_XBOX_ONE_HOME_LED = "JOYSTICK_HIDAPI_XBOX_ONE_HOME_LED"
  HINT_JOYSTICK_IOKIT = "JOYSTICK_IOKIT"
  HINT_JOYSTICK_LINUX_CLASSIC = "JOYSTICK_LINUX_CLASSIC"
  HINT_JOYSTICK_LINUX_DEADZONES = "JOYSTICK_LINUX_DEADZONES"
  HINT_JOYSTICK_LINUX_DIGITAL_HATS = "JOYSTICK_LINUX_DIGITAL_HATS"
  HINT_JOYSTICK_LINUX_HAT_DEADZONES = "JOYSTICK_LINUX_HAT_DEADZONES"
  HINT_JOYSTICK_MFI = "JOYSTICK_MFI"
  HINT_JOYSTICK_RAWINPUT = "JOYSTICK_RAWINPUT"
  HINT_JOYSTICK_RAWINPUT_CORRELATE_XINPUT = "JOYSTICK_RAWINPUT_CORRELATE_XINPUT"
  HINT_JOYSTICK_ROG_CHAKRAM = "JOYSTICK_ROG_CHAKRAM"
  HINT_JOYSTICK_THREAD = "JOYSTICK_THREAD"
  HINT_JOYSTICK_THROTTLE_DEVICES = "JOYSTICK_THROTTLE_DEVICES"
  HINT_JOYSTICK_THROTTLE_DEVICES_EXCLUDED = "JOYSTICK_THROTTLE_DEVICES_EXCLUDED"
  HINT_JOYSTICK_WGI = "JOYSTICK_WGI"
  HINT_JOYSTICK_WHEEL_DEVICES = "JOYSTICK_WHEEL_DEVICES"
  HINT_JOYSTICK_WHEEL_DEVICES_EXCLUDED = "JOYSTICK_WHEEL_DEVICES_EXCLUDED"
  HINT_JOYSTICK_ZERO_CENTERED_DEVICES = "JOYSTICK_ZERO_CENTERED_DEVICES"
  HINT_KEYCODE_OPTIONS = "KEYCODE_OPTIONS"
  HINT_KMSDRM_DEVICE_INDEX = "KMSDRM_DEVICE_INDEX"
  HINT_KMSDRM_REQUIRE_DRM_MASTER = "KMSDRM_REQUIRE_DRM_MASTER"
  HINT_LOGGING = "LOGGING"
  HINT_MAC_BACKGROUND_APP = "MAC_BACKGROUND_APP"
  HINT_MAC_CTRL_CLICK_EMULATE_RIGHT_CLICK = "MAC_CTRL_CLICK_EMULATE_RIGHT_CLICK"
  HINT_MAC_OPENGL_ASYNC_DISPATCH = "MAC_OPENGL_ASYNC_DISPATCH"
  HINT_MAC_SCROLL_MOMENTUM = "MAC_SCROLL_MOMENTUM"
  HINT_MAIN_CALLBACK_RATE = "MAIN_CALLBACK_RATE"
  HINT_MOUSE_AUTO_CAPTURE = "MOUSE_AUTO_CAPTURE"
  HINT_MOUSE_DOUBLE_CLICK_RADIUS = "MOUSE_DOUBLE_CLICK_RADIUS"
  HINT_MOUSE_DOUBLE_CLICK_TIME = "MOUSE_DOUBLE_CLICK_TIME"
  HINT_MOUSE_DEFAULT_SYSTEM_CURSOR = "MOUSE_DEFAULT_SYSTEM_CURSOR"
  HINT_MOUSE_EMULATE_WARP_WITH_RELATIVE = "MOUSE_EMULATE_WARP_WITH_RELATIVE"
  HINT_MOUSE_FOCUS_CLICKTHROUGH = "MOUSE_FOCUS_CLICKTHROUGH"
  HINT_MOUSE_NORMAL_SPEED_SCALE = "MOUSE_NORMAL_SPEED_SCALE"
  HINT_MOUSE_RELATIVE_MODE_CENTER = "MOUSE_RELATIVE_MODE_CENTER"
  HINT_MOUSE_RELATIVE_SPEED_SCALE = "MOUSE_RELATIVE_SPEED_SCALE"
  HINT_MOUSE_RELATIVE_SYSTEM_SCALE = "MOUSE_RELATIVE_SYSTEM_SCALE"
  HINT_MOUSE_RELATIVE_WARP_MOTION = "MOUSE_RELATIVE_WARP_MOTION"
  HINT_MOUSE_RELATIVE_CURSOR_VISIBLE = "MOUSE_RELATIVE_CURSOR_VISIBLE"
  HINT_MOUSE_TOUCH_EVENTS = "MOUSE_TOUCH_EVENTS"
  HINT_MUTE_CONSOLE_KEYBOARD = "MUTE_CONSOLE_KEYBOARD"
  HINT_NO_SIGNAL_HANDLERS = "NO_SIGNAL_HANDLERS"
  HINT_OPENGL_LIBRARY = "OPENGL_LIBRARY"
  HINT_OPENGL_ES_DRIVER = "OPENGL_ES_DRIVER"
  HINT_OPENVR_LIBRARY = "OPENVR_LIBRARY"
  HINT_ORIENTATIONS = "ORIENTATIONS"
  HINT_POLL_SENTINEL = "POLL_SENTINEL"
  HINT_PREFERRED_LOCALES = "PREFERRED_LOCALES"
  HINT_QUIT_ON_LAST_WINDOW_CLOSE = "QUIT_ON_LAST_WINDOW_CLOSE"
  HINT_RENDER_DIRECT3D_THREADSAFE = "RENDER_DIRECT3D_THREADSAFE"
  HINT_RENDER_DIRECT3D11_DEBUG = "RENDER_DIRECT3D11_DEBUG"
  HINT_RENDER_VULKAN_DEBUG = "RENDER_VULKAN_DEBUG"
  HINT_RENDER_GPU_DEBUG = "RENDER_GPU_DEBUG"
  HINT_RENDER_GPU_LOW_POWER = "RENDER_GPU_LOW_POWER"
  HINT_RENDER_DRIVER = "RENDER_DRIVER"
  HINT_RENDER_LINE_METHOD = "RENDER_LINE_METHOD"
  HINT_RENDER_METAL_PREFER_LOW_POWER_DEVICE = "RENDER_METAL_PREFER_LOW_POWER_DEVICE"
  HINT_RENDER_VSYNC = "RENDER_VSYNC"
  HINT_RETURN_KEY_HIDES_IME = "RETURN_KEY_HIDES_IME"
  HINT_ROG_GAMEPAD_MICE = "ROG_GAMEPAD_MICE"
  HINT_ROG_GAMEPAD_MICE_EXCLUDED = "ROG_GAMEPAD_MICE_EXCLUDED"
  HINT_RPI_VIDEO_LAYER = "RPI_VIDEO_LAYER"
  HINT_SCREENSAVER_INHIBIT_ACTIVITY_NAME = "SCREENSAVER_INHIBIT_ACTIVITY_NAME"
  HINT_SHUTDOWN_DBUS_ON_QUIT = "SHUTDOWN_DBUS_ON_QUIT"
  HINT_STORAGE_TITLE_DRIVER = "STORAGE_TITLE_DRIVER"
  HINT_STORAGE_USER_DRIVER = "STORAGE_USER_DRIVER"
  HINT_THREAD_FORCE_REALTIME_TIME_CRITICAL = "THREAD_FORCE_REALTIME_TIME_CRITICAL"
  HINT_THREAD_PRIORITY_POLICY = "THREAD_PRIORITY_POLICY"
  HINT_TIMER_RESOLUTION = "TIMER_RESOLUTION"
  HINT_TOUCH_MOUSE_EVENTS = "TOUCH_MOUSE_EVENTS"
  HINT_TRACKPAD_IS_TOUCH_ONLY = "TRACKPAD_IS_TOUCH_ONLY"
  HINT_TV_REMOTE_AS_JOYSTICK = "TV_REMOTE_AS_JOYSTICK"
  HINT_VIDEO_ALLOW_SCREENSAVER = "VIDEO_ALLOW_SCREENSAVER"
  HINT_VIDEO_DISPLAY_PRIORITY = "VIDEO_DISPLAY_PRIORITY"
  HINT_VIDEO_DOUBLE_BUFFER = "VIDEO_DOUBLE_BUFFER"
  HINT_VIDEO_DRIVER = "VIDEO_DRIVER"
  HINT_VIDEO_DUMMY_SAVE_FRAMES = "VIDEO_DUMMY_SAVE_FRAMES"
  HINT_VIDEO_EGL_ALLOW_GETDISPLAY_FALLBACK = "VIDEO_EGL_ALLOW_GETDISPLAY_FALLBACK"
  HINT_VIDEO_FORCE_EGL = "VIDEO_FORCE_EGL"
  HINT_VIDEO_MAC_FULLSCREEN_SPACES = "VIDEO_MAC_FULLSCREEN_SPACES"
  HINT_VIDEO_MINIMIZE_ON_FOCUS_LOSS = "VIDEO_MINIMIZE_ON_FOCUS_LOSS"
  HINT_VIDEO_OFFSCREEN_SAVE_FRAMES = "VIDEO_OFFSCREEN_SAVE_FRAMES"
  HINT_VIDEO_SYNC_WINDOW_OPERATIONS = "VIDEO_SYNC_WINDOW_OPERATIONS"
  HINT_VIDEO_WAYLAND_ALLOW_LIBDECOR = "VIDEO_WAYLAND_ALLOW_LIBDECOR"
  HINT_VIDEO_WAYLAND_MODE_EMULATION = "VIDEO_WAYLAND_MODE_EMULATION"
  HINT_VIDEO_WAYLAND_MODE_SCALING = "VIDEO_WAYLAND_MODE_SCALING"
  HINT_VIDEO_WAYLAND_PREFER_LIBDECOR = "VIDEO_WAYLAND_PREFER_LIBDECOR"
  HINT_VIDEO_WAYLAND_SCALE_TO_DISPLAY = "VIDEO_WAYLAND_SCALE_TO_DISPLAY"
  HINT_VIDEO_WIN_D3DCOMPILER = "VIDEO_WIN_D3DCOMPILER"
  HINT_VIDEO_X11_NET_WM_BYPASS_COMPOSITOR = "VIDEO_X11_NET_WM_BYPASS_COMPOSITOR"
  HINT_VIDEO_X11_NET_WM_PING = "VIDEO_X11_NET_WM_PING"
  HINT_VIDEO_X11_NODIRECTCOLOR = "VIDEO_X11_NODIRECTCOLOR"
  HINT_VIDEO_X11_SCALING_FACTOR = "VIDEO_X11_SCALING_FACTOR"
  HINT_VIDEO_X11_VISUALID = "VIDEO_X11_VISUALID"
  HINT_VIDEO_X11_WINDOW_VISUALID = "VIDEO_X11_WINDOW_VISUALID"
  HINT_VIDEO_X11_XRANDR = "VIDEO_X11_XRANDR"
  HINT_VITA_ENABLE_BACK_TOUCH = "VITA_ENABLE_BACK_TOUCH"
  HINT_VITA_ENABLE_FRONT_TOUCH = "VITA_ENABLE_FRONT_TOUCH"
  HINT_VITA_MODULE_PATH = "VITA_MODULE_PATH"
  HINT_VITA_PVR_INIT = "VITA_PVR_INIT"
  HINT_VITA_RESOLUTION = "VITA_RESOLUTION"
  HINT_VITA_PVR_OPENGL = "VITA_PVR_OPENGL"
  HINT_VITA_TOUCH_MOUSE_DEVICE = "VITA_TOUCH_MOUSE_DEVICE"
  HINT_VULKAN_DISPLAY = "VULKAN_DISPLAY"
  HINT_VULKAN_LIBRARY = "VULKAN_LIBRARY"
  HINT_WAVE_FACT_CHUNK = "WAVE_FACT_CHUNK"
  HINT_WAVE_CHUNK_LIMIT = "WAVE_CHUNK_LIMIT"
  HINT_WAVE_RIFF_CHUNK_SIZE = "WAVE_RIFF_CHUNK_SIZE"
  HINT_WAVE_TRUNCATION = "WAVE_TRUNCATION"
  HINT_WINDOW_ACTIVATE_WHEN_RAISED = "WINDOW_ACTIVATE_WHEN_RAISED"
  HINT_WINDOW_ACTIVATE_WHEN_SHOWN = "WINDOW_ACTIVATE_WHEN_SHOWN"
  HINT_WINDOW_ALLOW_TOPMOST = "WINDOW_ALLOW_TOPMOST"
  HINT_WINDOW_FRAME_USABLE_WHILE_CURSOR_HIDDEN = "WINDOW_FRAME_USABLE_WHILE_CURSOR_HIDDEN"
  HINT_WINDOWS_CLOSE_ON_ALT_F4 = "WINDOWS_CLOSE_ON_ALT_F4"
  HINT_WINDOWS_ENABLE_MENU_MNEMONICS = "WINDOWS_ENABLE_MENU_MNEMONICS"
  HINT_WINDOWS_ENABLE_MESSAGELOOP = "WINDOWS_ENABLE_MESSAGELOOP"
  HINT_WINDOWS_GAMEINPUT = "WINDOWS_GAMEINPUT"
  HINT_WINDOWS_RAW_KEYBOARD = "WINDOWS_RAW_KEYBOARD"
  HINT_WINDOWS_FORCE_SEMAPHORE_KERNEL = "WINDOWS_FORCE_SEMAPHORE_KERNEL"
  HINT_WINDOWS_INTRESOURCE_ICON = "WINDOWS_INTRESOURCE_ICON"
  HINT_WINDOWS_INTRESOURCE_ICON_SMALL = "WINDOWS_INTRESOURCE_ICON_SMALL"
  HINT_WINDOWS_USE_D3D9EX = "WINDOWS_USE_D3D9EX"
  HINT_WINDOWS_ERASE_BACKGROUND_MODE = "WINDOWS_ERASE_BACKGROUND_MODE"
  HINT_X11_FORCE_OVERRIDE_REDIRECT = "X11_FORCE_OVERRIDE_REDIRECT"
  HINT_X11_WINDOW_TYPE = "X11_WINDOW_TYPE"
  HINT_X11_XCB_LIBRARY = "X11_XCB_LIBRARY"
  HINT_XINPUT_ENABLED = "XINPUT_ENABLED"
  HINT_ASSERT = "ASSERT"

  enum HintPriority
    HINT_DEFAULT
    HINT_NORMAL
    HINT_OVERRIDE
  end

  fun set_hint_with_priority = SDL_SetHintWithPriority(name : LibC::Char*, value : LibC::Char*, priority : HintPriority) : LibC::Char
  fun set_hint = SDL_SetHint(name : LibC::Char*, value : LibC::Char*) : LibC::Char
  fun reset_hint = SDL_ResetHint(name : LibC::Char*) : LibC::Char
  fun reset_hints = SDL_ResetHints() : Void
  fun get_hint = SDL_GetHint(name : LibC::Char*) : LibC::Char*
  fun get_hint_boolean = SDL_GetHintBoolean(name : LibC::Char*, default_value : LibC::Char) : LibC::Char
  fun add_hint_callback = SDL_AddHintCallback(name : LibC::Char*, callback : HintCallback, userdata : Void*) : LibC::Char
  fun remove_hint_callback = SDL_RemoveHintCallback(name : LibC::Char*, callback : HintCallback, userdata : Void*) : Void

  # additions/helper_init.cr

  # (void** appstate, int argc, char* argv[])
  alias AppInitFunc = (Void**, LibC::Int, LibC::Char**) -> AppResult

  # (void* appstate)
  alias AppIterateFunc = (Void*) -> AppResult

  # (void* appstate, SDL_Event* event)
  alias AppEventFunc = (Void*, Event*) -> AppResult
  
  # (void* appstate, SDL_AppResult result)
  alias AppQuitFunc = (Void*, AppResult) -> Void

  # (void* userdata)
  alias MainThreadCallback = (Void*) -> Void

  # SDL_init

  INIT_AUDIO = 0x00000010
  INIT_VIDEO = 0x00000020
  INIT_JOYSTICK = 0x00000200
  INIT_HAPTIC = 0x00001000
  INIT_GAMEPAD = 0x00002000
  INIT_EVENTS = 0x00004000
  INIT_SENSOR = 0x00008000
  INIT_CAMERA = 0x00010000
  PROP_APP_METADATA_NAME_STRING = "SDL.app.metadata.name"
  PROP_APP_METADATA_VERSION_STRING = "SDL.app.metadata.version"
  PROP_APP_METADATA_IDENTIFIER_STRING = "SDL.app.metadata.identifier"
  PROP_APP_METADATA_CREATOR_STRING = "SDL.app.metadata.creator"
  PROP_APP_METADATA_COPYRIGHT_STRING = "SDL.app.metadata.copyright"
  PROP_APP_METADATA_URL_STRING = "SDL.app.metadata.url"
  PROP_APP_METADATA_TYPE_STRING = "SDL.app.metadata.type"

  alias InitFlags = UInt32

  enum AppResult
    APP_CONTINUE
    APP_SUCCESS
    APP_FAILURE
  end

  fun init = SDL_Init(flags : InitFlags) : LibC::Char
  fun init_sub_system = SDL_InitSubSystem(flags : InitFlags) : LibC::Char
  fun quit_sub_system = SDL_QuitSubSystem(flags : InitFlags) : Void
  fun was_init = SDL_WasInit(flags : InitFlags) : InitFlags
  fun quit = SDL_Quit() : Void
  fun is_main_thread = SDL_IsMainThread() : LibC::Char
  fun run_on_main_thread = SDL_RunOnMainThread(callback : MainThreadCallback, userdata : Void*, wait_complete : LibC::Char) : LibC::Char
  fun set_app_metadata = SDL_SetAppMetadata(appname : LibC::Char*, appversion : LibC::Char*, appidentifier : LibC::Char*) : LibC::Char
  fun set_app_metadata_property = SDL_SetAppMetadataProperty(name : LibC::Char*, value : LibC::Char*) : LibC::Char
  fun get_app_metadata_property = SDL_GetAppMetadataProperty(name : LibC::Char*) : LibC::Char*

  # additions/helper_iostream.cr

  struct IOStreamInterface
    version : UInt32
    size : (Void*) -> Int64 # (void* userdata)
    seek : (Void*, Int64, IOWhence) -> Int64  # (void* userdata, Sint64 offset, SDL_IOWhence whence)
    read : (Void*, Void*, LibC::SizeT, IOStatus*) -> LibC::SizeT # (void* userdata, void* ptr, size_t size, SDL_IOStatus* status)
    write : (Void*, Void*, LibC::SizeT, IOStatus*) -> LibC::SizeT # (void* userdata, const void* ptr, size_t size, SDL_IOStatus* status)
    flush : (Void*, IOStatus*) -> LibC::Char  # (void* userdata, SDL_IOStatus* status)
    close : (Void*) -> LibC::Char  # (void* userdata)
  end

  # SDL_iostream

  PROP_IOSTREAM_WINDOWS_HANDLE_POINTER = "SDL.iostream.windows.handle"
  PROP_IOSTREAM_STDIO_FILE_POINTER = "SDL.iostream.stdio.file"
  PROP_IOSTREAM_FILE_DESCRIPTOR_NUMBER = "SDL.iostream.file_descriptor"
  PROP_IOSTREAM_ANDROID_AASSET_POINTER = "SDL.iostream.android.aasset"
  PROP_IOSTREAM_MEMORY_POINTER = "SDL.iostream.memory.base"
  PROP_IOSTREAM_MEMORY_SIZE_NUMBER = "SDL.iostream.memory.size"
  PROP_IOSTREAM_DYNAMIC_MEMORY_POINTER = "SDL.iostream.dynamic.memory"
  PROP_IOSTREAM_DYNAMIC_CHUNKSIZE_NUMBER = "SDL.iostream.dynamic.chunksize"

  alias IOStream = Void

  enum IOStatus
    IO_STATUS_READY
    IO_STATUS_ERROR
    IO_STATUS_EOF
    IO_STATUS_NOT_READY
    IO_STATUS_READONLY
    IO_STATUS_WRITEONLY
  end

  enum IOWhence
    IO_SEEK_SET
    IO_SEEK_CUR
    IO_SEEK_END
  end

  fun iofrom_file = SDL_IOFromFile(file : LibC::Char*, mode : LibC::Char*) : IOStream*
  fun iofrom_mem = SDL_IOFromMem(mem : Void*, size : LibC::SizeT) : IOStream*
  fun iofrom_const_mem = SDL_IOFromConstMem(mem : Void*, size : LibC::SizeT) : IOStream*
  fun iofrom_dynamic_mem = SDL_IOFromDynamicMem() : IOStream*
  fun open_io = SDL_OpenIO(iface : IOStreamInterface*, userdata : Void*) : IOStream*
  fun close_io = SDL_CloseIO(context : IOStream*) : LibC::Char
  fun get_ioproperties = SDL_GetIOProperties(context : IOStream*) : PropertiesID
  fun get_iostatus = SDL_GetIOStatus(context : IOStream*) : IOStatus
  fun get_iosize = SDL_GetIOSize(context : IOStream*) : Int64
  fun seek_io = SDL_SeekIO(context : IOStream*, offset : Int64, whence : IOWhence) : Int64
  fun tell_io = SDL_TellIO(context : IOStream*) : Int64
  fun read_io = SDL_ReadIO(context : IOStream*, ptr : Void*, size : LibC::SizeT) : LibC::SizeT
  fun write_io = SDL_WriteIO(context : IOStream*, ptr : Void*, size : LibC::SizeT) : LibC::SizeT
  fun ioprintf = SDL_IOprintf(context : IOStream*, fmt : LibC::Char*, ...) : LibC::SizeT
  fun flush_io = SDL_FlushIO(context : IOStream*) : LibC::Char
  fun load_file_io = SDL_LoadFile_IO(src : IOStream*, datasize : LibC::SizeT*, closeio : LibC::Char) : Void*
  fun load_file = SDL_LoadFile(file : LibC::Char*, datasize : LibC::SizeT*) : Void*
  fun save_file_io = SDL_SaveFile_IO(src : IOStream*, data : Void*, datasize : LibC::SizeT, closeio : LibC::Char) : LibC::Char
  fun save_file = SDL_SaveFile(file : LibC::Char*, data : Void*, datasize : LibC::SizeT) : LibC::Char
  fun read_u8 = SDL_ReadU8(src : IOStream*, value : UInt8*) : LibC::Char
  fun read_s8 = SDL_ReadS8(src : IOStream*, value : Int8*) : LibC::Char
  fun read_u16_le = SDL_ReadU16LE(src : IOStream*, value : UInt16*) : LibC::Char
  fun read_s16_le = SDL_ReadS16LE(src : IOStream*, value : Int16*) : LibC::Char
  fun read_u16_be = SDL_ReadU16BE(src : IOStream*, value : UInt16*) : LibC::Char
  fun read_s16_be = SDL_ReadS16BE(src : IOStream*, value : Int16*) : LibC::Char
  fun read_u32_le = SDL_ReadU32LE(src : IOStream*, value : UInt32*) : LibC::Char
  fun read_s32_le = SDL_ReadS32LE(src : IOStream*, value : Int32*) : LibC::Char
  fun read_u32_be = SDL_ReadU32BE(src : IOStream*, value : UInt32*) : LibC::Char
  fun read_s32_be = SDL_ReadS32BE(src : IOStream*, value : Int32*) : LibC::Char
  fun read_u64_le = SDL_ReadU64LE(src : IOStream*, value : UInt64*) : LibC::Char
  fun read_s64_le = SDL_ReadS64LE(src : IOStream*, value : Int64*) : LibC::Char
  fun read_u64_be = SDL_ReadU64BE(src : IOStream*, value : UInt64*) : LibC::Char
  fun read_s64_be = SDL_ReadS64BE(src : IOStream*, value : Int64*) : LibC::Char
  fun write_u8 = SDL_WriteU8(dst : IOStream*, value : UInt8) : LibC::Char
  fun write_s8 = SDL_WriteS8(dst : IOStream*, value : Int8) : LibC::Char
  fun write_u16_le = SDL_WriteU16LE(dst : IOStream*, value : UInt16) : LibC::Char
  fun write_s16_le = SDL_WriteS16LE(dst : IOStream*, value : Int16) : LibC::Char
  fun write_u16_be = SDL_WriteU16BE(dst : IOStream*, value : UInt16) : LibC::Char
  fun write_s16_be = SDL_WriteS16BE(dst : IOStream*, value : Int16) : LibC::Char
  fun write_u32_le = SDL_WriteU32LE(dst : IOStream*, value : UInt32) : LibC::Char
  fun write_s32_le = SDL_WriteS32LE(dst : IOStream*, value : Int32) : LibC::Char
  fun write_u32_be = SDL_WriteU32BE(dst : IOStream*, value : UInt32) : LibC::Char
  fun write_s32_be = SDL_WriteS32BE(dst : IOStream*, value : Int32) : LibC::Char
  fun write_u64_le = SDL_WriteU64LE(dst : IOStream*, value : UInt64) : LibC::Char
  fun write_s64_le = SDL_WriteS64LE(dst : IOStream*, value : Int64) : LibC::Char
  fun write_u64_be = SDL_WriteU64BE(dst : IOStream*, value : UInt64) : LibC::Char
  fun write_s64_be = SDL_WriteS64BE(dst : IOStream*, value : Int64) : LibC::Char

  # additions/helper_joystick.cr

  struct VirtualJoystickDesc
    version : UInt32
    type : UInt16
    padding : UInt16
    vendor_id : UInt16
    product_id : UInt16
    naxses : UInt16
    nbuttons : UInt16
    nballs : UInt16
    nhats : UInt16
    ntouchpads : UInt16
    nsensors : UInt16
    padding2 : UInt16[2]
    button_mask : UInt32
    axis_mask : UInt32
    name : LibC::Char*
    touchpads : VirtualJoystickTouchpadDesc*
    sensors : VirtualJoystickSensorDesc*
    userdata : Void*
    update : (Void*) -> Void  # (void* userdata)
    set_player_index : (Void*, LibC::Int) -> Void # (void* userdata, int player_index)
    rumble : (Void*, UInt16, UInt16) -> LibC::Int # (void* userdata, Uint16 low_frequency_rumble, Uint16 high_frequency_rumble)
    rumble_triggers : (Void*, UInt16, UInt16) -> LibC::Int  # (void* userdata, Uint16 left_rumble, Uint16 right_rumble)
    set_led : (Void*, UInt8, UInt8, UInt8) -> LibC::Int # (void* userdata, Uint8 red, Uint8 green, Uint8 blue)
    send_effect : (Void*, Void*, LibC::Int) -> LibC::Int  # (void* userdata, const void* data, int size)
    set_sensors_enabled : (Void*, LibC::Char) -> LibC::Char  # (void* userdata, bool enabled)
    cleanup : (Void*) -> Void # (void* userdata)
  end

  # SDL_joystick

  JOYSTICK_AXIS_MAX = 32767
  JOYSTICK_AXIS_MIN = -32768
  PROP_JOYSTICK_CAP_MONO_LED_BOOLEAN = "SDL.joystick.cap.mono_led"
  PROP_JOYSTICK_CAP_RGB_LED_BOOLEAN = "SDL.joystick.cap.rgb_led"
  PROP_JOYSTICK_CAP_PLAYER_LED_BOOLEAN = "SDL.joystick.cap.player_led"
  PROP_JOYSTICK_CAP_RUMBLE_BOOLEAN = "SDL.joystick.cap.rumble"
  PROP_JOYSTICK_CAP_TRIGGER_RUMBLE_BOOLEAN = "SDL.joystick.cap.trigger_rumble"
  HAT_CENTERED = 0x00
  HAT_UP = 0x01
  HAT_RIGHT = 0x02
  HAT_DOWN = 0x04
  HAT_LEFT = 0x08
  HAT_RIGHTUP = (HAT_RIGHT | HAT_UP)
  HAT_RIGHTDOWN = (HAT_RIGHT | HAT_DOWN)
  HAT_LEFTUP = (HAT_LEFT | HAT_UP)
  HAT_LEFTDOWN = (HAT_LEFT | HAT_DOWN)

  alias Joystick = Void
  alias JoystickID = UInt32

  enum JoystickType
    JOYSTICK_TYPE_UNKNOWN
    JOYSTICK_TYPE_GAMEPAD
    JOYSTICK_TYPE_WHEEL
    JOYSTICK_TYPE_ARCADE_STICK
    JOYSTICK_TYPE_FLIGHT_STICK
    JOYSTICK_TYPE_DANCE_PAD
    JOYSTICK_TYPE_GUITAR
    JOYSTICK_TYPE_DRUM_KIT
    JOYSTICK_TYPE_ARCADE_PAD
    JOYSTICK_TYPE_THROTTLE
    JOYSTICK_TYPE_COUNT
  end

  enum JoystickConnectionState
    JOYSTICK_CONNECTION_INVALID = -1
    JOYSTICK_CONNECTION_UNKNOWN
    JOYSTICK_CONNECTION_WIRED
    JOYSTICK_CONNECTION_WIRELESS
  end

  struct VirtualJoystickTouchpadDesc
    nfingers : UInt16
    padding : UInt16[3]
  end

  struct VirtualJoystickSensorDesc
    type : SensorType
    rate : LibC::Float
  end

  fun lock_joysticks = SDL_LockJoysticks() : Void
  fun unlock_joysticks = SDL_UnlockJoysticks() : Void
  fun has_joystick = SDL_HasJoystick() : LibC::Char
  fun get_joysticks = SDL_GetJoysticks(count : LibC::Int*) : JoystickID*
  fun get_joystick_name_for_id = SDL_GetJoystickNameForID(instance_id : JoystickID) : LibC::Char*
  fun get_joystick_path_for_id = SDL_GetJoystickPathForID(instance_id : JoystickID) : LibC::Char*
  fun get_joystick_player_index_for_id = SDL_GetJoystickPlayerIndexForID(instance_id : JoystickID) : LibC::Int
  fun get_joystick_guidfor_id = SDL_GetJoystickGUIDForID(instance_id : JoystickID) : GUID
  fun get_joystick_vendor_for_id = SDL_GetJoystickVendorForID(instance_id : JoystickID) : UInt16
  fun get_joystick_product_for_id = SDL_GetJoystickProductForID(instance_id : JoystickID) : UInt16
  fun get_joystick_product_version_for_id = SDL_GetJoystickProductVersionForID(instance_id : JoystickID) : UInt16
  fun get_joystick_type_for_id = SDL_GetJoystickTypeForID(instance_id : JoystickID) : JoystickType
  fun open_joystick = SDL_OpenJoystick(instance_id : JoystickID) : Joystick*
  fun get_joystick_from_id = SDL_GetJoystickFromID(instance_id : JoystickID) : Joystick*
  fun get_joystick_from_player_index = SDL_GetJoystickFromPlayerIndex(player_index : LibC::Int) : Joystick*
  fun attach_virtual_joystick = SDL_AttachVirtualJoystick(desc : VirtualJoystickDesc*) : JoystickID
  fun detach_virtual_joystick = SDL_DetachVirtualJoystick(instance_id : JoystickID) : LibC::Char
  fun is_joystick_virtual = SDL_IsJoystickVirtual(instance_id : JoystickID) : LibC::Char
  fun set_joystick_virtual_axis = SDL_SetJoystickVirtualAxis(joystick : Joystick*, axis : LibC::Int, value : Int16) : LibC::Char
  fun set_joystick_virtual_ball = SDL_SetJoystickVirtualBall(joystick : Joystick*, ball : LibC::Int, xrel : Int16, yrel : Int16) : LibC::Char
  fun set_joystick_virtual_button = SDL_SetJoystickVirtualButton(joystick : Joystick*, button : LibC::Int, down : LibC::Char) : LibC::Char
  fun set_joystick_virtual_hat = SDL_SetJoystickVirtualHat(joystick : Joystick*, hat : LibC::Int, value : UInt8) : LibC::Char
  fun set_joystick_virtual_touchpad = SDL_SetJoystickVirtualTouchpad(joystick : Joystick*, touchpad : LibC::Int, finger : LibC::Int, down : LibC::Char, x : LibC::Float, y : LibC::Float, pressure : LibC::Float) : LibC::Char
  fun send_joystick_virtual_sensor_data = SDL_SendJoystickVirtualSensorData(joystick : Joystick*, type : SensorType, sensor_timestamp : UInt64, data : LibC::Float*, num_values : LibC::Int) : LibC::Char
  fun get_joystick_properties = SDL_GetJoystickProperties(joystick : Joystick*) : PropertiesID
  fun get_joystick_name = SDL_GetJoystickName(joystick : Joystick*) : LibC::Char*
  fun get_joystick_path = SDL_GetJoystickPath(joystick : Joystick*) : LibC::Char*
  fun get_joystick_player_index = SDL_GetJoystickPlayerIndex(joystick : Joystick*) : LibC::Int
  fun set_joystick_player_index = SDL_SetJoystickPlayerIndex(joystick : Joystick*, player_index : LibC::Int) : LibC::Char
  fun get_joystick_guid = SDL_GetJoystickGUID(joystick : Joystick*) : GUID
  fun get_joystick_vendor = SDL_GetJoystickVendor(joystick : Joystick*) : UInt16
  fun get_joystick_product = SDL_GetJoystickProduct(joystick : Joystick*) : UInt16
  fun get_joystick_product_version = SDL_GetJoystickProductVersion(joystick : Joystick*) : UInt16
  fun get_joystick_firmware_version = SDL_GetJoystickFirmwareVersion(joystick : Joystick*) : UInt16
  fun get_joystick_serial = SDL_GetJoystickSerial(joystick : Joystick*) : LibC::Char*
  fun get_joystick_type = SDL_GetJoystickType(joystick : Joystick*) : JoystickType
  fun get_joystick_guidinfo = SDL_GetJoystickGUIDInfo(guid : GUID, vendor : UInt16*, product : UInt16*, version : UInt16*, crc16 : UInt16*) : Void
  fun joystick_connected = SDL_JoystickConnected(joystick : Joystick*) : LibC::Char
  fun get_joystick_id = SDL_GetJoystickID(joystick : Joystick*) : JoystickID
  fun get_num_joystick_axes = SDL_GetNumJoystickAxes(joystick : Joystick*) : LibC::Int
  fun get_num_joystick_balls = SDL_GetNumJoystickBalls(joystick : Joystick*) : LibC::Int
  fun get_num_joystick_hats = SDL_GetNumJoystickHats(joystick : Joystick*) : LibC::Int
  fun get_num_joystick_buttons = SDL_GetNumJoystickButtons(joystick : Joystick*) : LibC::Int
  fun set_joystick_events_enabled = SDL_SetJoystickEventsEnabled(enabled : LibC::Char) : Void
  fun joystick_events_enabled = SDL_JoystickEventsEnabled() : LibC::Char
  fun update_joysticks = SDL_UpdateJoysticks() : Void
  fun get_joystick_axis = SDL_GetJoystickAxis(joystick : Joystick*, axis : LibC::Int) : Int16
  fun get_joystick_axis_initial_state = SDL_GetJoystickAxisInitialState(joystick : Joystick*, axis : LibC::Int, state : Int16*) : LibC::Char
  fun get_joystick_ball = SDL_GetJoystickBall(joystick : Joystick*, ball : LibC::Int, dx : LibC::Int*, dy : LibC::Int*) : LibC::Char
  fun get_joystick_hat = SDL_GetJoystickHat(joystick : Joystick*, hat : LibC::Int) : UInt8
  fun get_joystick_button = SDL_GetJoystickButton(joystick : Joystick*, button : LibC::Int) : LibC::Char
  fun rumble_joystick = SDL_RumbleJoystick(joystick : Joystick*, low_frequency_rumble : UInt16, high_frequency_rumble : UInt16, duration_ms : UInt32) : LibC::Char
  fun rumble_joystick_triggers = SDL_RumbleJoystickTriggers(joystick : Joystick*, left_rumble : UInt16, right_rumble : UInt16, duration_ms : UInt32) : LibC::Char
  fun set_joystick_led = SDL_SetJoystickLED(joystick : Joystick*, red : UInt8, green : UInt8, blue : UInt8) : LibC::Char
  fun send_joystick_effect = SDL_SendJoystickEffect(joystick : Joystick*, data : Void*, size : LibC::Int) : LibC::Char
  fun close_joystick = SDL_CloseJoystick(joystick : Joystick*) : Void
  fun get_joystick_connection_state = SDL_GetJoystickConnectionState(joystick : Joystick*) : JoystickConnectionState
  fun get_joystick_power_info = SDL_GetJoystickPowerInfo(joystick : Joystick*, percent : LibC::Int*) : PowerState

  # SDL_keyboard

  PROP_TEXTINPUT_TYPE_NUMBER = "SDL.textinput.type"
  PROP_TEXTINPUT_CAPITALIZATION_NUMBER = "SDL.textinput.capitalization"
  PROP_TEXTINPUT_AUTOCORRECT_BOOLEAN = "SDL.textinput.autocorrect"
  PROP_TEXTINPUT_MULTILINE_BOOLEAN = "SDL.textinput.multiline"
  PROP_TEXTINPUT_ANDROID_INPUTTYPE_NUMBER = "SDL.textinput.android.inputtype"

  alias KeyboardID = UInt32

  enum TextInputType
    TEXTINPUT_TYPE_TEXT
    TEXTINPUT_TYPE_TEXT_NAME
    TEXTINPUT_TYPE_TEXT_EMAIL
    TEXTINPUT_TYPE_TEXT_USERNAME
    TEXTINPUT_TYPE_TEXT_PASSWORD_HIDDEN
    TEXTINPUT_TYPE_TEXT_PASSWORD_VISIBLE
    TEXTINPUT_TYPE_NUMBER
    TEXTINPUT_TYPE_NUMBER_PASSWORD_HIDDEN
    TEXTINPUT_TYPE_NUMBER_PASSWORD_VISIBLE
  end

  enum Capitalization
    CAPITALIZE_NONE
    CAPITALIZE_SENTENCES
    CAPITALIZE_WORDS
    CAPITALIZE_LETTERS
  end

  fun has_keyboard = SDL_HasKeyboard() : LibC::Char
  fun get_keyboards = SDL_GetKeyboards(count : LibC::Int*) : KeyboardID*
  fun get_keyboard_name_for_id = SDL_GetKeyboardNameForID(instance_id : KeyboardID) : LibC::Char*
  fun get_keyboard_focus = SDL_GetKeyboardFocus() : Window*
  fun get_keyboard_state = SDL_GetKeyboardState(numkeys : LibC::Int*) : LibC::Char*
  fun reset_keyboard = SDL_ResetKeyboard() : Void
  fun get_mod_state = SDL_GetModState() : Keymod
  fun set_mod_state = SDL_SetModState(modstate : Keymod) : Void
  fun get_key_from_scancode = SDL_GetKeyFromScancode(scancode : Scancode, modstate : Keymod, key_event : LibC::Char) : Keycode
  fun get_scancode_from_key = SDL_GetScancodeFromKey(key : Keycode, modstate : Keymod*) : Scancode
  fun set_scancode_name = SDL_SetScancodeName(scancode : Scancode, name : LibC::Char*) : LibC::Char
  fun get_scancode_name = SDL_GetScancodeName(scancode : Scancode) : LibC::Char*
  fun get_scancode_from_name = SDL_GetScancodeFromName(name : LibC::Char*) : Scancode
  fun get_key_name = SDL_GetKeyName(key : Keycode) : LibC::Char*
  fun get_key_from_name = SDL_GetKeyFromName(name : LibC::Char*) : Keycode
  fun start_text_input = SDL_StartTextInput(window : Window*) : LibC::Char
  fun start_text_input_with_properties = SDL_StartTextInputWithProperties(window : Window*, props : PropertiesID) : LibC::Char
  fun text_input_active = SDL_TextInputActive(window : Window*) : LibC::Char
  fun stop_text_input = SDL_StopTextInput(window : Window*) : LibC::Char
  fun clear_composition = SDL_ClearComposition(window : Window*) : LibC::Char
  fun set_text_input_area = SDL_SetTextInputArea(window : Window*, rect : Rect*, cursor : LibC::Int) : LibC::Char
  fun get_text_input_area = SDL_GetTextInputArea(window : Window*, rect : Rect*, cursor : LibC::Int*) : LibC::Char
  fun has_screen_keyboard_support = SDL_HasScreenKeyboardSupport() : LibC::Char
  fun screen_keyboard_shown = SDL_ScreenKeyboardShown(window : Window*) : LibC::Char

  # SDL_keycode

  K_SCANCODE_MASK = (1 << 30)
  K_UNKNOWN = 0x00000000
  K_RETURN = 0x0000000d
  K_ESCAPE = 0x0000001b
  K_BACKSPACE = 0x00000008
  K_TAB = 0x00000009
  K_SPACE = 0x00000020
  K_EXCLAIM = 0x00000021
  K_DBLAPOSTROPHE = 0x00000022
  K_HASH = 0x00000023
  K_DOLLAR = 0x00000024
  K_PERCENT = 0x00000025
  K_AMPERSAND = 0x00000026
  K_APOSTROPHE = 0x00000027
  K_LEFTPAREN = 0x00000028
  K_RIGHTPAREN = 0x00000029
  K_ASTERISK = 0x0000002a
  K_PLUS = 0x0000002b
  K_COMMA = 0x0000002c
  K_MINUS = 0x0000002d
  K_PERIOD = 0x0000002e
  K_SLASH = 0x0000002f
  K_0 = 0x00000030
  K_1 = 0x00000031
  K_2 = 0x00000032
  K_3 = 0x00000033
  K_4 = 0x00000034
  K_5 = 0x00000035
  K_6 = 0x00000036
  K_7 = 0x00000037
  K_8 = 0x00000038
  K_9 = 0x00000039
  K_COLON = 0x0000003a
  K_SEMICOLON = 0x0000003b
  K_LESS = 0x0000003c
  K_EQUALS = 0x0000003d
  K_GREATER = 0x0000003e
  K_QUESTION = 0x0000003f
  K_AT = 0x00000040
  K_LEFTBRACKET = 0x0000005b
  K_BACKSLASH = 0x0000005c
  K_RIGHTBRACKET = 0x0000005d
  K_CARET = 0x0000005e
  K_UNDERSCORE = 0x0000005f
  K_GRAVE = 0x00000060
  K_A = 0x00000061
  K_B = 0x00000062
  K_C = 0x00000063
  K_D = 0x00000064
  K_E = 0x00000065
  K_F = 0x00000066
  K_G = 0x00000067
  K_H = 0x00000068
  K_I = 0x00000069
  K_J = 0x0000006a
  K_K = 0x0000006b
  K_L = 0x0000006c
  K_M = 0x0000006d
  K_N = 0x0000006e
  K_O = 0x0000006f
  K_P = 0x00000070
  K_Q = 0x00000071
  K_R = 0x00000072
  K_S = 0x00000073
  K_T = 0x00000074
  K_U = 0x00000075
  K_V = 0x00000076
  K_W = 0x00000077
  K_X = 0x00000078
  K_Y = 0x00000079
  K_Z = 0x0000007a
  K_LEFTBRACE = 0x0000007b
  K_PIPE = 0x0000007c
  K_RIGHTBRACE = 0x0000007d
  K_TILDE = 0x0000007e
  K_DELETE = 0x0000007f
  K_PLUSMINUS = 0x000000b1
  K_CAPSLOCK = 0x40000039
  K_F1 = 0x4000003a
  K_F2 = 0x4000003b
  K_F3 = 0x4000003c
  K_F4 = 0x4000003d
  K_F5 = 0x4000003e
  K_F6 = 0x4000003f
  K_F7 = 0x40000040
  K_F8 = 0x40000041
  K_F9 = 0x40000042
  K_F10 = 0x40000043
  K_F11 = 0x40000044
  K_F12 = 0x40000045
  K_PRINTSCREEN = 0x40000046
  K_SCROLLLOCK = 0x40000047
  K_PAUSE = 0x40000048
  K_INSERT = 0x40000049
  K_HOME = 0x4000004a
  K_PAGEUP = 0x4000004b
  K_END = 0x4000004d
  K_PAGEDOWN = 0x4000004e
  K_RIGHT = 0x4000004f
  K_LEFT = 0x40000050
  K_DOWN = 0x40000051
  K_UP = 0x40000052
  K_NUMLOCKCLEAR = 0x40000053
  K_KP_DIVIDE = 0x40000054
  K_KP_MULTIPLY = 0x40000055
  K_KP_MINUS = 0x40000056
  K_KP_PLUS = 0x40000057
  K_KP_ENTER = 0x40000058
  K_KP_1 = 0x40000059
  K_KP_2 = 0x4000005a
  K_KP_3 = 0x4000005b
  K_KP_4 = 0x4000005c
  K_KP_5 = 0x4000005d
  K_KP_6 = 0x4000005e
  K_KP_7 = 0x4000005f
  K_KP_8 = 0x40000060
  K_KP_9 = 0x40000061
  K_KP_0 = 0x40000062
  K_KP_PERIOD = 0x40000063
  K_APPLICATION = 0x40000065
  K_POWER = 0x40000066
  K_KP_EQUALS = 0x40000067
  K_F13 = 0x40000068
  K_F14 = 0x40000069
  K_F15 = 0x4000006a
  K_F16 = 0x4000006b
  K_F17 = 0x4000006c
  K_F18 = 0x4000006d
  K_F19 = 0x4000006e
  K_F20 = 0x4000006f
  K_F21 = 0x40000070
  K_F22 = 0x40000071
  K_F23 = 0x40000072
  K_F24 = 0x40000073
  K_EXECUTE = 0x40000074
  K_HELP = 0x40000075
  K_MENU = 0x40000076
  K_SELECT = 0x40000077
  K_STOP = 0x40000078
  K_AGAIN = 0x40000079
  K_UNDO = 0x4000007a
  K_CUT = 0x4000007b
  K_COPY = 0x4000007c
  K_PASTE = 0x4000007d
  K_FIND = 0x4000007e
  K_MUTE = 0x4000007f
  K_VOLUMEUP = 0x40000080
  K_VOLUMEDOWN = 0x40000081
  K_KP_COMMA = 0x40000085
  K_KP_EQUALSAS400 = 0x40000086
  K_ALTERASE = 0x40000099
  K_SYSREQ = 0x4000009a
  K_CANCEL = 0x4000009b
  K_CLEAR = 0x4000009c
  K_PRIOR = 0x4000009d
  K_RETURN2 = 0x4000009e
  K_SEPARATOR = 0x4000009f
  K_OUT = 0x400000a0
  K_OPER = 0x400000a1
  K_CLEARAGAIN = 0x400000a2
  K_CRSEL = 0x400000a3
  K_EXSEL = 0x400000a4
  K_KP_00 = 0x400000b0
  K_KP_000 = 0x400000b1
  K_THOUSANDSSEPARATOR = 0x400000b2
  K_DECIMALSEPARATOR = 0x400000b3
  K_CURRENCYUNIT = 0x400000b4
  K_CURRENCYSUBUNIT = 0x400000b5
  K_KP_LEFTPAREN = 0x400000b6
  K_KP_RIGHTPAREN = 0x400000b7
  K_KP_LEFTBRACE = 0x400000b8
  K_KP_RIGHTBRACE = 0x400000b9
  K_KP_TAB = 0x400000ba
  K_KP_BACKSPACE = 0x400000bb
  K_KP_A = 0x400000bc
  K_KP_B = 0x400000bd
  K_KP_C = 0x400000be
  K_KP_D = 0x400000bf
  K_KP_E = 0x400000c0
  K_KP_F = 0x400000c1
  K_KP_XOR = 0x400000c2
  K_KP_POWER = 0x400000c3
  K_KP_PERCENT = 0x400000c4
  K_KP_LESS = 0x400000c5
  K_KP_GREATER = 0x400000c6
  K_KP_AMPERSAND = 0x400000c7
  K_KP_DBLAMPERSAND = 0x400000c8
  K_KP_VERTICALBAR = 0x400000c9
  K_KP_DBLVERTICALBAR = 0x400000ca
  K_KP_COLON = 0x400000cb
  K_KP_HASH = 0x400000cc
  K_KP_SPACE = 0x400000cd
  K_KP_AT = 0x400000ce
  K_KP_EXCLAM = 0x400000cf
  K_KP_MEMSTORE = 0x400000d0
  K_KP_MEMRECALL = 0x400000d1
  K_KP_MEMCLEAR = 0x400000d2
  K_KP_MEMADD = 0x400000d3
  K_KP_MEMSUBTRACT = 0x400000d4
  K_KP_MEMMULTIPLY = 0x400000d5
  K_KP_MEMDIVIDE = 0x400000d6
  K_KP_PLUSMINUS = 0x400000d7
  K_KP_CLEAR = 0x400000d8
  K_KP_CLEARENTRY = 0x400000d9
  K_KP_BINARY = 0x400000da
  K_KP_OCTAL = 0x400000db
  K_KP_DECIMAL = 0x400000dc
  K_KP_HEXADECIMAL = 0x400000dd
  K_LCTRL = 0x400000e0
  K_LSHIFT = 0x400000e1
  K_LALT = 0x400000e2
  K_LGUI = 0x400000e3
  K_RCTRL = 0x400000e4
  K_RSHIFT = 0x400000e5
  K_RALT = 0x400000e6
  K_RGUI = 0x400000e7
  K_MODE = 0x40000101
  K_SLEEP = 0x40000102
  K_WAKE = 0x40000103
  K_CHANNEL_INCREMENT = 0x40000104
  K_CHANNEL_DECREMENT = 0x40000105
  K_MEDIA_PLAY = 0x40000106
  K_MEDIA_PAUSE = 0x40000107
  K_MEDIA_RECORD = 0x40000108
  K_MEDIA_FAST_FORWARD = 0x40000109
  K_MEDIA_REWIND = 0x4000010a
  K_MEDIA_NEXT_TRACK = 0x4000010b
  K_MEDIA_PREVIOUS_TRACK = 0x4000010c
  K_MEDIA_STOP = 0x4000010d
  K_MEDIA_EJECT = 0x4000010e
  K_MEDIA_PLAY_PAUSE = 0x4000010f
  K_MEDIA_SELECT = 0x40000110
  K_AC_NEW = 0x40000111
  K_AC_OPEN = 0x40000112
  K_AC_CLOSE = 0x40000113
  K_AC_EXIT = 0x40000114
  K_AC_SAVE = 0x40000115
  K_AC_PRINT = 0x40000116
  K_AC_PROPERTIES = 0x40000117
  K_AC_SEARCH = 0x40000118
  K_AC_HOME = 0x40000119
  K_AC_BACK = 0x4000011a
  K_AC_FORWARD = 0x4000011b
  K_AC_STOP = 0x4000011c
  K_AC_REFRESH = 0x4000011d
  K_AC_BOOKMARKS = 0x4000011e
  K_SOFTLEFT = 0x4000011f
  K_SOFTRIGHT = 0x40000120
  K_CALL = 0x40000121
  K_ENDCALL = 0x40000122
  KMOD_NONE = 0x0000
  KMOD_LSHIFT = 0x0001
  KMOD_RSHIFT = 0x0002
  KMOD_LCTRL = 0x0040
  KMOD_RCTRL = 0x0080
  KMOD_LALT = 0x0100
  KMOD_RALT = 0x0200
  KMOD_LGUI = 0x0400
  KMOD_RGUI = 0x0800
  KMOD_NUM = 0x1000
  KMOD_CAPS = 0x2000
  KMOD_MODE = 0x4000
  KMOD_SCROLL = 0x8000
  KMOD_CTRL = (KMOD_LCTRL | KMOD_RCTRL)
  KMOD_SHIFT = (KMOD_LSHIFT | KMOD_RSHIFT)
  KMOD_ALT = (KMOD_LALT | KMOD_RALT)
  KMOD_GUI = (KMOD_LGUI | KMOD_RGUI)

  alias Keycode = UInt32
  alias Keymod = UInt16

  # SDL_loadso

  alias SharedObject = Void

  fun load_object = SDL_LoadObject(sofile : LibC::Char*) : SharedObject*
  fun load_function = SDL_LoadFunction(handle : SharedObject*, name : LibC::Char*) : FunctionPointer
  fun unload_object = SDL_UnloadObject(handle : SharedObject*) : Void

  # SDL_locale

  struct Locale
    language : LibC::Char*
    country : LibC::Char*
  end

  fun get_preferred_locales = SDL_GetPreferredLocales(count : LibC::Int*) : Locale**

  # additions/helper_log.cr

  # (void* userdata, int category, SDL_LogPriority priority, const char* message)
  alias LogOutputFunction = (Void*, LibC::Int, LogPriority, LibC::Char*) -> Void

  # SDL_log

  enum LogCategory
    LOG_CATEGORY_APPLICATION
    LOG_CATEGORY_ERROR
    LOG_CATEGORY_ASSERT
    LOG_CATEGORY_SYSTEM
    LOG_CATEGORY_AUDIO
    LOG_CATEGORY_VIDEO
    LOG_CATEGORY_RENDER
    LOG_CATEGORY_INPUT
    LOG_CATEGORY_TEST
    LOG_CATEGORY_GPU
    LOG_CATEGORY_RESERVED2
    LOG_CATEGORY_RESERVED3
    LOG_CATEGORY_RESERVED4
    LOG_CATEGORY_RESERVED5
    LOG_CATEGORY_RESERVED6
    LOG_CATEGORY_RESERVED7
    LOG_CATEGORY_RESERVED8
    LOG_CATEGORY_RESERVED9
    LOG_CATEGORY_RESERVED10
    LOG_CATEGORY_CUSTOM
  end

  enum LogPriority
    LOG_PRIORITY_INVALID
    LOG_PRIORITY_TRACE
    LOG_PRIORITY_VERBOSE
    LOG_PRIORITY_DEBUG
    LOG_PRIORITY_INFO
    LOG_PRIORITY_WARN
    LOG_PRIORITY_ERROR
    LOG_PRIORITY_CRITICAL
    LOG_PRIORITY_COUNT
  end

  fun set_log_priorities = SDL_SetLogPriorities(priority : LogPriority) : Void
  fun set_log_priority = SDL_SetLogPriority(category : LibC::Int, priority : LogPriority) : Void
  fun get_log_priority = SDL_GetLogPriority(category : LibC::Int) : LogPriority
  fun reset_log_priorities = SDL_ResetLogPriorities() : Void
  fun set_log_priority_prefix = SDL_SetLogPriorityPrefix(priority : LogPriority, prefix : LibC::Char*) : LibC::Char
  fun log = SDL_Log(fmt : LibC::Char*, ...) : Void
  fun log_trace = SDL_LogTrace(category : LibC::Int, fmt : LibC::Char*, ...) : Void
  fun log_verbose = SDL_LogVerbose(category : LibC::Int, fmt : LibC::Char*, ...) : Void
  fun log_debug = SDL_LogDebug(category : LibC::Int, fmt : LibC::Char*, ...) : Void
  fun log_info = SDL_LogInfo(category : LibC::Int, fmt : LibC::Char*, ...) : Void
  fun log_warn = SDL_LogWarn(category : LibC::Int, fmt : LibC::Char*, ...) : Void
  fun log_error = SDL_LogError(category : LibC::Int, fmt : LibC::Char*, ...) : Void
  fun log_critical = SDL_LogCritical(category : LibC::Int, fmt : LibC::Char*, ...) : Void
  fun log_message = SDL_LogMessage(category : LibC::Int, priority : LogPriority, fmt : LibC::Char*, ...) : Void
  fun get_default_log_output_function = SDL_GetDefaultLogOutputFunction() : LogOutputFunction
  fun get_log_output_function = SDL_GetLogOutputFunction(callback : LogOutputFunction*, userdata : Void**) : Void
  fun set_log_output_function = SDL_SetLogOutputFunction(callback : LogOutputFunction, userdata : Void*) : Void

  # additions/helper_main.cr

  # (int argc, char* argv[])
  alias MainFunc = (LibC::Int, LibC::Char**) -> LibC::Int

  fun run_app = SDL_RunApp(argc : LibC::Int, argv : LibC::Char**, main_function : MainFunc, reserved : Void*) : LibC::Int
  fun enter_app_main_callbacks = SDL_EnterAppMainCallbacks(argc : LibC::Int, argv : LibC::Char**, appinit : AppInitFunc, appiter : AppIterateFunc, appevent : AppEventFunc, appquit : AppQuitFunc) : LibC::Int

  # SDL_main

  fun set_main_ready = SDL_SetMainReady() : Void
  fun register_app = SDL_RegisterApp(name : LibC::Char*, style : UInt32, h_inst : Void*) : LibC::Char
  fun unregister_app = SDL_UnregisterApp() : Void
  fun gdksuspend_complete = SDL_GDKSuspendComplete() : Void

  # additions/helper_messagebox.cr

  struct MessageBoxColorScheme
    colors : MessageBoxColor[MessageBoxColorType::MESSAGEBOX_COLOR_COUNT]
  end

  # SDL_messagebox

  MESSAGEBOX_ERROR = 0x00000010
  MESSAGEBOX_WARNING = 0x00000020
  MESSAGEBOX_INFORMATION = 0x00000040
  MESSAGEBOX_BUTTONS_LEFT_TO_RIGHT = 0x00000080
  MESSAGEBOX_BUTTONS_RIGHT_TO_LEFT = 0x00000100
  MESSAGEBOX_BUTTON_RETURNKEY_DEFAULT = 0x00000001
  MESSAGEBOX_BUTTON_ESCAPEKEY_DEFAULT = 0x00000002

  alias MessageBoxFlags = UInt32
  alias MessageBoxButtonFlags = UInt32

  enum MessageBoxColorType
    MESSAGEBOX_COLOR_BACKGROUND
    MESSAGEBOX_COLOR_TEXT
    MESSAGEBOX_COLOR_BUTTON_BORDER
    MESSAGEBOX_COLOR_BUTTON_BACKGROUND
    MESSAGEBOX_COLOR_BUTTON_SELECTED
    MESSAGEBOX_COLOR_COUNT
  end

  struct MessageBoxButtonData
    flags : MessageBoxButtonFlags
    button_id : LibC::Int
    text : LibC::Char*
  end

  struct MessageBoxColor
    r : UInt8
    g : UInt8
    b : UInt8
  end

  struct MessageBoxData
    flags : MessageBoxFlags
    window : Window*
    title : LibC::Char*
    message : LibC::Char*
    numbuttons : LibC::Int
    buttons : MessageBoxButtonData*
    color_scheme : MessageBoxColorScheme*
  end

  fun show_message_box = SDL_ShowMessageBox(messageboxdata : MessageBoxData*, buttonid : LibC::Int*) : LibC::Char
  fun show_simple_message_box = SDL_ShowSimpleMessageBox(flags : MessageBoxFlags, title : LibC::Char*, message : LibC::Char*, window : Window*) : LibC::Char

  # SDL_metal

  alias MetalView = Void*

  fun metal_create_view = SDL_Metal_CreateView(window : Window*) : MetalView
  fun metal_destroy_view = SDL_Metal_DestroyView(view : MetalView) : Void
  fun metal_get_layer = SDL_Metal_GetLayer(view : MetalView) : Void*

  # SDL_misc

  fun open_url = SDL_OpenURL(url : LibC::Char*) : LibC::Char

  # SDL_mouse

  BUTTON_LEFT = 1
  BUTTON_MIDDLE = 2
  BUTTON_RIGHT = 3
  BUTTON_X1 = 4
  BUTTON_X2 = 5
  BUTTON_LMASK = BUTTON_MASK(BUTTON_LEFT)
  BUTTON_MMASK = BUTTON_MASK(BUTTON_MIDDLE)
  BUTTON_RMASK = BUTTON_MASK(BUTTON_RIGHT)
  BUTTON_X1MASK = BUTTON_MASK(BUTTON_X1)
  BUTTON_X2MASK = BUTTON_MASK(BUTTON_X2)

  alias Cursor = Void
  alias MouseID = UInt32
  alias MouseButtonFlags = UInt32

  enum SystemCursor
    SYSTEM_CURSOR_DEFAULT
    SYSTEM_CURSOR_TEXT
    SYSTEM_CURSOR_WAIT
    SYSTEM_CURSOR_CROSSHAIR
    SYSTEM_CURSOR_PROGRESS
    SYSTEM_CURSOR_NWSE_RESIZE
    SYSTEM_CURSOR_NESW_RESIZE
    SYSTEM_CURSOR_EW_RESIZE
    SYSTEM_CURSOR_NS_RESIZE
    SYSTEM_CURSOR_MOVE
    SYSTEM_CURSOR_NOT_ALLOWED
    SYSTEM_CURSOR_POINTER
    SYSTEM_CURSOR_NW_RESIZE
    SYSTEM_CURSOR_N_RESIZE
    SYSTEM_CURSOR_NE_RESIZE
    SYSTEM_CURSOR_E_RESIZE
    SYSTEM_CURSOR_SE_RESIZE
    SYSTEM_CURSOR_S_RESIZE
    SYSTEM_CURSOR_SW_RESIZE
    SYSTEM_CURSOR_W_RESIZE
    SYSTEM_CURSOR_COUNT
  end

  enum MouseWheelDirection
    MOUSEWHEEL_NORMAL
    MOUSEWHEEL_FLIPPED
  end

  fun has_mouse = SDL_HasMouse() : LibC::Char
  fun get_mice = SDL_GetMice(count : LibC::Int*) : MouseID*
  fun get_mouse_name_for_id = SDL_GetMouseNameForID(instance_id : MouseID) : LibC::Char*
  fun get_mouse_focus = SDL_GetMouseFocus() : Window*
  fun get_mouse_state = SDL_GetMouseState(x : LibC::Float*, y : LibC::Float*) : MouseButtonFlags
  fun get_global_mouse_state = SDL_GetGlobalMouseState(x : LibC::Float*, y : LibC::Float*) : MouseButtonFlags
  fun get_relative_mouse_state = SDL_GetRelativeMouseState(x : LibC::Float*, y : LibC::Float*) : MouseButtonFlags
  fun warp_mouse_in_window = SDL_WarpMouseInWindow(window : Window*, x : LibC::Float, y : LibC::Float) : Void
  fun warp_mouse_global = SDL_WarpMouseGlobal(x : LibC::Float, y : LibC::Float) : LibC::Char
  fun set_window_relative_mouse_mode = SDL_SetWindowRelativeMouseMode(window : Window*, enabled : LibC::Char) : LibC::Char
  fun get_window_relative_mouse_mode = SDL_GetWindowRelativeMouseMode(window : Window*) : LibC::Char
  fun capture_mouse = SDL_CaptureMouse(enabled : LibC::Char) : LibC::Char
  fun create_cursor = SDL_CreateCursor(data : UInt8*, mask : UInt8*, w : LibC::Int, h : LibC::Int, hot_x : LibC::Int, hot_y : LibC::Int) : Cursor*
  fun create_color_cursor = SDL_CreateColorCursor(surface : Surface*, hot_x : LibC::Int, hot_y : LibC::Int) : Cursor*
  fun create_system_cursor = SDL_CreateSystemCursor(id : SystemCursor) : Cursor*
  fun set_cursor = SDL_SetCursor(cursor : Cursor*) : LibC::Char
  fun get_cursor = SDL_GetCursor() : Cursor*
  fun get_default_cursor = SDL_GetDefaultCursor() : Cursor*
  fun destroy_cursor = SDL_DestroyCursor(cursor : Cursor*) : Void
  fun show_cursor = SDL_ShowCursor() : LibC::Char
  fun hide_cursor = SDL_HideCursor() : LibC::Char
  fun cursor_visible = SDL_CursorVisible() : LibC::Char

  # SDL_pen

  PEN_INPUT_DOWN = (1 << 0)
  PEN_INPUT_BUTTON_1 = (1 << 1)
  PEN_INPUT_BUTTON_2 = (1 << 2)
  PEN_INPUT_BUTTON_3 = (1 << 3)
  PEN_INPUT_BUTTON_4 = (1 << 4)
  PEN_INPUT_BUTTON_5 = (1 << 5)
  PEN_INPUT_ERASER_TIP = (1 << 30)

  alias PenID = UInt32
  alias PenInputFlags = UInt32

  enum PenAxis
    PEN_AXIS_PRESSURE
    PEN_AXIS_XTILT
    PEN_AXIS_YTILT
    PEN_AXIS_DISTANCE
    PEN_AXIS_ROTATION
    PEN_AXIS_SLIDER
    PEN_AXIS_TANGENTIAL_PRESSURE
    PEN_AXIS_COUNT
  end

  # additions/helper_pixels.cr

  enum PixelFormat
    SDL_PIXELFORMAT_UNKNOWN = 0
    SDL_PIXELFORMAT_INDEX1LSB = 0x11100100
    SDL_PIXELFORMAT_INDEX1MSB = 0x11200100
    SDL_PIXELFORMAT_INDEX2LSB = 0x1c100200
    SDL_PIXELFORMAT_INDEX2MSB = 0x1c200200
    SDL_PIXELFORMAT_INDEX4LSB = 0x12100400
    SDL_PIXELFORMAT_INDEX4MSB = 0x12200400
    SDL_PIXELFORMAT_INDEX8 = 0x13000801
    SDL_PIXELFORMAT_RGB332 = 0x14110801
    SDL_PIXELFORMAT_XRGB4444 = 0x15120c02
    SDL_PIXELFORMAT_XBGR4444 = 0x15520c02
    SDL_PIXELFORMAT_XRGB1555 = 0x15130f02
    SDL_PIXELFORMAT_XBGR1555 = 0x15530f02
    SDL_PIXELFORMAT_ARGB4444 = 0x15321002
    SDL_PIXELFORMAT_RGBA4444 = 0x15421002
    SDL_PIXELFORMAT_ABGR4444 = 0x15721002
    SDL_PIXELFORMAT_BGRA4444 = 0x15821002
    SDL_PIXELFORMAT_ARGB1555 = 0x15331002
    SDL_PIXELFORMAT_RGBA5551 = 0x15441002
    SDL_PIXELFORMAT_ABGR1555 = 0x15731002
    SDL_PIXELFORMAT_BGRA5551 = 0x15841002
    SDL_PIXELFORMAT_RGB565 = 0x15151002
    SDL_PIXELFORMAT_BGR565 = 0x15551002
    SDL_PIXELFORMAT_RGB24 = 0x17101803
    SDL_PIXELFORMAT_BGR24 = 0x17401803
    SDL_PIXELFORMAT_XRGB8888 = 0x16161804
    SDL_PIXELFORMAT_RGBX8888 = 0x16261804
    SDL_PIXELFORMAT_XBGR8888 = 0x16561804
    SDL_PIXELFORMAT_BGRX8888 = 0x16661804
    SDL_PIXELFORMAT_ARGB8888 = 0x16362004
    SDL_PIXELFORMAT_RGBA8888 = 0x16462004
    SDL_PIXELFORMAT_ABGR8888 = 0x16762004
    SDL_PIXELFORMAT_BGRA8888 = 0x16862004
    SDL_PIXELFORMAT_XRGB2101010 = 0x16172004
    SDL_PIXELFORMAT_XBGR2101010 = 0x16572004
    SDL_PIXELFORMAT_ARGB2101010 = 0x16372004
    SDL_PIXELFORMAT_ABGR2101010 = 0x16772004
    SDL_PIXELFORMAT_RGB48 = 0x18103006
    SDL_PIXELFORMAT_BGR48 = 0x18403006
    SDL_PIXELFORMAT_RGBA64 = 0x18204008
    SDL_PIXELFORMAT_ARGB64 = 0x18304008
    SDL_PIXELFORMAT_BGRA64 = 0x18504008
    SDL_PIXELFORMAT_ABGR64 = 0x18604008
    SDL_PIXELFORMAT_RGB48_FLOAT = 0x1a103006
    SDL_PIXELFORMAT_BGR48_FLOAT = 0x1a403006
    SDL_PIXELFORMAT_RGBA64_FLOAT = 0x1a204008
    SDL_PIXELFORMAT_ARGB64_FLOAT = 0x1a304008
    SDL_PIXELFORMAT_BGRA64_FLOAT = 0x1a504008
    SDL_PIXELFORMAT_ABGR64_FLOAT = 0x1a604008
    SDL_PIXELFORMAT_RGB96_FLOAT = 0x1b10600c
    SDL_PIXELFORMAT_BGR96_FLOAT = 0x1b40600c
    SDL_PIXELFORMAT_RGBA128_FLOAT = 0x1b208010
    SDL_PIXELFORMAT_ARGB128_FLOAT = 0x1b308010
    SDL_PIXELFORMAT_BGRA128_FLOAT = 0x1b508010
    SDL_PIXELFORMAT_ABGR128_FLOAT = 0x1b608010
    SDL_PIXELFORMAT_YV12 = 0x32315659
    SDL_PIXELFORMAT_IYUV = 0x56555949
    SDL_PIXELFORMAT_YUY2 = 0x32595559
    SDL_PIXELFORMAT_UYVY = 0x59565955
    SDL_PIXELFORMAT_YVYU = 0x55595659
    SDL_PIXELFORMAT_NV12 = 0x3231564e
    SDL_PIXELFORMAT_NV21 = 0x3132564e
    SDL_PIXELFORMAT_P010 = 0x30313050
    SDL_PIXELFORMAT_EXTERNAL_OES = 0x2053454f
    # NOTE: The following definitions ONLY hold for little endian - if you are using big endian (why), please open an issue report
    SDL_PIXELFORMAT_RGBA32 = SDL_PIXELFORMAT_ABGR8888
    SDL_PIXELFORMAT_ARGB32 = SDL_PIXELFORMAT_BGRA8888
    SDL_PIXELFORMAT_BGRA32 = SDL_PIXELFORMAT_ARGB8888
    SDL_PIXELFORMAT_ABGR32 = SDL_PIXELFORMAT_RGBA8888
    SDL_PIXELFORMAT_RGBX32 = SDL_PIXELFORMAT_XBGR8888
    SDL_PIXELFORMAT_XRGB32 = SDL_PIXELFORMAT_BGRX8888
    SDL_PIXELFORMAT_BGRX32 = SDL_PIXELFORMAT_XRGB8888
    SDL_PIXELFORMAT_XBGR32 = SDL_PIXELFORMAT_RGBX8888
  end

  # SDL_pixels

  ALPHA_OPAQUE = 255
  ALPHA_OPAQUE_FLOAT = 1.0
  ALPHA_TRANSPARENT = 0
  ALPHA_TRANSPARENT_FLOAT = 0.0

  enum PixelType
    PIXELTYPE_UNKNOWN
    PIXELTYPE_INDEX1
    PIXELTYPE_INDEX4
    PIXELTYPE_INDEX8
    PIXELTYPE_PACKED8
    PIXELTYPE_PACKED16
    PIXELTYPE_PACKED32
    PIXELTYPE_ARRAYU8
    PIXELTYPE_ARRAYU16
    PIXELTYPE_ARRAYU32
    PIXELTYPE_ARRAYF16
    PIXELTYPE_ARRAYF32
    PIXELTYPE_INDEX2
  end

  enum BitmapOrder
    BITMAPORDER_NONE
    BITMAPORDER_4321
    BITMAPORDER_1234
  end

  enum PackedOrder
    PACKEDORDER_NONE
    PACKEDORDER_XRGB
    PACKEDORDER_RGBX
    PACKEDORDER_ARGB
    PACKEDORDER_RGBA
    PACKEDORDER_XBGR
    PACKEDORDER_BGRX
    PACKEDORDER_ABGR
    PACKEDORDER_BGRA
  end

  enum ArrayOrder
    ARRAYORDER_NONE
    ARRAYORDER_RGB
    ARRAYORDER_RGBA
    ARRAYORDER_ARGB
    ARRAYORDER_BGR
    ARRAYORDER_BGRA
    ARRAYORDER_ABGR
  end

  enum PackedLayout
    PACKEDLAYOUT_NONE
    PACKEDLAYOUT_332
    PACKEDLAYOUT_4444
    PACKEDLAYOUT_1555
    PACKEDLAYOUT_5551
    PACKEDLAYOUT_565
    PACKEDLAYOUT_8888
    PACKEDLAYOUT_2101010
    PACKEDLAYOUT_1010102
  end

  enum ColorType
    COLOR_TYPE_UNKNOWN = 0
    COLOR_TYPE_RGB = 1
    COLOR_TYPE_YCBCR = 2
  end

  enum ColorRange
    COLOR_RANGE_UNKNOWN = 0
    COLOR_RANGE_LIMITED = 1
    COLOR_RANGE_FULL = 2
  end

  enum ColorPrimaries
    COLOR_PRIMARIES_UNKNOWN = 0
    COLOR_PRIMARIES_BT709 = 1
    COLOR_PRIMARIES_UNSPECIFIED = 2
    COLOR_PRIMARIES_BT470M = 4
    COLOR_PRIMARIES_BT470BG = 5
    COLOR_PRIMARIES_BT601 = 6
    COLOR_PRIMARIES_SMPTE240 = 7
    COLOR_PRIMARIES_GENERIC_FILM = 8
    COLOR_PRIMARIES_BT2020 = 9
    COLOR_PRIMARIES_XYZ = 10
    COLOR_PRIMARIES_SMPTE431 = 11
    COLOR_PRIMARIES_SMPTE432 = 12
    COLOR_PRIMARIES_EBU3213 = 22
    COLOR_PRIMARIES_CUSTOM = 31
  end

  enum TransferCharacteristics
    TRANSFER_CHARACTERISTICS_UNKNOWN = 0
    TRANSFER_CHARACTERISTICS_BT709 = 1
    TRANSFER_CHARACTERISTICS_UNSPECIFIED = 2
    TRANSFER_CHARACTERISTICS_GAMMA22 = 4
    TRANSFER_CHARACTERISTICS_GAMMA28 = 5
    TRANSFER_CHARACTERISTICS_BT601 = 6
    TRANSFER_CHARACTERISTICS_SMPTE240 = 7
    TRANSFER_CHARACTERISTICS_LINEAR = 8
    TRANSFER_CHARACTERISTICS_LOG100 = 9
    TRANSFER_CHARACTERISTICS_LOG100_SQRT10 = 10
    TRANSFER_CHARACTERISTICS_IEC61966 = 11
    TRANSFER_CHARACTERISTICS_BT1361 = 12
    TRANSFER_CHARACTERISTICS_SRGB = 13
    TRANSFER_CHARACTERISTICS_BT2020_10BIT = 14
    TRANSFER_CHARACTERISTICS_BT2020_12BIT = 15
    TRANSFER_CHARACTERISTICS_PQ = 16
    TRANSFER_CHARACTERISTICS_SMPTE428 = 17
    TRANSFER_CHARACTERISTICS_HLG = 18
    TRANSFER_CHARACTERISTICS_CUSTOM = 31
  end

  enum MatrixCoefficients
    MATRIX_COEFFICIENTS_IDENTITY = 0
    MATRIX_COEFFICIENTS_BT709 = 1
    MATRIX_COEFFICIENTS_UNSPECIFIED = 2
    MATRIX_COEFFICIENTS_FCC = 4
    MATRIX_COEFFICIENTS_BT470BG = 5
    MATRIX_COEFFICIENTS_BT601 = 6
    MATRIX_COEFFICIENTS_SMPTE240 = 7
    MATRIX_COEFFICIENTS_YCGCO = 8
    MATRIX_COEFFICIENTS_BT2020_NCL = 9
    MATRIX_COEFFICIENTS_BT2020_CL = 10
    MATRIX_COEFFICIENTS_SMPTE2085 = 11
    MATRIX_COEFFICIENTS_CHROMA_DERIVED_NCL = 12
    MATRIX_COEFFICIENTS_CHROMA_DERIVED_CL = 13
    MATRIX_COEFFICIENTS_ICTCP = 14
    MATRIX_COEFFICIENTS_CUSTOM = 31
  end

  enum ChromaLocation
    CHROMA_LOCATION_NONE = 0
    CHROMA_LOCATION_LEFT = 1
    CHROMA_LOCATION_CENTER = 2
    CHROMA_LOCATION_TOPLEFT = 3
  end

  enum Colorspace
    COLORSPACE_UNKNOWN = 0
    COLORSPACE_SRGB = 0x120005a0
    COLORSPACE_SRGB_LINEAR = 0x12000500
    COLORSPACE_HDR10 = 0x12002600
    COLORSPACE_JPEG = 0x220004c6
    COLORSPACE_BT601_LIMITED = 0x211018c6
    COLORSPACE_BT601_FULL = 0x221018c6
    COLORSPACE_BT709_LIMITED = 0x21100421
    COLORSPACE_BT709_FULL = 0x22100421
    COLORSPACE_BT2020_LIMITED = 0x21102609
    COLORSPACE_BT2020_FULL = 0x22102609
    COLORSPACE_RGB_DEFAULT = COLORSPACE_SRGB
    COLORSPACE_YUV_DEFAULT = COLORSPACE_JPEG
  end

  struct Color
    r : UInt8
    g : UInt8
    b : UInt8
    a : UInt8
  end

  struct FColor
    r : LibC::Float
    g : LibC::Float
    b : LibC::Float
    a : LibC::Float
  end

  struct Palette
    ncolors : LibC::Int
    colors : Color*
    version : UInt32
    refcount : LibC::Int
  end

  struct PixelFormatDetails
    format : PixelFormat
    bits_per_pixel : UInt8
    bytes_per_pixel : UInt8
    padding : UInt8[2]
    rmask : UInt32
    gmask : UInt32
    bmask : UInt32
    amask : UInt32
    rbits : UInt8
    gbits : UInt8
    bbits : UInt8
    abits : UInt8
    rshift : UInt8
    gshift : UInt8
    bshift : UInt8
    ashift : UInt8
  end

  fun get_pixel_format_name = SDL_GetPixelFormatName(format : PixelFormat) : LibC::Char*
  fun get_masks_for_pixel_format = SDL_GetMasksForPixelFormat(format : PixelFormat, bpp : LibC::Int*, rmask : UInt32*, gmask : UInt32*, bmask : UInt32*, amask : UInt32*) : LibC::Char
  fun get_pixel_format_for_masks = SDL_GetPixelFormatForMasks(bpp : LibC::Int, rmask : UInt32, gmask : UInt32, bmask : UInt32, amask : UInt32) : PixelFormat
  fun get_pixel_format_details = SDL_GetPixelFormatDetails(format : PixelFormat) : PixelFormatDetails*
  fun create_palette = SDL_CreatePalette(ncolors : LibC::Int) : Palette*
  fun set_palette_colors = SDL_SetPaletteColors(palette : Palette*, colors : Color*, firstcolor : LibC::Int, ncolors : LibC::Int) : LibC::Char
  fun destroy_palette = SDL_DestroyPalette(palette : Palette*) : Void
  fun map_rgb = SDL_MapRGB(format : PixelFormatDetails*, palette : Palette*, r : UInt8, g : UInt8, b : UInt8) : UInt32
  fun map_rgba = SDL_MapRGBA(format : PixelFormatDetails*, palette : Palette*, r : UInt8, g : UInt8, b : UInt8, a : UInt8) : UInt32
  fun get_rgb = SDL_GetRGB(pixel : UInt32, format : PixelFormatDetails*, palette : Palette*, r : UInt8*, g : UInt8*, b : UInt8*) : Void
  fun get_rgba = SDL_GetRGBA(pixel : UInt32, format : PixelFormatDetails*, palette : Palette*, r : UInt8*, g : UInt8*, b : UInt8*, a : UInt8*) : Void

  # SDL_platform

  fun get_platform = SDL_GetPlatform() : LibC::Char*

  # SDL_power

  enum PowerState
    POWERSTATE_ERROR = -1
    POWERSTATE_UNKNOWN
    POWERSTATE_ON_BATTERY
    POWERSTATE_NO_BATTERY
    POWERSTATE_CHARGING
    POWERSTATE_CHARGED
  end

  fun get_power_info = SDL_GetPowerInfo(seconds : LibC::Int*, percent : LibC::Int*) : PowerState

  # SDL_process

  PROP_PROCESS_CREATE_ARGS_POINTER = "SDL.process.create.args"
  PROP_PROCESS_CREATE_ENVIRONMENT_POINTER = "SDL.process.create.environment"
  PROP_PROCESS_CREATE_STDIN_NUMBER = "SDL.process.create.stdin_option"
  PROP_PROCESS_CREATE_STDIN_POINTER = "SDL.process.create.stdin_source"
  PROP_PROCESS_CREATE_STDOUT_NUMBER = "SDL.process.create.stdout_option"
  PROP_PROCESS_CREATE_STDOUT_POINTER = "SDL.process.create.stdout_source"
  PROP_PROCESS_CREATE_STDERR_NUMBER = "SDL.process.create.stderr_option"
  PROP_PROCESS_CREATE_STDERR_POINTER = "SDL.process.create.stderr_source"
  PROP_PROCESS_CREATE_STDERR_TO_STDOUT_BOOLEAN = "SDL.process.create.stderr_to_stdout"
  PROP_PROCESS_CREATE_BACKGROUND_BOOLEAN = "SDL.process.create.background"
  PROP_PROCESS_PID_NUMBER = "SDL.process.pid"
  PROP_PROCESS_STDIN_POINTER = "SDL.process.stdin"
  PROP_PROCESS_STDOUT_POINTER = "SDL.process.stdout"
  PROP_PROCESS_STDERR_POINTER = "SDL.process.stderr"
  PROP_PROCESS_BACKGROUND_BOOLEAN = "SDL.process.background"

  alias Process = Void

  enum ProcessIO
    PROCESS_STDIO_INHERITED
    PROCESS_STDIO_NULL
    PROCESS_STDIO_APP
    PROCESS_STDIO_REDIRECT
  end

  fun create_process = SDL_CreateProcess(args : LibC::Char**, pipe_stdio : LibC::Char) : Process*
  fun create_process_with_properties = SDL_CreateProcessWithProperties(props : PropertiesID) : Process*
  fun get_process_properties = SDL_GetProcessProperties(process : Process*) : PropertiesID
  fun read_process = SDL_ReadProcess(process : Process*, datasize : LibC::SizeT*, exitcode : LibC::Int*) : Void*
  fun get_process_input = SDL_GetProcessInput(process : Process*) : IOStream*
  fun get_process_output = SDL_GetProcessOutput(process : Process*) : IOStream*
  fun kill_process = SDL_KillProcess(process : Process*, force : LibC::Char) : LibC::Char
  fun wait_process = SDL_WaitProcess(process : Process*, block : LibC::Char, exitcode : LibC::Int*) : LibC::Char
  fun destroy_process = SDL_DestroyProcess(process : Process*) : Void

  # additions/helper_properties.cr

  # (void* userdata, void* value)
  alias CleanupPropertyCallback = (Void*, Void*) -> Void

  # (void* userdata, SDL_PropertiesID props, const char* name)
  alias EnumeratePropertiesCallback = (Void*, PropertiesID, LibC::Char*) -> Void

  # SDL_properties

  alias PropertiesID = UInt32

  enum PropertyType
    PROPERTY_TYPE_INVALID
    PROPERTY_TYPE_POINTER
    PROPERTY_TYPE_STRING
    PROPERTY_TYPE_NUMBER
    PROPERTY_TYPE_FLOAT
    PROPERTY_TYPE_BOOLEAN
  end

  fun get_global_properties = SDL_GetGlobalProperties() : PropertiesID
  fun create_properties = SDL_CreateProperties() : PropertiesID
  fun copy_properties = SDL_CopyProperties(src : PropertiesID, dst : PropertiesID) : LibC::Char
  fun lock_properties = SDL_LockProperties(props : PropertiesID) : LibC::Char
  fun unlock_properties = SDL_UnlockProperties(props : PropertiesID) : Void
  fun set_pointer_property_with_cleanup = SDL_SetPointerPropertyWithCleanup(props : PropertiesID, name : LibC::Char*, value : Void*, cleanup : CleanupPropertyCallback, userdata : Void*) : LibC::Char
  fun set_pointer_property = SDL_SetPointerProperty(props : PropertiesID, name : LibC::Char*, value : Void*) : LibC::Char
  fun set_string_property = SDL_SetStringProperty(props : PropertiesID, name : LibC::Char*, value : LibC::Char*) : LibC::Char
  fun set_number_property = SDL_SetNumberProperty(props : PropertiesID, name : LibC::Char*, value : Int64) : LibC::Char
  fun set_float_property = SDL_SetFloatProperty(props : PropertiesID, name : LibC::Char*, value : LibC::Float) : LibC::Char
  fun set_boolean_property = SDL_SetBooleanProperty(props : PropertiesID, name : LibC::Char*, value : LibC::Char) : LibC::Char
  fun has_property = SDL_HasProperty(props : PropertiesID, name : LibC::Char*) : LibC::Char
  fun get_property_type = SDL_GetPropertyType(props : PropertiesID, name : LibC::Char*) : PropertyType
  fun get_pointer_property = SDL_GetPointerProperty(props : PropertiesID, name : LibC::Char*, default_value : Void*) : Void*
  fun get_string_property = SDL_GetStringProperty(props : PropertiesID, name : LibC::Char*, default_value : LibC::Char*) : LibC::Char*
  fun get_number_property = SDL_GetNumberProperty(props : PropertiesID, name : LibC::Char*, default_value : Int64) : Int64
  fun get_float_property = SDL_GetFloatProperty(props : PropertiesID, name : LibC::Char*, default_value : LibC::Float) : LibC::Float
  fun get_boolean_property = SDL_GetBooleanProperty(props : PropertiesID, name : LibC::Char*, default_value : LibC::Char) : LibC::Char
  fun clear_property = SDL_ClearProperty(props : PropertiesID, name : LibC::Char*) : LibC::Char
  fun enumerate_properties = SDL_EnumerateProperties(props : PropertiesID, callback : EnumeratePropertiesCallback, userdata : Void*) : LibC::Char
  fun destroy_properties = SDL_DestroyProperties(props : PropertiesID) : Void

  # SDL_rect

  struct Point
    x : LibC::Int
    y : LibC::Int
  end

  struct FPoint
    x : LibC::Float
    y : LibC::Float
  end

  struct Rect
    x : LibC::Int
    y : LibC::Int
    w : LibC::Int
    h : LibC::Int
  end

  struct FRect
    x : LibC::Float
    y : LibC::Float
    w : LibC::Float
    h : LibC::Float
  end

  fun has_rect_intersection = SDL_HasRectIntersection(a : Rect*, b : Rect*) : LibC::Char
  fun get_rect_intersection = SDL_GetRectIntersection(a : Rect*, b : Rect*, result : Rect*) : LibC::Char
  fun get_rect_union = SDL_GetRectUnion(a : Rect*, b : Rect*, result : Rect*) : LibC::Char
  fun get_rect_enclosing_points = SDL_GetRectEnclosingPoints(points : Point*, count : LibC::Int, clip : Rect*, result : Rect*) : LibC::Char
  fun get_rect_and_line_intersection = SDL_GetRectAndLineIntersection(rect : Rect*, x1 : LibC::Int*, y1 : LibC::Int*, x2 : LibC::Int*, y2 : LibC::Int*) : LibC::Char
  fun has_rect_intersection_float = SDL_HasRectIntersectionFloat(a : FRect*, b : FRect*) : LibC::Char
  fun get_rect_intersection_float = SDL_GetRectIntersectionFloat(a : FRect*, b : FRect*, result : FRect*) : LibC::Char
  fun get_rect_union_float = SDL_GetRectUnionFloat(a : FRect*, b : FRect*, result : FRect*) : LibC::Char
  fun get_rect_enclosing_points_float = SDL_GetRectEnclosingPointsFloat(points : FPoint*, count : LibC::Int, clip : FRect*, result : FRect*) : LibC::Char
  fun get_rect_and_line_intersection_float = SDL_GetRectAndLineIntersectionFloat(rect : FRect*, x1 : LibC::Float*, y1 : LibC::Float*, x2 : LibC::Float*, y2 : LibC::Float*) : LibC::Char

  # SDL_render

  SOFTWARE_RENDERER = "software"
  PROP_RENDERER_CREATE_NAME_STRING = "SDL.renderer.create.name"
  PROP_RENDERER_CREATE_WINDOW_POINTER = "SDL.renderer.create.window"
  PROP_RENDERER_CREATE_SURFACE_POINTER = "SDL.renderer.create.surface"
  PROP_RENDERER_CREATE_OUTPUT_COLORSPACE_NUMBER = "SDL.renderer.create.output_colorspace"
  PROP_RENDERER_CREATE_PRESENT_VSYNC_NUMBER = "SDL.renderer.create.present_vsync"
  PROP_RENDERER_CREATE_VULKAN_INSTANCE_POINTER = "SDL.renderer.create.vulkan.instance"
  PROP_RENDERER_CREATE_VULKAN_SURFACE_NUMBER = "SDL.renderer.create.vulkan.surface"
  PROP_RENDERER_CREATE_VULKAN_PHYSICAL_DEVICE_POINTER = "SDL.renderer.create.vulkan.physical_device"
  PROP_RENDERER_CREATE_VULKAN_DEVICE_POINTER = "SDL.renderer.create.vulkan.device"
  PROP_RENDERER_CREATE_VULKAN_GRAPHICS_QUEUE_FAMILY_INDEX_NUMBER = "SDL.renderer.create.vulkan.graphics_queue_family_index"
  PROP_RENDERER_CREATE_VULKAN_PRESENT_QUEUE_FAMILY_INDEX_NUMBER = "SDL.renderer.create.vulkan.present_queue_family_index"
  PROP_RENDERER_NAME_STRING = "SDL.renderer.name"
  PROP_RENDERER_WINDOW_POINTER = "SDL.renderer.window"
  PROP_RENDERER_SURFACE_POINTER = "SDL.renderer.surface"
  PROP_RENDERER_VSYNC_NUMBER = "SDL.renderer.vsync"
  PROP_RENDERER_MAX_TEXTURE_SIZE_NUMBER = "SDL.renderer.max_texture_size"
  PROP_RENDERER_TEXTURE_FORMATS_POINTER = "SDL.renderer.texture_formats"
  PROP_RENDERER_OUTPUT_COLORSPACE_NUMBER = "SDL.renderer.output_colorspace"
  PROP_RENDERER_HDR_ENABLED_BOOLEAN = "SDL.renderer.HDR_enabled"
  PROP_RENDERER_SDR_WHITE_POINT_FLOAT = "SDL.renderer.SDR_white_point"
  PROP_RENDERER_HDR_HEADROOM_FLOAT = "SDL.renderer.HDR_headroom"
  PROP_RENDERER_D3D9_DEVICE_POINTER = "SDL.renderer.d3d9.device"
  PROP_RENDERER_D3D11_DEVICE_POINTER = "SDL.renderer.d3d11.device"
  PROP_RENDERER_D3D11_SWAPCHAIN_POINTER = "SDL.renderer.d3d11.swap_chain"
  PROP_RENDERER_D3D12_DEVICE_POINTER = "SDL.renderer.d3d12.device"
  PROP_RENDERER_D3D12_SWAPCHAIN_POINTER = "SDL.renderer.d3d12.swap_chain"
  PROP_RENDERER_D3D12_COMMAND_QUEUE_POINTER = "SDL.renderer.d3d12.command_queue"
  PROP_RENDERER_VULKAN_INSTANCE_POINTER = "SDL.renderer.vulkan.instance"
  PROP_RENDERER_VULKAN_SURFACE_NUMBER = "SDL.renderer.vulkan.surface"
  PROP_RENDERER_VULKAN_PHYSICAL_DEVICE_POINTER = "SDL.renderer.vulkan.physical_device"
  PROP_RENDERER_VULKAN_DEVICE_POINTER = "SDL.renderer.vulkan.device"
  PROP_RENDERER_VULKAN_GRAPHICS_QUEUE_FAMILY_INDEX_NUMBER = "SDL.renderer.vulkan.graphics_queue_family_index"
  PROP_RENDERER_VULKAN_PRESENT_QUEUE_FAMILY_INDEX_NUMBER = "SDL.renderer.vulkan.present_queue_family_index"
  PROP_RENDERER_VULKAN_SWAPCHAIN_IMAGE_COUNT_NUMBER = "SDL.renderer.vulkan.swapchain_image_count"
  PROP_RENDERER_GPU_DEVICE_POINTER = "SDL.renderer.gpu.device"
  PROP_TEXTURE_CREATE_COLORSPACE_NUMBER = "SDL.texture.create.colorspace"
  PROP_TEXTURE_CREATE_FORMAT_NUMBER = "SDL.texture.create.format"
  PROP_TEXTURE_CREATE_ACCESS_NUMBER = "SDL.texture.create.access"
  PROP_TEXTURE_CREATE_WIDTH_NUMBER = "SDL.texture.create.width"
  PROP_TEXTURE_CREATE_HEIGHT_NUMBER = "SDL.texture.create.height"
  PROP_TEXTURE_CREATE_SDR_WHITE_POINT_FLOAT = "SDL.texture.create.SDR_white_point"
  PROP_TEXTURE_CREATE_HDR_HEADROOM_FLOAT = "SDL.texture.create.HDR_headroom"
  PROP_TEXTURE_CREATE_D3D11_TEXTURE_POINTER = "SDL.texture.create.d3d11.texture"
  PROP_TEXTURE_CREATE_D3D11_TEXTURE_U_POINTER = "SDL.texture.create.d3d11.texture_u"
  PROP_TEXTURE_CREATE_D3D11_TEXTURE_V_POINTER = "SDL.texture.create.d3d11.texture_v"
  PROP_TEXTURE_CREATE_D3D12_TEXTURE_POINTER = "SDL.texture.create.d3d12.texture"
  PROP_TEXTURE_CREATE_D3D12_TEXTURE_U_POINTER = "SDL.texture.create.d3d12.texture_u"
  PROP_TEXTURE_CREATE_D3D12_TEXTURE_V_POINTER = "SDL.texture.create.d3d12.texture_v"
  PROP_TEXTURE_CREATE_METAL_PIXELBUFFER_POINTER = "SDL.texture.create.metal.pixelbuffer"
  PROP_TEXTURE_CREATE_OPENGL_TEXTURE_NUMBER = "SDL.texture.create.opengl.texture"
  PROP_TEXTURE_CREATE_OPENGL_TEXTURE_UV_NUMBER = "SDL.texture.create.opengl.texture_uv"
  PROP_TEXTURE_CREATE_OPENGL_TEXTURE_U_NUMBER = "SDL.texture.create.opengl.texture_u"
  PROP_TEXTURE_CREATE_OPENGL_TEXTURE_V_NUMBER = "SDL.texture.create.opengl.texture_v"
  PROP_TEXTURE_CREATE_OPENGLES2_TEXTURE_NUMBER = "SDL.texture.create.opengles2.texture"
  PROP_TEXTURE_CREATE_OPENGLES2_TEXTURE_UV_NUMBER = "SDL.texture.create.opengles2.texture_uv"
  PROP_TEXTURE_CREATE_OPENGLES2_TEXTURE_U_NUMBER = "SDL.texture.create.opengles2.texture_u"
  PROP_TEXTURE_CREATE_OPENGLES2_TEXTURE_V_NUMBER = "SDL.texture.create.opengles2.texture_v"
  PROP_TEXTURE_CREATE_VULKAN_TEXTURE_NUMBER = "SDL.texture.create.vulkan.texture"
  PROP_TEXTURE_COLORSPACE_NUMBER = "SDL.texture.colorspace"
  PROP_TEXTURE_FORMAT_NUMBER = "SDL.texture.format"
  PROP_TEXTURE_ACCESS_NUMBER = "SDL.texture.access"
  PROP_TEXTURE_WIDTH_NUMBER = "SDL.texture.width"
  PROP_TEXTURE_HEIGHT_NUMBER = "SDL.texture.height"
  PROP_TEXTURE_SDR_WHITE_POINT_FLOAT = "SDL.texture.SDR_white_point"
  PROP_TEXTURE_HDR_HEADROOM_FLOAT = "SDL.texture.HDR_headroom"
  PROP_TEXTURE_D3D11_TEXTURE_POINTER = "SDL.texture.d3d11.texture"
  PROP_TEXTURE_D3D11_TEXTURE_U_POINTER = "SDL.texture.d3d11.texture_u"
  PROP_TEXTURE_D3D11_TEXTURE_V_POINTER = "SDL.texture.d3d11.texture_v"
  PROP_TEXTURE_D3D12_TEXTURE_POINTER = "SDL.texture.d3d12.texture"
  PROP_TEXTURE_D3D12_TEXTURE_U_POINTER = "SDL.texture.d3d12.texture_u"
  PROP_TEXTURE_D3D12_TEXTURE_V_POINTER = "SDL.texture.d3d12.texture_v"
  PROP_TEXTURE_OPENGL_TEXTURE_NUMBER = "SDL.texture.opengl.texture"
  PROP_TEXTURE_OPENGL_TEXTURE_UV_NUMBER = "SDL.texture.opengl.texture_uv"
  PROP_TEXTURE_OPENGL_TEXTURE_U_NUMBER = "SDL.texture.opengl.texture_u"
  PROP_TEXTURE_OPENGL_TEXTURE_V_NUMBER = "SDL.texture.opengl.texture_v"
  PROP_TEXTURE_OPENGL_TEXTURE_TARGET_NUMBER = "SDL.texture.opengl.target"
  PROP_TEXTURE_OPENGL_TEX_W_FLOAT = "SDL.texture.opengl.tex_w"
  PROP_TEXTURE_OPENGL_TEX_H_FLOAT = "SDL.texture.opengl.tex_h"
  PROP_TEXTURE_OPENGLES2_TEXTURE_NUMBER = "SDL.texture.opengles2.texture"
  PROP_TEXTURE_OPENGLES2_TEXTURE_UV_NUMBER = "SDL.texture.opengles2.texture_uv"
  PROP_TEXTURE_OPENGLES2_TEXTURE_U_NUMBER = "SDL.texture.opengles2.texture_u"
  PROP_TEXTURE_OPENGLES2_TEXTURE_V_NUMBER = "SDL.texture.opengles2.texture_v"
  PROP_TEXTURE_OPENGLES2_TEXTURE_TARGET_NUMBER = "SDL.texture.opengles2.target"
  PROP_TEXTURE_VULKAN_TEXTURE_NUMBER = "SDL.texture.vulkan.texture"
  RENDERER_VSYNC_DISABLED = 0
  RENDERER_VSYNC_ADAPTIVE = (-1)
  DEBUG_TEXT_FONT_CHARACTER_SIZE = 8

  alias Renderer = Void
  alias Texture = Void

  enum TextureAccess
    TEXTUREACCESS_STATIC
    TEXTUREACCESS_STREAMING
    TEXTUREACCESS_TARGET
  end

  enum RendererLogicalPresentation
    LOGICAL_PRESENTATION_DISABLED
    LOGICAL_PRESENTATION_STRETCH
    LOGICAL_PRESENTATION_LETTERBOX
    LOGICAL_PRESENTATION_OVERSCAN
    LOGICAL_PRESENTATION_INTEGER_SCALE
  end

  struct Vertex
    position : FPoint
    color : FColor
    tex_coord : FPoint
  end

  fun get_num_render_drivers = SDL_GetNumRenderDrivers() : LibC::Int
  fun get_render_driver = SDL_GetRenderDriver(index : LibC::Int) : LibC::Char*
  fun create_window_and_renderer = SDL_CreateWindowAndRenderer(title : LibC::Char*, width : LibC::Int, height : LibC::Int, window_flags : WindowFlags, window : Window**, renderer : Renderer**) : LibC::Char
  fun create_renderer = SDL_CreateRenderer(window : Window*, name : LibC::Char*) : Renderer*
  fun create_renderer_with_properties = SDL_CreateRendererWithProperties(props : PropertiesID) : Renderer*
  fun create_software_renderer = SDL_CreateSoftwareRenderer(surface : Surface*) : Renderer*
  fun get_renderer = SDL_GetRenderer(window : Window*) : Renderer*
  fun get_render_window = SDL_GetRenderWindow(renderer : Renderer*) : Window*
  fun get_renderer_name = SDL_GetRendererName(renderer : Renderer*) : LibC::Char*
  fun get_renderer_properties = SDL_GetRendererProperties(renderer : Renderer*) : PropertiesID
  fun get_render_output_size = SDL_GetRenderOutputSize(renderer : Renderer*, w : LibC::Int*, h : LibC::Int*) : LibC::Char
  fun get_current_render_output_size = SDL_GetCurrentRenderOutputSize(renderer : Renderer*, w : LibC::Int*, h : LibC::Int*) : LibC::Char
  fun create_texture = SDL_CreateTexture(renderer : Renderer*, format : PixelFormat, access : TextureAccess, w : LibC::Int, h : LibC::Int) : Texture*
  fun create_texture_from_surface = SDL_CreateTextureFromSurface(renderer : Renderer*, surface : Surface*) : Texture*
  fun create_texture_with_properties = SDL_CreateTextureWithProperties(renderer : Renderer*, props : PropertiesID) : Texture*
  fun get_texture_properties = SDL_GetTextureProperties(texture : Texture*) : PropertiesID
  fun get_renderer_from_texture = SDL_GetRendererFromTexture(texture : Texture*) : Renderer*
  fun get_texture_size = SDL_GetTextureSize(texture : Texture*, w : LibC::Float*, h : LibC::Float*) : LibC::Char
  fun set_texture_color_mod = SDL_SetTextureColorMod(texture : Texture*, r : UInt8, g : UInt8, b : UInt8) : LibC::Char
  fun set_texture_color_mod_float = SDL_SetTextureColorModFloat(texture : Texture*, r : LibC::Float, g : LibC::Float, b : LibC::Float) : LibC::Char
  fun get_texture_color_mod = SDL_GetTextureColorMod(texture : Texture*, r : UInt8*, g : UInt8*, b : UInt8*) : LibC::Char
  fun get_texture_color_mod_float = SDL_GetTextureColorModFloat(texture : Texture*, r : LibC::Float*, g : LibC::Float*, b : LibC::Float*) : LibC::Char
  fun set_texture_alpha_mod = SDL_SetTextureAlphaMod(texture : Texture*, alpha : UInt8) : LibC::Char
  fun set_texture_alpha_mod_float = SDL_SetTextureAlphaModFloat(texture : Texture*, alpha : LibC::Float) : LibC::Char
  fun get_texture_alpha_mod = SDL_GetTextureAlphaMod(texture : Texture*, alpha : UInt8*) : LibC::Char
  fun get_texture_alpha_mod_float = SDL_GetTextureAlphaModFloat(texture : Texture*, alpha : LibC::Float*) : LibC::Char
  fun set_texture_blend_mode = SDL_SetTextureBlendMode(texture : Texture*, blend_mode : BlendMode) : LibC::Char
  fun get_texture_blend_mode = SDL_GetTextureBlendMode(texture : Texture*, blend_mode : BlendMode*) : LibC::Char
  fun set_texture_scale_mode = SDL_SetTextureScaleMode(texture : Texture*, scale_mode : ScaleMode) : LibC::Char
  fun get_texture_scale_mode = SDL_GetTextureScaleMode(texture : Texture*, scale_mode : ScaleMode*) : LibC::Char
  fun update_texture = SDL_UpdateTexture(texture : Texture*, rect : Rect*, pixels : Void*, pitch : LibC::Int) : LibC::Char
  fun update_yuvtexture = SDL_UpdateYUVTexture(texture : Texture*, rect : Rect*, yplane : UInt8*, ypitch : LibC::Int, uplane : UInt8*, upitch : LibC::Int, vplane : UInt8*, vpitch : LibC::Int) : LibC::Char
  fun update_nvtexture = SDL_UpdateNVTexture(texture : Texture*, rect : Rect*, yplane : UInt8*, ypitch : LibC::Int, uvplane : UInt8*, uvpitch : LibC::Int) : LibC::Char
  fun lock_texture = SDL_LockTexture(texture : Texture*, rect : Rect*, pixels : Void**, pitch : LibC::Int*) : LibC::Char
  fun lock_texture_to_surface = SDL_LockTextureToSurface(texture : Texture*, rect : Rect*, surface : Surface**) : LibC::Char
  fun unlock_texture = SDL_UnlockTexture(texture : Texture*) : Void
  fun set_render_target = SDL_SetRenderTarget(renderer : Renderer*, texture : Texture*) : LibC::Char
  fun get_render_target = SDL_GetRenderTarget(renderer : Renderer*) : Texture*
  fun set_render_logical_presentation = SDL_SetRenderLogicalPresentation(renderer : Renderer*, w : LibC::Int, h : LibC::Int, mode : RendererLogicalPresentation) : LibC::Char
  fun get_render_logical_presentation = SDL_GetRenderLogicalPresentation(renderer : Renderer*, w : LibC::Int*, h : LibC::Int*, mode : RendererLogicalPresentation*) : LibC::Char
  fun get_render_logical_presentation_rect = SDL_GetRenderLogicalPresentationRect(renderer : Renderer*, rect : FRect*) : LibC::Char
  fun render_coordinates_from_window = SDL_RenderCoordinatesFromWindow(renderer : Renderer*, window_x : LibC::Float, window_y : LibC::Float, x : LibC::Float*, y : LibC::Float*) : LibC::Char
  fun render_coordinates_to_window = SDL_RenderCoordinatesToWindow(renderer : Renderer*, x : LibC::Float, y : LibC::Float, window_x : LibC::Float*, window_y : LibC::Float*) : LibC::Char
  fun convert_event_to_render_coordinates = SDL_ConvertEventToRenderCoordinates(renderer : Renderer*, event : Event*) : LibC::Char
  fun set_render_viewport = SDL_SetRenderViewport(renderer : Renderer*, rect : Rect*) : LibC::Char
  fun get_render_viewport = SDL_GetRenderViewport(renderer : Renderer*, rect : Rect*) : LibC::Char
  fun render_viewport_set = SDL_RenderViewportSet(renderer : Renderer*) : LibC::Char
  fun get_render_safe_area = SDL_GetRenderSafeArea(renderer : Renderer*, rect : Rect*) : LibC::Char
  fun set_render_clip_rect = SDL_SetRenderClipRect(renderer : Renderer*, rect : Rect*) : LibC::Char
  fun get_render_clip_rect = SDL_GetRenderClipRect(renderer : Renderer*, rect : Rect*) : LibC::Char
  fun render_clip_enabled = SDL_RenderClipEnabled(renderer : Renderer*) : LibC::Char
  fun set_render_scale = SDL_SetRenderScale(renderer : Renderer*, scale_x : LibC::Float, scale_y : LibC::Float) : LibC::Char
  fun get_render_scale = SDL_GetRenderScale(renderer : Renderer*, scale_x : LibC::Float*, scale_y : LibC::Float*) : LibC::Char
  fun set_render_draw_color = SDL_SetRenderDrawColor(renderer : Renderer*, r : UInt8, g : UInt8, b : UInt8, a : UInt8) : LibC::Char
  fun set_render_draw_color_float = SDL_SetRenderDrawColorFloat(renderer : Renderer*, r : LibC::Float, g : LibC::Float, b : LibC::Float, a : LibC::Float) : LibC::Char
  fun get_render_draw_color = SDL_GetRenderDrawColor(renderer : Renderer*, r : UInt8*, g : UInt8*, b : UInt8*, a : UInt8*) : LibC::Char
  fun get_render_draw_color_float = SDL_GetRenderDrawColorFloat(renderer : Renderer*, r : LibC::Float*, g : LibC::Float*, b : LibC::Float*, a : LibC::Float*) : LibC::Char
  fun set_render_color_scale = SDL_SetRenderColorScale(renderer : Renderer*, scale : LibC::Float) : LibC::Char
  fun get_render_color_scale = SDL_GetRenderColorScale(renderer : Renderer*, scale : LibC::Float*) : LibC::Char
  fun set_render_draw_blend_mode = SDL_SetRenderDrawBlendMode(renderer : Renderer*, blend_mode : BlendMode) : LibC::Char
  fun get_render_draw_blend_mode = SDL_GetRenderDrawBlendMode(renderer : Renderer*, blend_mode : BlendMode*) : LibC::Char
  fun render_clear = SDL_RenderClear(renderer : Renderer*) : LibC::Char
  fun render_point = SDL_RenderPoint(renderer : Renderer*, x : LibC::Float, y : LibC::Float) : LibC::Char
  fun render_points = SDL_RenderPoints(renderer : Renderer*, points : FPoint*, count : LibC::Int) : LibC::Char
  fun render_line = SDL_RenderLine(renderer : Renderer*, x1 : LibC::Float, y1 : LibC::Float, x2 : LibC::Float, y2 : LibC::Float) : LibC::Char
  fun render_lines = SDL_RenderLines(renderer : Renderer*, points : FPoint*, count : LibC::Int) : LibC::Char
  fun render_rect = SDL_RenderRect(renderer : Renderer*, rect : FRect*) : LibC::Char
  fun render_rects = SDL_RenderRects(renderer : Renderer*, rects : FRect*, count : LibC::Int) : LibC::Char
  fun render_fill_rect = SDL_RenderFillRect(renderer : Renderer*, rect : FRect*) : LibC::Char
  fun render_fill_rects = SDL_RenderFillRects(renderer : Renderer*, rects : FRect*, count : LibC::Int) : LibC::Char
  fun render_texture = SDL_RenderTexture(renderer : Renderer*, texture : Texture*, srcrect : FRect*, dstrect : FRect*) : LibC::Char
  fun render_texture_rotated = SDL_RenderTextureRotated(renderer : Renderer*, texture : Texture*, srcrect : FRect*, dstrect : FRect*, angle : LibC::Double, center : FPoint*, flip : FlipMode) : LibC::Char
  fun render_texture_affine = SDL_RenderTextureAffine(renderer : Renderer*, texture : Texture*, srcrect : FRect*, origin : FPoint*, right : FPoint*, down : FPoint*) : LibC::Char
  fun render_texture_tiled = SDL_RenderTextureTiled(renderer : Renderer*, texture : Texture*, srcrect : FRect*, scale : LibC::Float, dstrect : FRect*) : LibC::Char
  fun render_texture9_grid = SDL_RenderTexture9Grid(renderer : Renderer*, texture : Texture*, srcrect : FRect*, left_width : LibC::Float, right_width : LibC::Float, top_height : LibC::Float, bottom_height : LibC::Float, scale : LibC::Float, dstrect : FRect*) : LibC::Char
  fun render_geometry = SDL_RenderGeometry(renderer : Renderer*, texture : Texture*, vertices : Vertex*, num_vertices : LibC::Int, indices : LibC::Int*, num_indices : LibC::Int) : LibC::Char
  fun render_geometry_raw = SDL_RenderGeometryRaw(renderer : Renderer*, texture : Texture*, xy : LibC::Float*, xy_stride : LibC::Int, color : FColor*, color_stride : LibC::Int, uv : LibC::Float*, uv_stride : LibC::Int, num_vertices : LibC::Int, indices : Void*, num_indices : LibC::Int, size_indices : LibC::Int) : LibC::Char
  fun render_read_pixels = SDL_RenderReadPixels(renderer : Renderer*, rect : Rect*) : Surface*
  fun render_present = SDL_RenderPresent(renderer : Renderer*) : LibC::Char
  fun destroy_texture = SDL_DestroyTexture(texture : Texture*) : Void
  fun destroy_renderer = SDL_DestroyRenderer(renderer : Renderer*) : Void
  fun flush_renderer = SDL_FlushRenderer(renderer : Renderer*) : LibC::Char
  fun get_render_metal_layer = SDL_GetRenderMetalLayer(renderer : Renderer*) : Void*
  fun get_render_metal_command_encoder = SDL_GetRenderMetalCommandEncoder(renderer : Renderer*) : Void*
  fun add_vulkan_render_semaphores = SDL_AddVulkanRenderSemaphores(renderer : Renderer*, wait_stage_mask : UInt32, wait_semaphore : Int64, signal_semaphore : Int64) : LibC::Char
  fun set_render_vsync = SDL_SetRenderVSync(renderer : Renderer*, vsync : LibC::Int) : LibC::Char
  fun get_render_vsync = SDL_GetRenderVSync(renderer : Renderer*, vsync : LibC::Int*) : LibC::Char
  fun render_debug_text = SDL_RenderDebugText(renderer : Renderer*, x : LibC::Float, y : LibC::Float, str : LibC::Char*) : LibC::Char
  fun render_debug_text_format = SDL_RenderDebugTextFormat(renderer : Renderer*, x : LibC::Float, y : LibC::Float, fmt : LibC::Char*, ...) : LibC::Char

  # SDL_sensor

  STANDARD_GRAVITY = 9.80665

  alias Sensor = Void
  alias SensorID = UInt32

  enum SensorType
    SENSOR_INVALID = -1
    SENSOR_UNKNOWN
    SENSOR_ACCEL
    SENSOR_GYRO
    SENSOR_ACCEL_L
    SENSOR_GYRO_L
    SENSOR_ACCEL_R
    SENSOR_GYRO_R
  end

  fun get_sensors = SDL_GetSensors(count : LibC::Int*) : SensorID*
  fun get_sensor_name_for_id = SDL_GetSensorNameForID(instance_id : SensorID) : LibC::Char*
  fun get_sensor_type_for_id = SDL_GetSensorTypeForID(instance_id : SensorID) : SensorType
  fun get_sensor_non_portable_type_for_id = SDL_GetSensorNonPortableTypeForID(instance_id : SensorID) : LibC::Int
  fun open_sensor = SDL_OpenSensor(instance_id : SensorID) : Sensor*
  fun get_sensor_from_id = SDL_GetSensorFromID(instance_id : SensorID) : Sensor*
  fun get_sensor_properties = SDL_GetSensorProperties(sensor : Sensor*) : PropertiesID
  fun get_sensor_name = SDL_GetSensorName(sensor : Sensor*) : LibC::Char*
  fun get_sensor_type = SDL_GetSensorType(sensor : Sensor*) : SensorType
  fun get_sensor_non_portable_type = SDL_GetSensorNonPortableType(sensor : Sensor*) : LibC::Int
  fun get_sensor_id = SDL_GetSensorID(sensor : Sensor*) : SensorID
  fun get_sensor_data = SDL_GetSensorData(sensor : Sensor*, data : LibC::Float*, num_values : LibC::Int) : LibC::Char
  fun close_sensor = SDL_CloseSensor(sensor : Sensor*) : Void
  fun update_sensors = SDL_UpdateSensors() : Void

  # SDL_surface

  SURFACE_PREALLOCATED = 0x00000001
  SURFACE_LOCK_NEEDED = 0x00000002
  SURFACE_LOCKED = 0x00000004
  SURFACE_SIMD_ALIGNED = 0x00000008
  PROP_SURFACE_SDR_WHITE_POINT_FLOAT = "SDL.surface.SDR_white_point"
  PROP_SURFACE_HDR_HEADROOM_FLOAT = "SDL.surface.HDR_headroom"
  PROP_SURFACE_TONEMAP_OPERATOR_STRING = "SDL.surface.tonemap"

  alias Surface = Void
  alias SurfaceFlags = UInt32

  enum ScaleMode
    SCALEMODE_NEAREST
    SCALEMODE_LINEAR
  end

  enum FlipMode
    FLIP_NONE
    FLIP_HORIZONTAL
    FLIP_VERTICAL
  end

  fun create_surface = SDL_CreateSurface(width : LibC::Int, height : LibC::Int, format : PixelFormat) : Surface*
  fun create_surface_from = SDL_CreateSurfaceFrom(width : LibC::Int, height : LibC::Int, format : PixelFormat, pixels : Void*, pitch : LibC::Int) : Surface*
  fun destroy_surface = SDL_DestroySurface(surface : Surface*) : Void
  fun get_surface_properties = SDL_GetSurfaceProperties(surface : Surface*) : PropertiesID
  fun set_surface_colorspace = SDL_SetSurfaceColorspace(surface : Surface*, colorspace : Colorspace) : LibC::Char
  fun get_surface_colorspace = SDL_GetSurfaceColorspace(surface : Surface*) : Colorspace
  fun create_surface_palette = SDL_CreateSurfacePalette(surface : Surface*) : Palette*
  fun set_surface_palette = SDL_SetSurfacePalette(surface : Surface*, palette : Palette*) : LibC::Char
  fun get_surface_palette = SDL_GetSurfacePalette(surface : Surface*) : Palette*
  fun add_surface_alternate_image = SDL_AddSurfaceAlternateImage(surface : Surface*, image : Surface*) : LibC::Char
  fun surface_has_alternate_images = SDL_SurfaceHasAlternateImages(surface : Surface*) : LibC::Char
  fun get_surface_images = SDL_GetSurfaceImages(surface : Surface*, count : LibC::Int*) : Surface**
  fun remove_surface_alternate_images = SDL_RemoveSurfaceAlternateImages(surface : Surface*) : Void
  fun lock_surface = SDL_LockSurface(surface : Surface*) : LibC::Char
  fun unlock_surface = SDL_UnlockSurface(surface : Surface*) : Void
  fun load_bmp_io = SDL_LoadBMP_IO(src : IOStream*, closeio : LibC::Char) : Surface*
  fun load_bmp = SDL_LoadBMP(file : LibC::Char*) : Surface*
  fun save_bmp_io = SDL_SaveBMP_IO(surface : Surface*, dst : IOStream*, closeio : LibC::Char) : LibC::Char
  fun save_bmp = SDL_SaveBMP(surface : Surface*, file : LibC::Char*) : LibC::Char
  fun set_surface_rle = SDL_SetSurfaceRLE(surface : Surface*, enabled : LibC::Char) : LibC::Char
  fun surface_has_rle = SDL_SurfaceHasRLE(surface : Surface*) : LibC::Char
  fun set_surface_color_key = SDL_SetSurfaceColorKey(surface : Surface*, enabled : LibC::Char, key : UInt32) : LibC::Char
  fun surface_has_color_key = SDL_SurfaceHasColorKey(surface : Surface*) : LibC::Char
  fun get_surface_color_key = SDL_GetSurfaceColorKey(surface : Surface*, key : UInt32*) : LibC::Char
  fun set_surface_color_mod = SDL_SetSurfaceColorMod(surface : Surface*, r : UInt8, g : UInt8, b : UInt8) : LibC::Char
  fun get_surface_color_mod = SDL_GetSurfaceColorMod(surface : Surface*, r : UInt8*, g : UInt8*, b : UInt8*) : LibC::Char
  fun set_surface_alpha_mod = SDL_SetSurfaceAlphaMod(surface : Surface*, alpha : UInt8) : LibC::Char
  fun get_surface_alpha_mod = SDL_GetSurfaceAlphaMod(surface : Surface*, alpha : UInt8*) : LibC::Char
  fun set_surface_blend_mode = SDL_SetSurfaceBlendMode(surface : Surface*, blend_mode : BlendMode) : LibC::Char
  fun get_surface_blend_mode = SDL_GetSurfaceBlendMode(surface : Surface*, blend_mode : BlendMode*) : LibC::Char
  fun set_surface_clip_rect = SDL_SetSurfaceClipRect(surface : Surface*, rect : Rect*) : LibC::Char
  fun get_surface_clip_rect = SDL_GetSurfaceClipRect(surface : Surface*, rect : Rect*) : LibC::Char
  fun flip_surface = SDL_FlipSurface(surface : Surface*, flip : FlipMode) : LibC::Char
  fun duplicate_surface = SDL_DuplicateSurface(surface : Surface*) : Surface*
  fun scale_surface = SDL_ScaleSurface(surface : Surface*, width : LibC::Int, height : LibC::Int, scale_mode : ScaleMode) : Surface*
  fun convert_surface = SDL_ConvertSurface(surface : Surface*, format : PixelFormat) : Surface*
  fun convert_surface_and_colorspace = SDL_ConvertSurfaceAndColorspace(surface : Surface*, format : PixelFormat, palette : Palette*, colorspace : Colorspace, props : PropertiesID) : Surface*
  fun convert_pixels = SDL_ConvertPixels(width : LibC::Int, height : LibC::Int, src_format : PixelFormat, src : Void*, src_pitch : LibC::Int, dst_format : PixelFormat, dst : Void*, dst_pitch : LibC::Int) : LibC::Char
  fun convert_pixels_and_colorspace = SDL_ConvertPixelsAndColorspace(width : LibC::Int, height : LibC::Int, src_format : PixelFormat, src_colorspace : Colorspace, src_properties : PropertiesID, src : Void*, src_pitch : LibC::Int, dst_format : PixelFormat, dst_colorspace : Colorspace, dst_properties : PropertiesID, dst : Void*, dst_pitch : LibC::Int) : LibC::Char
  fun premultiply_alpha = SDL_PremultiplyAlpha(width : LibC::Int, height : LibC::Int, src_format : PixelFormat, src : Void*, src_pitch : LibC::Int, dst_format : PixelFormat, dst : Void*, dst_pitch : LibC::Int, linear : LibC::Char) : LibC::Char
  fun premultiply_surface_alpha = SDL_PremultiplySurfaceAlpha(surface : Surface*, linear : LibC::Char) : LibC::Char
  fun clear_surface = SDL_ClearSurface(surface : Surface*, r : LibC::Float, g : LibC::Float, b : LibC::Float, a : LibC::Float) : LibC::Char
  fun fill_surface_rect = SDL_FillSurfaceRect(dst : Surface*, rect : Rect*, color : UInt32) : LibC::Char
  fun fill_surface_rects = SDL_FillSurfaceRects(dst : Surface*, rects : Rect*, count : LibC::Int, color : UInt32) : LibC::Char
  fun blit_surface = SDL_BlitSurface(src : Surface*, srcrect : Rect*, dst : Surface*, dstrect : Rect*) : LibC::Char
  fun blit_surface_unchecked = SDL_BlitSurfaceUnchecked(src : Surface*, srcrect : Rect*, dst : Surface*, dstrect : Rect*) : LibC::Char
  fun blit_surface_scaled = SDL_BlitSurfaceScaled(src : Surface*, srcrect : Rect*, dst : Surface*, dstrect : Rect*, scale_mode : ScaleMode) : LibC::Char
  fun blit_surface_unchecked_scaled = SDL_BlitSurfaceUncheckedScaled(src : Surface*, srcrect : Rect*, dst : Surface*, dstrect : Rect*, scale_mode : ScaleMode) : LibC::Char
  fun blit_surface_tiled = SDL_BlitSurfaceTiled(src : Surface*, srcrect : Rect*, dst : Surface*, dstrect : Rect*) : LibC::Char
  fun blit_surface_tiled_with_scale = SDL_BlitSurfaceTiledWithScale(src : Surface*, srcrect : Rect*, scale : LibC::Float, scale_mode : ScaleMode, dst : Surface*, dstrect : Rect*) : LibC::Char
  fun blit_surface9_grid = SDL_BlitSurface9Grid(src : Surface*, srcrect : Rect*, left_width : LibC::Int, right_width : LibC::Int, top_height : LibC::Int, bottom_height : LibC::Int, scale : LibC::Float, scale_mode : ScaleMode, dst : Surface*, dstrect : Rect*) : LibC::Char
  fun map_surface_rgb = SDL_MapSurfaceRGB(surface : Surface*, r : UInt8, g : UInt8, b : UInt8) : UInt32
  fun map_surface_rgba = SDL_MapSurfaceRGBA(surface : Surface*, r : UInt8, g : UInt8, b : UInt8, a : UInt8) : UInt32
  fun read_surface_pixel = SDL_ReadSurfacePixel(surface : Surface*, x : LibC::Int, y : LibC::Int, r : UInt8*, g : UInt8*, b : UInt8*, a : UInt8*) : LibC::Char
  fun read_surface_pixel_float = SDL_ReadSurfacePixelFloat(surface : Surface*, x : LibC::Int, y : LibC::Int, r : LibC::Float*, g : LibC::Float*, b : LibC::Float*, a : LibC::Float*) : LibC::Char
  fun write_surface_pixel = SDL_WriteSurfacePixel(surface : Surface*, x : LibC::Int, y : LibC::Int, r : UInt8, g : UInt8, b : UInt8, a : UInt8) : LibC::Char
  fun write_surface_pixel_float = SDL_WriteSurfacePixelFloat(surface : Surface*, x : LibC::Int, y : LibC::Int, r : LibC::Float, g : LibC::Float, b : LibC::Float, a : LibC::Float) : LibC::Char

  # additions/helper_tray.cr

  # (void* userdata, SDL_TrayEntry* entry)
  alias TrayCallback = (Void*, TrayEntry*) -> Void

  # SDL_tray

  TRAYENTRY_BUTTON = 0x00000001
  TRAYENTRY_CHECKBOX = 0x00000002
  TRAYENTRY_SUBMENU = 0x00000004
  TRAYENTRY_DISABLED = 0x80000000
  TRAYENTRY_CHECKED = 0x40000000

  alias Tray = Void
  alias TrayMenu = Void
  alias TrayEntry = Void
  alias TrayEntryFlags = UInt32

  fun create_tray = SDL_CreateTray(icon : Surface*, tooltip : LibC::Char*) : Tray*
  fun set_tray_icon = SDL_SetTrayIcon(tray : Tray*, icon : Surface*) : Void
  fun set_tray_tooltip = SDL_SetTrayTooltip(tray : Tray*, tooltip : LibC::Char*) : Void
  fun create_tray_menu = SDL_CreateTrayMenu(tray : Tray*) : TrayMenu*
  fun create_tray_submenu = SDL_CreateTraySubmenu(entry : TrayEntry*) : TrayMenu*
  fun get_tray_menu = SDL_GetTrayMenu(tray : Tray*) : TrayMenu*
  fun get_tray_submenu = SDL_GetTraySubmenu(entry : TrayEntry*) : TrayMenu*
  fun get_tray_entries = SDL_GetTrayEntries(menu : TrayMenu*, size : LibC::Int*) : TrayEntry**
  fun remove_tray_entry = SDL_RemoveTrayEntry(entry : TrayEntry*) : Void
  fun insert_tray_entry_at = SDL_InsertTrayEntryAt(menu : TrayMenu*, pos : LibC::Int, label : LibC::Char*, flags : TrayEntryFlags) : TrayEntry*
  fun set_tray_entry_label = SDL_SetTrayEntryLabel(entry : TrayEntry*, label : LibC::Char*) : Void
  fun get_tray_entry_label = SDL_GetTrayEntryLabel(entry : TrayEntry*) : LibC::Char*
  fun set_tray_entry_checked = SDL_SetTrayEntryChecked(entry : TrayEntry*, checked : LibC::Char) : Void
  fun get_tray_entry_checked = SDL_GetTrayEntryChecked(entry : TrayEntry*) : LibC::Char
  fun set_tray_entry_enabled = SDL_SetTrayEntryEnabled(entry : TrayEntry*, enabled : LibC::Char) : Void
  fun get_tray_entry_enabled = SDL_GetTrayEntryEnabled(entry : TrayEntry*) : LibC::Char
  fun set_tray_entry_callback = SDL_SetTrayEntryCallback(entry : TrayEntry*, callback : TrayCallback, userdata : Void*) : Void
  fun destroy_tray = SDL_DestroyTray(tray : Tray*) : Void
  fun get_tray_entry_parent = SDL_GetTrayEntryParent(entry : TrayEntry*) : TrayMenu*
  fun get_tray_menu_parent_entry = SDL_GetTrayMenuParentEntry(menu : TrayMenu*) : TrayEntry*
  fun get_tray_menu_parent_tray = SDL_GetTrayMenuParentTray(menu : TrayMenu*) : Tray*

  # SDL_touch

  TOUCH_MOUSEID = MouseID.new(-1)
  MOUSE_TOUCHID = TouchID.new(-1)

  alias TouchID = UInt64
  alias FingerID = UInt64

  enum TouchDeviceType
    TOUCH_DEVICE_INVALID = -1
    TOUCH_DEVICE_DIRECT
    TOUCH_DEVICE_INDIRECT_ABSOLUTE
    TOUCH_DEVICE_INDIRECT_RELATIVE
  end

  struct Finger
    id : FingerID
    x : LibC::Float
    y : LibC::Float
    pressure : LibC::Float
  end

  fun get_touch_devices = SDL_GetTouchDevices(count : LibC::Int*) : TouchID*
  fun get_touch_device_name = SDL_GetTouchDeviceName(touch_id : TouchID) : LibC::Char*
  fun get_touch_device_type = SDL_GetTouchDeviceType(touch_id : TouchID) : TouchDeviceType
  fun get_touch_fingers = SDL_GetTouchFingers(touch_id : TouchID, count : LibC::Int*) : Finger**

  # additions/helper_video.cr

  # (void* userdata)
  alias EGLAttribArrayCallback = (Void*) -> EGLAttrib*

  # (void* userdata, SDL_EGLDisplay display, SDL_EGLConfig config)
  alias EGLIntArrayCallback = (Void*, EGLDisplay, EGLConfig) -> EGLint*
  
  # (SDL_Window* win, const SDL_Point* area, void* data)
  alias HitTest = (Window*, Point*, Void*) -> HitTestResult

  alias GLContextState = Void

  # SDL_video

  PROP_GLOBAL_VIDEO_WAYLAND_WL_DISPLAY_POINTER = "SDL.video.wayland.wl_display"
  WINDOW_FULLSCREEN = UInt64.new(0x0000000000000001)
  WINDOW_OPENGL = UInt64.new(0x0000000000000002)
  WINDOW_OCCLUDED = UInt64.new(0x0000000000000004)
  WINDOW_HIDDEN = UInt64.new(0x0000000000000008)
  WINDOW_BORDERLESS = UInt64.new(0x0000000000000010)
  WINDOW_RESIZABLE = UInt64.new(0x0000000000000020)
  WINDOW_MINIMIZED = UInt64.new(0x0000000000000040)
  WINDOW_MAXIMIZED = UInt64.new(0x0000000000000080)
  WINDOW_MOUSE_GRABBED = UInt64.new(0x0000000000000100)
  WINDOW_INPUT_FOCUS = UInt64.new(0x0000000000000200)
  WINDOW_MOUSE_FOCUS = UInt64.new(0x0000000000000400)
  WINDOW_EXTERNAL = UInt64.new(0x0000000000000800)
  WINDOW_MODAL = UInt64.new(0x0000000000001000)
  WINDOW_HIGH_PIXEL_DENSITY = UInt64.new(0x0000000000002000)
  WINDOW_MOUSE_CAPTURE = UInt64.new(0x0000000000004000)
  WINDOW_MOUSE_RELATIVE_MODE = UInt64.new(0x0000000000008000)
  WINDOW_ALWAYS_ON_TOP = UInt64.new(0x0000000000010000)
  WINDOW_UTILITY = UInt64.new(0x0000000000020000)
  WINDOW_TOOLTIP = UInt64.new(0x0000000000040000)
  WINDOW_POPUP_MENU = UInt64.new(0x0000000000080000)
  WINDOW_KEYBOARD_GRABBED = UInt64.new(0x0000000000100000)
  WINDOW_VULKAN = UInt64.new(0x0000000010000000)
  WINDOW_METAL = UInt64.new(0x0000000020000000)
  WINDOW_TRANSPARENT = UInt64.new(0x0000000040000000)
  WINDOW_NOT_FOCUSABLE = UInt64.new(0x0000000080000000)
  WINDOWPOS_UNDEFINED_MASK = 0x1FFF0000
  WINDOWPOS_UNDEFINED = (LibSDL::WINDOWPOS_UNDEFINED_MASK | 0)
  WINDOWPOS_CENTERED_MASK = 0x2FFF0000
  WINDOWPOS_CENTERED = (LibSDL::WINDOWPOS_CENTERED_MASK | 0)
  GL_CONTEXT_PROFILE_CORE = 0x0001
  GL_CONTEXT_PROFILE_COMPATIBILITY = 0x0002
  GL_CONTEXT_PROFILE_ES = 0x0004
  GL_CONTEXT_DEBUG_FLAG = 0x0001
  GL_CONTEXT_FORWARD_COMPATIBLE_FLAG = 0x0002
  GL_CONTEXT_ROBUST_ACCESS_FLAG = 0x0004
  GL_CONTEXT_RESET_ISOLATION_FLAG = 0x0008
  GL_CONTEXT_RELEASE_BEHAVIOR_NONE = 0x0000
  GL_CONTEXT_RELEASE_BEHAVIOR_FLUSH = 0x0001
  GL_CONTEXT_RESET_NO_NOTIFICATION = 0x0000
  GL_CONTEXT_RESET_LOSE_CONTEXT = 0x0001
  PROP_DISPLAY_HDR_ENABLED_BOOLEAN = "SDL.display.HDR_enabled"
  PROP_DISPLAY_KMSDRM_PANEL_ORIENTATION_NUMBER = "SDL.display.KMSDRM.panel_orientation"
  PROP_WINDOW_CREATE_ALWAYS_ON_TOP_BOOLEAN = "SDL.window.create.always_on_top"
  PROP_WINDOW_CREATE_BORDERLESS_BOOLEAN = "SDL.window.create.borderless"
  PROP_WINDOW_CREATE_FOCUSABLE_BOOLEAN = "SDL.window.create.focusable"
  PROP_WINDOW_CREATE_EXTERNAL_GRAPHICS_CONTEXT_BOOLEAN = "SDL.window.create.external_graphics_context"
  PROP_WINDOW_CREATE_FLAGS_NUMBER = "SDL.window.create.flags"
  PROP_WINDOW_CREATE_FULLSCREEN_BOOLEAN = "SDL.window.create.fullscreen"
  PROP_WINDOW_CREATE_HEIGHT_NUMBER = "SDL.window.create.height"
  PROP_WINDOW_CREATE_HIDDEN_BOOLEAN = "SDL.window.create.hidden"
  PROP_WINDOW_CREATE_HIGH_PIXEL_DENSITY_BOOLEAN = "SDL.window.create.high_pixel_density"
  PROP_WINDOW_CREATE_MAXIMIZED_BOOLEAN = "SDL.window.create.maximized"
  PROP_WINDOW_CREATE_MENU_BOOLEAN = "SDL.window.create.menu"
  PROP_WINDOW_CREATE_METAL_BOOLEAN = "SDL.window.create.metal"
  PROP_WINDOW_CREATE_MINIMIZED_BOOLEAN = "SDL.window.create.minimized"
  PROP_WINDOW_CREATE_MODAL_BOOLEAN = "SDL.window.create.modal"
  PROP_WINDOW_CREATE_MOUSE_GRABBED_BOOLEAN = "SDL.window.create.mouse_grabbed"
  PROP_WINDOW_CREATE_OPENGL_BOOLEAN = "SDL.window.create.opengl"
  PROP_WINDOW_CREATE_PARENT_POINTER = "SDL.window.create.parent"
  PROP_WINDOW_CREATE_RESIZABLE_BOOLEAN = "SDL.window.create.resizable"
  PROP_WINDOW_CREATE_TITLE_STRING = "SDL.window.create.title"
  PROP_WINDOW_CREATE_TRANSPARENT_BOOLEAN = "SDL.window.create.transparent"
  PROP_WINDOW_CREATE_TOOLTIP_BOOLEAN = "SDL.window.create.tooltip"
  PROP_WINDOW_CREATE_UTILITY_BOOLEAN = "SDL.window.create.utility"
  PROP_WINDOW_CREATE_VULKAN_BOOLEAN = "SDL.window.create.vulkan"
  PROP_WINDOW_CREATE_WIDTH_NUMBER = "SDL.window.create.width"
  PROP_WINDOW_CREATE_X_NUMBER = "SDL.window.create.x"
  PROP_WINDOW_CREATE_Y_NUMBER = "SDL.window.create.y"
  PROP_WINDOW_CREATE_COCOA_WINDOW_POINTER = "SDL.window.create.cocoa.window"
  PROP_WINDOW_CREATE_COCOA_VIEW_POINTER = "SDL.window.create.cocoa.view"
  PROP_WINDOW_CREATE_WAYLAND_SURFACE_ROLE_CUSTOM_BOOLEAN = "SDL.window.create.wayland.surface_role_custom"
  PROP_WINDOW_CREATE_WAYLAND_CREATE_EGL_WINDOW_BOOLEAN = "SDL.window.create.wayland.create_egl_window"
  PROP_WINDOW_CREATE_WAYLAND_WL_SURFACE_POINTER = "SDL.window.create.wayland.wl_surface"
  PROP_WINDOW_CREATE_WIN32_HWND_POINTER = "SDL.window.create.win32.hwnd"
  PROP_WINDOW_CREATE_WIN32_PIXEL_FORMAT_HWND_POINTER = "SDL.window.create.win32.pixel_format_hwnd"
  PROP_WINDOW_CREATE_X11_WINDOW_NUMBER = "SDL.window.create.x11.window"
  PROP_WINDOW_SHAPE_POINTER = "SDL.window.shape"
  PROP_WINDOW_HDR_ENABLED_BOOLEAN = "SDL.window.HDR_enabled"
  PROP_WINDOW_SDR_WHITE_LEVEL_FLOAT = "SDL.window.SDR_white_level"
  PROP_WINDOW_HDR_HEADROOM_FLOAT = "SDL.window.HDR_headroom"
  PROP_WINDOW_ANDROID_WINDOW_POINTER = "SDL.window.android.window"
  PROP_WINDOW_ANDROID_SURFACE_POINTER = "SDL.window.android.surface"
  PROP_WINDOW_UIKIT_WINDOW_POINTER = "SDL.window.uikit.window"
  PROP_WINDOW_UIKIT_METAL_VIEW_TAG_NUMBER = "SDL.window.uikit.metal_view_tag"
  PROP_WINDOW_UIKIT_OPENGL_FRAMEBUFFER_NUMBER = "SDL.window.uikit.opengl.framebuffer"
  PROP_WINDOW_UIKIT_OPENGL_RENDERBUFFER_NUMBER = "SDL.window.uikit.opengl.renderbuffer"
  PROP_WINDOW_UIKIT_OPENGL_RESOLVE_FRAMEBUFFER_NUMBER = "SDL.window.uikit.opengl.resolve_framebuffer"
  PROP_WINDOW_KMSDRM_DEVICE_INDEX_NUMBER = "SDL.window.kmsdrm.dev_index"
  PROP_WINDOW_KMSDRM_DRM_FD_NUMBER = "SDL.window.kmsdrm.drm_fd"
  PROP_WINDOW_KMSDRM_GBM_DEVICE_POINTER = "SDL.window.kmsdrm.gbm_dev"
  PROP_WINDOW_COCOA_WINDOW_POINTER = "SDL.window.cocoa.window"
  PROP_WINDOW_COCOA_METAL_VIEW_TAG_NUMBER = "SDL.window.cocoa.metal_view_tag"
  PROP_WINDOW_OPENVR_OVERLAY_ID = "SDL.window.openvr.overlay_id"
  PROP_WINDOW_VIVANTE_DISPLAY_POINTER = "SDL.window.vivante.display"
  PROP_WINDOW_VIVANTE_WINDOW_POINTER = "SDL.window.vivante.window"
  PROP_WINDOW_VIVANTE_SURFACE_POINTER = "SDL.window.vivante.surface"
  PROP_WINDOW_WIN32_HWND_POINTER = "SDL.window.win32.hwnd"
  PROP_WINDOW_WIN32_HDC_POINTER = "SDL.window.win32.hdc"
  PROP_WINDOW_WIN32_INSTANCE_POINTER = "SDL.window.win32.instance"
  PROP_WINDOW_WAYLAND_DISPLAY_POINTER = "SDL.window.wayland.display"
  PROP_WINDOW_WAYLAND_SURFACE_POINTER = "SDL.window.wayland.surface"
  PROP_WINDOW_WAYLAND_VIEWPORT_POINTER = "SDL.window.wayland.viewport"
  PROP_WINDOW_WAYLAND_EGL_WINDOW_POINTER = "SDL.window.wayland.egl_window"
  PROP_WINDOW_WAYLAND_XDG_SURFACE_POINTER = "SDL.window.wayland.xdg_surface"
  PROP_WINDOW_WAYLAND_XDG_TOPLEVEL_POINTER = "SDL.window.wayland.xdg_toplevel"
  PROP_WINDOW_WAYLAND_XDG_TOPLEVEL_EXPORT_HANDLE_STRING = "SDL.window.wayland.xdg_toplevel_export_handle"
  PROP_WINDOW_WAYLAND_XDG_POPUP_POINTER = "SDL.window.wayland.xdg_popup"
  PROP_WINDOW_WAYLAND_XDG_POSITIONER_POINTER = "SDL.window.wayland.xdg_positioner"
  PROP_WINDOW_X11_DISPLAY_POINTER = "SDL.window.x11.display"
  PROP_WINDOW_X11_SCREEN_NUMBER = "SDL.window.x11.screen"
  PROP_WINDOW_X11_WINDOW_NUMBER = "SDL.window.x11.window"
  WINDOW_SURFACE_VSYNC_DISABLED = 0
  WINDOW_SURFACE_VSYNC_ADAPTIVE = (-1)

  alias DisplayModeData = Void
  alias Window = Void
  alias GLContext = GLContextState*
  alias DisplayID = UInt32
  alias WindowID = UInt32
  alias WindowFlags = UInt64
  alias EGLDisplay = Void*
  alias EGLConfig = Void*
  alias EGLSurface = Void*
  alias EGLAttrib = LibC::Int*
  alias EGLint = LibC::Int
  alias GLProfile = UInt32
  alias GLContextFlag = UInt32
  alias GLContextReleaseFlag = UInt32
  alias GLContextResetNotification = UInt32

  enum SystemTheme
    SYSTEM_THEME_UNKNOWN
    SYSTEM_THEME_LIGHT
    SYSTEM_THEME_DARK
  end

  enum DisplayOrientation
    ORIENTATION_UNKNOWN
    ORIENTATION_LANDSCAPE
    ORIENTATION_LANDSCAPE_FLIPPED
    ORIENTATION_PORTRAIT
    ORIENTATION_PORTRAIT_FLIPPED
  end

  enum FlashOperation
    FLASH_CANCEL
    FLASH_BRIEFLY
    FLASH_UNTIL_FOCUSED
  end

  enum GLAttr
    GL_RED_SIZE
    GL_GREEN_SIZE
    GL_BLUE_SIZE
    GL_ALPHA_SIZE
    GL_BUFFER_SIZE
    GL_DOUBLEBUFFER
    GL_DEPTH_SIZE
    GL_STENCIL_SIZE
    GL_ACCUM_RED_SIZE
    GL_ACCUM_GREEN_SIZE
    GL_ACCUM_BLUE_SIZE
    GL_ACCUM_ALPHA_SIZE
    GL_STEREO
    GL_MULTISAMPLEBUFFERS
    GL_MULTISAMPLESAMPLES
    GL_ACCELERATED_VISUAL
    GL_RETAINED_BACKING
    GL_CONTEXT_MAJOR_VERSION
    GL_CONTEXT_MINOR_VERSION
    GL_CONTEXT_FLAGS
    GL_CONTEXT_PROFILE_MASK
    GL_SHARE_WITH_CURRENT_CONTEXT
    GL_FRAMEBUFFER_SRGB_CAPABLE
    GL_CONTEXT_RELEASE_BEHAVIOR
    GL_CONTEXT_RESET_NOTIFICATION
    GL_CONTEXT_NO_ERROR
    GL_FLOATBUFFERS
    GL_EGL_PLATFORM
  end

  enum HitTestResult
    HITTEST_NORMAL
    HITTEST_DRAGGABLE
    HITTEST_RESIZE_TOPLEFT
    HITTEST_RESIZE_TOP
    HITTEST_RESIZE_TOPRIGHT
    HITTEST_RESIZE_RIGHT
    HITTEST_RESIZE_BOTTOMRIGHT
    HITTEST_RESIZE_BOTTOM
    HITTEST_RESIZE_BOTTOMLEFT
    HITTEST_RESIZE_LEFT
  end

  struct DisplayMode
    display_id : DisplayID
    format : PixelFormat
    w : LibC::Int
    h : LibC::Int
    pixel_density : LibC::Float
    refresh_rate : LibC::Float
    refresh_rate_numerator : LibC::Int
    refresh_rate_denominator : LibC::Int
    internal : DisplayModeData*
  end

  fun get_num_video_drivers = SDL_GetNumVideoDrivers() : LibC::Int
  fun get_video_driver = SDL_GetVideoDriver(index : LibC::Int) : LibC::Char*
  fun get_current_video_driver = SDL_GetCurrentVideoDriver() : LibC::Char*
  fun get_system_theme = SDL_GetSystemTheme() : SystemTheme
  fun get_displays = SDL_GetDisplays(count : LibC::Int*) : DisplayID*
  fun get_primary_display = SDL_GetPrimaryDisplay() : DisplayID
  fun get_display_properties = SDL_GetDisplayProperties(display_id : DisplayID) : PropertiesID
  fun get_display_name = SDL_GetDisplayName(display_id : DisplayID) : LibC::Char*
  fun get_display_bounds = SDL_GetDisplayBounds(display_id : DisplayID, rect : Rect*) : LibC::Char
  fun get_display_usable_bounds = SDL_GetDisplayUsableBounds(display_id : DisplayID, rect : Rect*) : LibC::Char
  fun get_natural_display_orientation = SDL_GetNaturalDisplayOrientation(display_id : DisplayID) : DisplayOrientation
  fun get_current_display_orientation = SDL_GetCurrentDisplayOrientation(display_id : DisplayID) : DisplayOrientation
  fun get_display_content_scale = SDL_GetDisplayContentScale(display_id : DisplayID) : LibC::Float
  fun get_fullscreen_display_modes = SDL_GetFullscreenDisplayModes(display_id : DisplayID, count : LibC::Int*) : DisplayMode**
  fun get_closest_fullscreen_display_mode = SDL_GetClosestFullscreenDisplayMode(display_id : DisplayID, w : LibC::Int, h : LibC::Int, refresh_rate : LibC::Float, include_high_density_modes : LibC::Char, closest : DisplayMode*) : LibC::Char
  fun get_desktop_display_mode = SDL_GetDesktopDisplayMode(display_id : DisplayID) : DisplayMode*
  fun get_current_display_mode = SDL_GetCurrentDisplayMode(display_id : DisplayID) : DisplayMode*
  fun get_display_for_point = SDL_GetDisplayForPoint(point : Point*) : DisplayID
  fun get_display_for_rect = SDL_GetDisplayForRect(rect : Rect*) : DisplayID
  fun get_display_for_window = SDL_GetDisplayForWindow(window : Window*) : DisplayID
  fun get_window_pixel_density = SDL_GetWindowPixelDensity(window : Window*) : LibC::Float
  fun get_window_display_scale = SDL_GetWindowDisplayScale(window : Window*) : LibC::Float
  fun set_window_fullscreen_mode = SDL_SetWindowFullscreenMode(window : Window*, mode : DisplayMode*) : LibC::Char
  fun get_window_fullscreen_mode = SDL_GetWindowFullscreenMode(window : Window*) : DisplayMode*
  fun get_window_iccprofile = SDL_GetWindowICCProfile(window : Window*, size : LibC::SizeT*) : Void*
  fun get_window_pixel_format = SDL_GetWindowPixelFormat(window : Window*) : PixelFormat
  fun get_windows = SDL_GetWindows(count : LibC::Int*) : Window**
  fun create_window = SDL_CreateWindow(title : LibC::Char*, w : LibC::Int, h : LibC::Int, flags : WindowFlags) : Window*
  fun create_popup_window = SDL_CreatePopupWindow(parent : Window*, offset_x : LibC::Int, offset_y : LibC::Int, w : LibC::Int, h : LibC::Int, flags : WindowFlags) : Window*
  fun create_window_with_properties = SDL_CreateWindowWithProperties(props : PropertiesID) : Window*
  fun get_window_id = SDL_GetWindowID(window : Window*) : WindowID
  fun get_window_from_id = SDL_GetWindowFromID(id : WindowID) : Window*
  fun get_window_parent = SDL_GetWindowParent(window : Window*) : Window*
  fun get_window_properties = SDL_GetWindowProperties(window : Window*) : PropertiesID
  fun get_window_flags = SDL_GetWindowFlags(window : Window*) : WindowFlags
  fun set_window_title = SDL_SetWindowTitle(window : Window*, title : LibC::Char*) : LibC::Char
  fun get_window_title = SDL_GetWindowTitle(window : Window*) : LibC::Char*
  fun set_window_icon = SDL_SetWindowIcon(window : Window*, icon : Surface*) : LibC::Char
  fun set_window_position = SDL_SetWindowPosition(window : Window*, x : LibC::Int, y : LibC::Int) : LibC::Char
  fun get_window_position = SDL_GetWindowPosition(window : Window*, x : LibC::Int*, y : LibC::Int*) : LibC::Char
  fun set_window_size = SDL_SetWindowSize(window : Window*, w : LibC::Int, h : LibC::Int) : LibC::Char
  fun get_window_size = SDL_GetWindowSize(window : Window*, w : LibC::Int*, h : LibC::Int*) : LibC::Char
  fun get_window_safe_area = SDL_GetWindowSafeArea(window : Window*, rect : Rect*) : LibC::Char
  fun set_window_aspect_ratio = SDL_SetWindowAspectRatio(window : Window*, min_aspect : LibC::Float, max_aspect : LibC::Float) : LibC::Char
  fun get_window_aspect_ratio = SDL_GetWindowAspectRatio(window : Window*, min_aspect : LibC::Float*, max_aspect : LibC::Float*) : LibC::Char
  fun get_window_borders_size = SDL_GetWindowBordersSize(window : Window*, top : LibC::Int*, left : LibC::Int*, bottom : LibC::Int*, right : LibC::Int*) : LibC::Char
  fun get_window_size_in_pixels = SDL_GetWindowSizeInPixels(window : Window*, w : LibC::Int*, h : LibC::Int*) : LibC::Char
  fun set_window_minimum_size = SDL_SetWindowMinimumSize(window : Window*, min_w : LibC::Int, min_h : LibC::Int) : LibC::Char
  fun get_window_minimum_size = SDL_GetWindowMinimumSize(window : Window*, w : LibC::Int*, h : LibC::Int*) : LibC::Char
  fun set_window_maximum_size = SDL_SetWindowMaximumSize(window : Window*, max_w : LibC::Int, max_h : LibC::Int) : LibC::Char
  fun get_window_maximum_size = SDL_GetWindowMaximumSize(window : Window*, w : LibC::Int*, h : LibC::Int*) : LibC::Char
  fun set_window_bordered = SDL_SetWindowBordered(window : Window*, bordered : LibC::Char) : LibC::Char
  fun set_window_resizable = SDL_SetWindowResizable(window : Window*, resizable : LibC::Char) : LibC::Char
  fun set_window_always_on_top = SDL_SetWindowAlwaysOnTop(window : Window*, on_top : LibC::Char) : LibC::Char
  fun show_window = SDL_ShowWindow(window : Window*) : LibC::Char
  fun hide_window = SDL_HideWindow(window : Window*) : LibC::Char
  fun raise_window = SDL_RaiseWindow(window : Window*) : LibC::Char
  fun maximize_window = SDL_MaximizeWindow(window : Window*) : LibC::Char
  fun minimize_window = SDL_MinimizeWindow(window : Window*) : LibC::Char
  fun restore_window = SDL_RestoreWindow(window : Window*) : LibC::Char
  fun set_window_fullscreen = SDL_SetWindowFullscreen(window : Window*, fullscreen : LibC::Char) : LibC::Char
  fun sync_window = SDL_SyncWindow(window : Window*) : LibC::Char
  fun window_has_surface = SDL_WindowHasSurface(window : Window*) : LibC::Char
  fun get_window_surface = SDL_GetWindowSurface(window : Window*) : Surface*
  fun set_window_surface_vsync = SDL_SetWindowSurfaceVSync(window : Window*, vsync : LibC::Int) : LibC::Char
  fun get_window_surface_vsync = SDL_GetWindowSurfaceVSync(window : Window*, vsync : LibC::Int*) : LibC::Char
  fun update_window_surface = SDL_UpdateWindowSurface(window : Window*) : LibC::Char
  fun update_window_surface_rects = SDL_UpdateWindowSurfaceRects(window : Window*, rects : Rect*, numrects : LibC::Int) : LibC::Char
  fun destroy_window_surface = SDL_DestroyWindowSurface(window : Window*) : LibC::Char
  fun set_window_keyboard_grab = SDL_SetWindowKeyboardGrab(window : Window*, grabbed : LibC::Char) : LibC::Char
  fun set_window_mouse_grab = SDL_SetWindowMouseGrab(window : Window*, grabbed : LibC::Char) : LibC::Char
  fun get_window_keyboard_grab = SDL_GetWindowKeyboardGrab(window : Window*) : LibC::Char
  fun get_window_mouse_grab = SDL_GetWindowMouseGrab(window : Window*) : LibC::Char
  fun get_grabbed_window = SDL_GetGrabbedWindow() : Window*
  fun set_window_mouse_rect = SDL_SetWindowMouseRect(window : Window*, rect : Rect*) : LibC::Char
  fun get_window_mouse_rect = SDL_GetWindowMouseRect(window : Window*) : Rect*
  fun set_window_opacity = SDL_SetWindowOpacity(window : Window*, opacity : LibC::Float) : LibC::Char
  fun get_window_opacity = SDL_GetWindowOpacity(window : Window*) : LibC::Float
  fun set_window_parent = SDL_SetWindowParent(window : Window*, parent : Window*) : LibC::Char
  fun set_window_modal = SDL_SetWindowModal(window : Window*, modal : LibC::Char) : LibC::Char
  fun set_window_focusable = SDL_SetWindowFocusable(window : Window*, focusable : LibC::Char) : LibC::Char
  fun show_window_system_menu = SDL_ShowWindowSystemMenu(window : Window*, x : LibC::Int, y : LibC::Int) : LibC::Char
  fun set_window_hit_test = SDL_SetWindowHitTest(window : Window*, callback : HitTest, callback_data : Void*) : LibC::Char
  fun set_window_shape = SDL_SetWindowShape(window : Window*, shape : Surface*) : LibC::Char
  fun flash_window = SDL_FlashWindow(window : Window*, operation : FlashOperation) : LibC::Char
  fun destroy_window = SDL_DestroyWindow(window : Window*) : Void
  fun screen_saver_enabled = SDL_ScreenSaverEnabled() : LibC::Char
  fun enable_screen_saver = SDL_EnableScreenSaver() : LibC::Char
  fun disable_screen_saver = SDL_DisableScreenSaver() : LibC::Char
  fun gl_load_library = SDL_GL_LoadLibrary(path : LibC::Char*) : LibC::Char
  fun gl_get_proc_address = SDL_GL_GetProcAddress(proc : LibC::Char*) : FunctionPointer
  fun egl_get_proc_address = SDL_EGL_GetProcAddress(proc : LibC::Char*) : FunctionPointer
  fun gl_unload_library = SDL_GL_UnloadLibrary() : Void
  fun gl_extension_supported = SDL_GL_ExtensionSupported(extension : LibC::Char*) : LibC::Char
  fun gl_reset_attributes = SDL_GL_ResetAttributes() : Void
  fun gl_set_attribute = SDL_GL_SetAttribute(attr : GLAttr, value : LibC::Int) : LibC::Char
  fun gl_get_attribute = SDL_GL_GetAttribute(attr : GLAttr, value : LibC::Int*) : LibC::Char
  fun gl_create_context = SDL_GL_CreateContext(window : Window*) : GLContext
  fun gl_make_current = SDL_GL_MakeCurrent(window : Window*, context : GLContext) : LibC::Char
  fun gl_get_current_window = SDL_GL_GetCurrentWindow() : Window*
  fun gl_get_current_context = SDL_GL_GetCurrentContext() : GLContext
  fun egl_get_current_display = SDL_EGL_GetCurrentDisplay() : EGLDisplay
  fun egl_get_current_config = SDL_EGL_GetCurrentConfig() : EGLConfig
  fun egl_get_window_surface = SDL_EGL_GetWindowSurface(window : Window*) : EGLSurface
  fun egl_set_attribute_callbacks = SDL_EGL_SetAttributeCallbacks(platform_attrib_callback : EGLAttribArrayCallback, surface_attrib_callback : EGLIntArrayCallback, context_attrib_callback : EGLIntArrayCallback, userdata : Void*) : Void
  fun gl_set_swap_interval = SDL_GL_SetSwapInterval(interval : LibC::Int) : LibC::Char
  fun gl_get_swap_interval = SDL_GL_GetSwapInterval(interval : LibC::Int*) : LibC::Char
  fun gl_swap_window = SDL_GL_SwapWindow(window : Window*) : LibC::Char
  fun gl_destroy_context = SDL_GL_DestroyContext(context : GLContext) : LibC::Char

end

module LibSDLMacro
  # Other helper macros

  macro fourcc(a, b, c, d)
    (a.to_u8 << 0).to_u32 | (b.to_u8 << 8).to_u32 | (c.to_u8 << 16).to_u32 | (d.to_u8 << 24).to_u32
  end

  # SDL_version
  
  macro versionnum(major, minor, patch)
    major*1000000 + minor*1000 + patch
  end

  macro versionnum_major(version)
    version // 1000000
  end

  macro versionnum_minor(version)
    (version // 1000) % 1000
  end

  macro versionnum_micro(version)
    version % 1000
  end

  macro version
    LibSDLMacro.versionnum(LibSDL::MAJOR_VERSION, LibSDL::MINOR_VERSION, LibSDL::MICRO_VERSION)
  end

  macro version_atleast(x, y, z)
    LibSDL::VERSION >= LibSDLMacro.versionnum(X, Y, Z)
  end

  # SDL_audio

  macro define_audio_format(signed, bigendian, flt, size)
    (signed.to_u16 << 15) | (bigendian.to_u16 << 12) | (flt.to_u16 << 8) | (size & LibSDL::AUDIO_MASK_BITSIZE)
  end

  macro audio_bitsize(x)
    x & LibSDL::AUDIO_MASK_BITSIZE
  end

  macro audio_bytesize(x)
    LibSDLMacro.audio_bitsize(x) // 8
  end

  macro audio_isfloat(x)
    (x & LibSDL::AUDIO_MASK_DATATYPE) != 0
  end

  macro audio_isbigendian(x)
    (x & LibSDL::AUDIO_MASK_ENDIAN) != 0
  end

  macro audio_islittleendian(x)
    !LibSDLMacro.audio_isbigendian(x)
  end

  macro audio_issigned(x)
    (x & LibSDL::MASK_SIGNED) != 0
  end

  macro audio_isint(x)
    !LibSDLMacro.audio_isfloat(x)
  end

  macro isunsigned(x)
    !LibSDLMacro.audio_issigned(x)
  end

  macro audio_framesize(x)
    LibSDLMacro.audio_bytesize(x.format) * x.channels
  end

  # SDL_error

  macro unsupported
    LibSDL.set_error("That operation is not supported")
  end

  macro invalid_param_error(param)
    LibSDL.set_error("Parameter '%s' is invalid", param)
  end

  # SDL_keycode

  macro scancode_to_keycode(x)
    x | LibSDL::K_SCANCODE_MASK
  end

  # SDL_main
  
  macro main_use_callbacks(app_init_func, app_iterate_func, app_event_func, app_quit_func, sdl_main_func_name = libsdl_main)
    def {{sdl_main_func_name}}(argc : Int32, argv : UInt8**)
      LibSDL.enter_app_main_callbacks(argc, argv, {{app_init_func}}, {{app_iterate_func}}, {{app_event_func}}, {{app_quit_func}})
    end

    # TODO: Modify the main function to do this
    LibSDL.run_app(ARGC_UNSAFE, ARGV_UNSAFE, ->{{sdl_main_func_name}}, nil)
  end

  # SDL_mouse

  macro button_mask(x)
    1 << (x-1)
  end

  # SDL_pixels

  macro define_pixelfourcc(a, b, c, d)
    LibSDLMacro.fourcc(a, b, c, d)
  end

  macro define_pixelformat(type, order, layout, bits, bytes)
    (1 << 28) | (type << 24) | (order << 20) | (layout << 16) | (bits << 8) | (bytes << 0)
  end

  macro pixelflag(format)
     (format >> 28) & 0x0F
  end

  macro pixeltype(format)
    (format >> 24) & 0x0F
  end

  macro pixelorder(format)
    (format >> 20) & 0x0F
  end

  macro pixellayout(format)
    (format >> 16) & 0x0F
  end

  macro bitsperpixel(format)
    if LibSDLMacro.ispixelformat_fourcc(format)
      0
    else
      (format >> 8) & 0xFF
    end
  end

  macro bytesperpixel(format)
    if LibSDLMacro.ispixelformat_fourcc(format)
      if (format == LibSDL::PIXELFORMAT_YUY2) || (format == LibSDL::PIXELFORMAT_UYVY) || (format == LibSDL::PIXELFORMAT_YVYU) || (format == LibSDL::PIXELFORMAT_P010)
        2
      else
        1
      end
    else
      (format >> 0) & 0xFF
    end
  end

  macro ispixelformat_indexed(format)
    !LibSDLMacro.ispixelformat_fourcc(format) && ((LibSDLMacro.pixeltype(format) == LibSDL::PIXELTYPE_INDEX1) || (LibSDLMacro.pixeltype(format) == LibSDL::PIXELTYPE_INDEX2) || (LibSDLMacro.pixeltype(format) == LibSDL::PIXELTYPE_INDEX4) || (LibSDLMacro.pixeltype(format) == LibSDL::PIXELTYPE_INDEX8))
  end

  macro ispixelformat_packed(format)
    !LibSDLMacro.ispixelformat_fourcc(format) && ((LibSDLMacro.pixeltype(format) == LibSDL::PIXELTYPE_PACKED8) || (LibSDLMacro.pixeltype(format) == LibSDL::PIXELTYPE_PACKED16) || (LibSDLMacro.pixeltype(format) == LibSDL::PIXELTYPE_PACKED32))
  end

  macro ispixelformat_array(format)
    !LibSDLMacro.ispixelformat_fourcc(format) && ((LibSDLMacro.pixeltype(format) == LibSDL::PIXELTYPE_ARRAYU8) || (LibSDLMacro.pixeltype(format) == LibSDL::PIXELTYPE_ARRAYU16) || (LibSDLMacro.pixeltype(format) == LibSDL::PIXELTYPE_ARRAYU32) || (LibSDLMacro.pixeltype(format) == LibSDL::PIXELTYPE_ARRAYF16) || (LibSDLMacro.pixeltype(format) == LibSDL::PIXELTYPE_ARRAYF32))
  end

  macro ispixelformat_10bit(format)
    !LibSDLMacro.ispixelformat_fourcc(format) && ((LibSDLMacro.pixeltype(format) == LibSDL::PIXELTYPE_PACKED32) && (LibSDLMacro.pixeltype(format) == LibSDL::PACKEDLAYOUT_2101010))
  end

  macro ispixelformat_float(format)
    !LibSDLMacro.ispixelformat_fourcc(format) && ((LibSDLMacro.pixeltype(format) == LibSDL::PIXELTYPE_ARRAYF16) || (LibSDLMacro.pixeltype(format) == LibSDL::PIXELTYPE_ARRAYF32))
  end

  macro ispixelformat_alpha(format)
    (LibSDLMacro.ispixelformat_packed(format) && ((LibSDLMacro.pixelorder(format) == LibSDL::PACKEDORDER_ARGB) || (LibSDLMacro.pixelorder(format) == LibSDL::PACKEDORDER_RGBA) || (LibSDLMacro.pixelorder(format) == LibSDL::PACKEDORDER_ABGR) || (LibSDLMacro.pixelorder(format) == LibSDL::PACKEDORDER_BGRA))) || (LibSDLMacro.ispixelformat_array(format) && ((LibSDLMacro.pixelorder(format) == LibSDL::ARRAYORDER_ARGB) || (LibSDLMacro.pixelorder(format) == LibSDL::ARRAYORDER_RGBA) || (LibSDLMacro.pixelorder(format) == LibSDL::ARRAYORDER_ABGR) || (LibSDLMacro.pixelorder(format) == LibSDL::ARRAYORDER_BGRA)))
  end

  macro ispixelformat_fourcc(format)
    (format != 0) && (LibSDLMacro.pixel_flag(format) != 1)
  end

  macro define_colorspace(type, range, primaries, transfer, matrix, chroma) 
    (type.to_u32 << 28) | (range.to_u32 << 24) | (chroma.to_u32 << 20) | (primaries.to_u32 << 10) | (transfer.to_u32 << 5) | (matrix.to_u32 << 0)
  end

  macro colorspacetype(cspace)
    LibSDL::ColorType.new((cspace >> 28) & 0x0F)
  end

  macro colorspacerange(cspace)
    LibSDL::ColorRange.new((cspace >> 24) & 0x0F)
  end

  macro colorspacechroma(cspace)
    LibSDL::ChromaLocation.new((cspace >> 20) & 0x0F)
  end

  macro colorspaceprimaries(cspace)
    LibSDL::ColorPrimaries.new((cspace >> 10) & 0x1F)
  end

  macro colorspacetransfer(cspace)
    LibSDL::TransferCharacteristics.new((cspace >> 5) & 0x1F)
  end

  macro colorspacematrix(cspace)
    LibSDL::MatrixCoefficients.new(cspace & 0x1F)
  end

  macro iscolorspace_matrix_bt601(cspace)
    LibSDLMacro.colorspacematrix(cspace) == LibSDL::MATRIX_COEFFICIENTS_BT601 || LibSDLMacro.colorspacematrix(cspace) == LibSDL::MATRIX_COEFFICIENTS_BT470BG
  end

  macro iscolorspace_matrix_bt709(cspace)
    LibSDLMacro.colorspacematrix(cspace) == LibSDL::MATRIX_COEFFICIENTS_BT709
  end

  macro iscolorspace_matrix_bt2020_ncl(cspace)
    LibSDLMacro.colorspacematrix(cspace) == LibSDL::MATRIX_COEFFICIENTS_BT2020_NCL
  end

  macro iscolorspace_limited_range(cspace)
    LibSDLMacro.colorspacerange(cspace) != LibSDL::COLOR_RANGE_FULL
  end

  macro iscolorspace_full_range(cspace)
    LibSDLMacro.colorspacerange(cspace) == LibSDL::COLOR_RANGE_FULL
  end

  # SDL_rect
  # Note: These were inline functions, not macros
  
  @[AlwaysInline]
  def self.rect_to_f_rect(rect : LibSDL::Rect*, frect : LibSDL::FRect*)
    frect.value.x = rect.value.x.to_f
    frect.value.y = rect.value.y.to_f
    frect.value.w = rect.value.w.to_f
    frect.value.h = rect.value.h.to_f
  end

  @[AlwaysInline]
  def self.point_in_rect(p : LibSDL::Point*, r : LibSDL::Rect*)
    p && r && (p.value.x >= r.value.x) && (p.value.x < (r.value.x + r.value.w)) && (p.value.y >= r.value.y) && (p.value.y < (r.value.y + r.value.h))
  end

  @[AlwaysInline]
  def self.rect_empty(r : LibSDL::Rect*)
    !r || (r.value.w <= 0) || (r.value.h <= 0)
  end

  @[AlwaysInline]
  def self.rects_equal(a : LibSDL::Rect*, b : LibSDL::Rect*)
    a && b && (a.value.x == b.value.x) && (a.value.y == b.value.y) && (a.value.w == b.value.w) && (a.value.h == b.value.h)
  end

  @[AlwaysInline]
  def self.point_in_rect_float(p : LibSDL::FPoint*, r : LibSDL::FRect*)
    p && r && (p.value.x >= r.value.x) && (p.value.x <= (r.value.x + r.value.w)) && (p.value.y >= r.value.y) && (p.value.y <= (r.value.y + r.value.h))
  end

  @[AlwaysInline]
  def self.rect_empty_float(r : LibSDL::FRect*)
    !r || (r.value.w < 0.0) || (r.value.h < 0.0)
  end

  @[AlwaysInline]
  def self.rects_equal_epsilon(a : LibSDL::FRect*, b : LibSDL::FRect*, epsilon : LibC::Float)
    a && b && ((a == b) || (((a.value.x - b.value.x).abs <= epsilon) && ((a.value.y - b.value.y).abs <= epsilon) && ((a.value.w - b.value.w).abs <= epsilon) && ((a.value.h - b.value.h).abs <= epsilon)))
  end

  @[AlwaysInline]
  def self.rects_equal_float(a : LibSDL::FRect*, b : LibSDL::FRect*)
    LibSDLMacro.rects_equal_epsilon(a, b, FLT_EPSILON)
  end

  # SDL_surface

  macro mustlock(s)
    (s.value.flags & LibSDL::SURFACE_LOCK_NEEDED) == LibSDL::SURFACE_LOCK_NEEDED
  end

  # SDL_video

  macro windowpos_undefined_display(x)
    LibSDL::WINDOWPOS_UNDEFINED_MASK | x
  end

  macro windowpos_isundefined(x)
    (x & 0xFFFF0000) == LibSDL::WINDOWPOS_UNDEFINED_MASK
  end

  macro windowpos_centered_display(x)
    LibSDL::WINDOWPOS_CENTERED_MASK | x
  end

  macro windowpos_iscentered(x)
    (x & 0xFFFF0000) == LibSDL::WINDOWPOS_CENTERED_MASK
  end
end
