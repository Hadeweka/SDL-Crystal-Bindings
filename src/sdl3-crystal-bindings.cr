@[Link("SDL3")]
lib LibSDL
  # additions3/helper.cr

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
    UNKNOWN = 0
    A = 4
    B = 5
    C = 6
    D = 7
    E = 8
    F = 9
    G = 10
    H = 11
    I = 12
    J = 13
    K = 14
    L = 15
    M = 16
    N = 17
    O = 18
    P = 19
    Q = 20
    R = 21
    S = 22
    T = 23
    U = 24
    V = 25
    W = 26
    X = 27
    Y = 28
    Z = 29
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
    RETURN = 40
    ESCAPE = 41
    BACKSPACE = 42
    TAB = 43
    SPACE = 44
    MINUS = 45
    EQUALS = 46
    LEFTBRACKET = 47
    RIGHTBRACKET = 48
    BACKSLASH = 49
    NONUSHASH = 50
    SEMICOLON = 51
    APOSTROPHE = 52
    GRAVE = 53
    COMMA = 54
    PERIOD = 55
    SLASH = 56
    CAPSLOCK = 57
    F1 = 58
    F2 = 59
    F3 = 60
    F4 = 61
    F5 = 62
    F6 = 63
    F7 = 64
    F8 = 65
    F9 = 66
    F10 = 67
    F11 = 68
    F12 = 69
    PRINTSCREEN = 70
    SCROLLLOCK = 71
    PAUSE = 72
    INSERT = 73
    HOME = 74
    PAGEUP = 75
    DELETE = 76
    END = 77
    PAGEDOWN = 78
    RIGHT = 79
    LEFT = 80
    DOWN = 81
    UP = 82
    NUMLOCKCLEAR = 83
    KP_DIVIDE = 84
    KP_MULTIPLY = 85
    KP_MINUS = 86
    KP_PLUS = 87
    KP_ENTER = 88
    KP_1 = 89
    KP_2 = 90
    KP_3 = 91
    KP_4 = 92
    KP_5 = 93
    KP_6 = 94
    KP_7 = 95
    KP_8 = 96
    KP_9 = 97
    KP_0 = 98
    KP_PERIOD = 99
    NONUSBACKSLASH = 100
    APPLICATION = 101
    POWER = 102
    KP_EQUALS = 103
    F13 = 104
    F14 = 105
    F15 = 106
    F16 = 107
    F17 = 108
    F18 = 109
    F19 = 110
    F20 = 111
    F21 = 112
    F22 = 113
    F23 = 114
    F24 = 115
    EXECUTE = 116
    HELP = 117
    MENU = 118
    SELECT = 119
    STOP = 120
    AGAIN = 121
    UNDO = 122
    CUT = 123
    COPY = 124
    PASTE = 125
    FIND = 126
    MUTE = 127
    VOLUMEUP = 128
    VOLUMEDOWN = 129
    KP_COMMA = 133
    KP_EQUALSAS400 = 134
    INTERNATIONAL1 = 135
    INTERNATIONAL2 = 136
    INTERNATIONAL3 = 137
    INTERNATIONAL4 = 138
    INTERNATIONAL5 = 139
    INTERNATIONAL6 = 140
    INTERNATIONAL7 = 141
    INTERNATIONAL8 = 142
    INTERNATIONAL9 = 143
    LANG1 = 144
    LANG2 = 145
    LANG3 = 146
    LANG4 = 147
    LANG5 = 148
    LANG6 = 149
    LANG7 = 150
    LANG8 = 151
    LANG9 = 152
    ALTERASE = 153
    SYSREQ = 154
    CANCEL = 155
    CLEAR = 156
    PRIOR = 157
    RETURN2 = 158
    SEPARATOR = 159
    OUT = 160
    OPER = 161
    CLEARAGAIN = 162
    CRSEL = 163
    EXSEL = 164
    KP_00 = 176
    KP_000 = 177
    THOUSANDSSEPARATOR = 178
    DECIMALSEPARATOR = 179
    CURRENCYUNIT = 180
    CURRENCYSUBUNIT = 181
    KP_LEFTPAREN = 182
    KP_RIGHTPAREN = 183
    KP_LEFTBRACE = 184
    KP_RIGHTBRACE = 185
    KP_TAB = 186
    KP_BACKSPACE = 187
    KP_A = 188
    KP_B = 189
    KP_C = 190
    KP_D = 191
    KP_E = 192
    KP_F = 193
    KP_XOR = 194
    KP_POWER = 195
    KP_PERCENT = 196
    KP_LESS = 197
    KP_GREATER = 198
    KP_AMPERSAND = 199
    KP_DBLAMPERSAND = 200
    KP_VERTICALBAR = 201
    KP_DBLVERTICALBAR = 202
    KP_COLON = 203
    KP_HASH = 204
    KP_SPACE = 205
    KP_AT = 206
    KP_EXCLAM = 207
    KP_MEMSTORE = 208
    KP_MEMRECALL = 209
    KP_MEMCLEAR = 210
    KP_MEMADD = 211
    KP_MEMSUBTRACT = 212
    KP_MEMMULTIPLY = 213
    KP_MEMDIVIDE = 214
    KP_PLUSMINUS = 215
    KP_CLEAR = 216
    KP_CLEARENTRY = 217
    KP_BINARY = 218
    KP_OCTAL = 219
    KP_DECIMAL = 220
    KP_HEXADECIMAL = 221
    LCTRL = 224
    LSHIFT = 225
    LALT = 226
    LGUI = 227
    RCTRL = 228
    RSHIFT = 229
    RALT = 230
    RGUI = 231
    MODE = 257
    SLEEP = 258
    WAKE = 259
    CHANNEL_INCREMENT = 260
    CHANNEL_DECREMENT = 261
    MEDIA_PLAY = 262
    MEDIA_PAUSE = 263
    MEDIA_RECORD = 264
    MEDIA_FAST_FORWARD = 265
    MEDIA_REWIND = 266
    MEDIA_NEXT_TRACK = 267
    MEDIA_PREVIOUS_TRACK = 268
    MEDIA_STOP = 269
    MEDIA_EJECT = 270
    MEDIA_PLAY_PAUSE = 271
    MEDIA_SELECT = 272
    AC_NEW = 273
    AC_OPEN = 274
    AC_CLOSE = 275
    AC_EXIT = 276
    AC_SAVE = 277
    AC_PRINT = 278
    AC_PROPERTIES = 279
    AC_SEARCH = 280
    AC_HOME = 281
    AC_BACK = 282
    AC_FORWARD = 283
    AC_STOP = 284
    AC_REFRESH = 285
    AC_BOOKMARKS = 286
    SOFTLEFT = 287
    SOFTRIGHT = 288
    CALL = 289
    ENDCALL = 290
    RESERVED = 400
    COUNT = 512
  end

  # additions3/helper_audio.cr

  enum AudioFormat
    UNKNOWN = 0x0000
    U8 = 0x0008
    S8 = 0x8008
    S16LE = 0x8010
    S16BE = 0x9010
    S32LE = 0x8020
    S32BE = 0x9020
    F32LE = 0x8120
    # NOTE: The following definitions ONLY hold for little endian - if you are using big endian (why), please open an issue report
    S16 = S16LE
    S32 = S32LE
    F32 = F32LE
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

  type AudioStream = Void
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

  enum BlendMode : UInt32
    NONE = 0x00000000
    BLEND = 0x00000001
    BLEND_PREMULTIPLIED = 0x00000010
    ADD = 0x00000002
    ADD_PREMULTIPLIED = 0x00000020
    MOD = 0x00000004
    MUL = 0x00000008
    INVALID = 0x7FFFFFFF
  end

  enum BlendOperation
    ADD = 0x1
    SUBTRACT = 0x2
    REV_SUBTRACT = 0x3
    MINIMUM = 0x4
    MAXIMUM = 0x5
  end

  enum BlendFactor
    ZERO = 0x1
    ONE = 0x2
    SRC_COLOR = 0x3
    ONE_MINUS_SRC_COLOR = 0x4
    SRC_ALPHA = 0x5
    ONE_MINUS_SRC_ALPHA = 0x6
    DST_COLOR = 0x7
    ONE_MINUS_DST_COLOR = 0x8
    DST_ALPHA = 0x9
    ONE_MINUS_DST_ALPHA = 0xA
  end

  fun compose_custom_blend_mode = SDL_ComposeCustomBlendMode(src_color_factor : BlendFactor, dst_color_factor : BlendFactor, color_operation : BlendOperation, src_alpha_factor : BlendFactor, dst_alpha_factor : BlendFactor, alpha_operation : BlendOperation) : BlendMode

  # SDL_camera

  type Camera = Void
  alias CameraID = UInt32

  enum CameraPosition
    UNKNOWN
    FRONT_FACING
    BACK_FACING
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

  # additions3/helper_clipboard.cr

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

  # additions3/helper_dialog.cr

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
    OPENFILE
    SAVEFILE
    OPENFOLDER
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

  # additions3/helper_event.cr

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
    FIRST = 0
    QUIT = 0x100
    TERMINATING
    LOW_MEMORY
    WILL_ENTER_BACKGROUND
    DID_ENTER_BACKGROUND
    WILL_ENTER_FOREGROUND
    DID_ENTER_FOREGROUND
    LOCALE_CHANGED
    SYSTEM_THEME_CHANGED
    DISPLAY_ORIENTATION = 0x151
    DISPLAY_ADDED
    DISPLAY_REMOVED
    DISPLAY_MOVED
    DISPLAY_DESKTOP_MODE_CHANGED
    DISPLAY_CURRENT_MODE_CHANGED
    DISPLAY_CONTENT_SCALE_CHANGED
    DISPLAY_FIRST = DISPLAY_ORIENTATION
    DISPLAY_LAST = DISPLAY_CONTENT_SCALE_CHANGED
    WINDOW_SHOWN = 0x202
    WINDOW_HIDDEN
    WINDOW_EXPOSED
    WINDOW_MOVED
    WINDOW_RESIZED
    WINDOW_PIXEL_SIZE_CHANGED
    WINDOW_METAL_VIEW_RESIZED
    WINDOW_MINIMIZED
    WINDOW_MAXIMIZED
    WINDOW_RESTORED
    WINDOW_MOUSE_ENTER
    WINDOW_MOUSE_LEAVE
    WINDOW_FOCUS_GAINED
    WINDOW_FOCUS_LOST
    WINDOW_CLOSE_REQUESTED
    WINDOW_HIT_TEST
    WINDOW_ICCPROF_CHANGED
    WINDOW_DISPLAY_CHANGED
    WINDOW_DISPLAY_SCALE_CHANGED
    WINDOW_SAFE_AREA_CHANGED
    WINDOW_OCCLUDED
    WINDOW_ENTER_FULLSCREEN
    WINDOW_LEAVE_FULLSCREEN
    WINDOW_DESTROYED
    WINDOW_HDR_STATE_CHANGED
    WINDOW_FIRST = WINDOW_SHOWN
    WINDOW_LAST = WINDOW_HDR_STATE_CHANGED
    KEY_DOWN = 0x300
    KEY_UP
    TEXT_EDITING
    TEXT_INPUT
    KEYMAP_CHANGED
    KEYBOARD_ADDED
    KEYBOARD_REMOVED
    TEXT_EDITING_CANDIDATES
    MOUSE_MOTION = 0x400
    MOUSE_BUTTON_DOWN
    MOUSE_BUTTON_UP
    MOUSE_WHEEL
    MOUSE_ADDED
    MOUSE_REMOVED
    JOYSTICK_AXIS_MOTION = 0x600
    JOYSTICK_BALL_MOTION
    JOYSTICK_HAT_MOTION
    JOYSTICK_BUTTON_DOWN
    JOYSTICK_BUTTON_UP
    JOYSTICK_ADDED
    JOYSTICK_REMOVED
    JOYSTICK_BATTERY_UPDATED
    JOYSTICK_UPDATE_COMPLETE
    GAMEPAD_AXIS_MOTION = 0x650
    GAMEPAD_BUTTON_DOWN
    GAMEPAD_BUTTON_UP
    GAMEPAD_ADDED
    GAMEPAD_REMOVED
    GAMEPAD_REMAPPED
    GAMEPAD_TOUCHPAD_DOWN
    GAMEPAD_TOUCHPAD_MOTION
    GAMEPAD_TOUCHPAD_UP
    GAMEPAD_SENSOR_UPDATE
    GAMEPAD_UPDATE_COMPLETE
    GAMEPAD_STEAM_HANDLE_UPDATED
    FINGER_DOWN = 0x700
    FINGER_UP
    FINGER_MOTION
    FINGER_CANCELED
    CLIPBOARD_UPDATE = 0x900
    DROP_FILE = 0x1000
    DROP_TEXT
    DROP_BEGIN
    DROP_COMPLETE
    DROP_POSITION
    AUDIO_DEVICE_ADDED = 0x1100
    AUDIO_DEVICE_REMOVED
    AUDIO_DEVICE_FORMAT_CHANGED
    SENSOR_UPDATE = 0x1200
    PEN_PROXIMITY_IN = 0x1300
    PEN_PROXIMITY_OUT
    PEN_DOWN
    PEN_UP
    PEN_BUTTON_DOWN
    PEN_BUTTON_UP
    PEN_MOTION
    PEN_AXIS
    CAMERA_DEVICE_ADDED = 0x1400
    CAMERA_DEVICE_REMOVED
    CAMERA_DEVICE_APPROVED
    CAMERA_DEVICE_DENIED
    RENDER_TARGETS_RESET = 0x2000
    RENDER_DEVICE_RESET
    RENDER_DEVICE_LOST
    PRIVATE0 = 0x4000
    PRIVATE1
    PRIVATE2
    PRIVATE3
    POLL_SENTINEL = 0x7F00
    USER = 0x8000
    LAST = 0xFFFF
    ENUM_PADDING = 0x7FFFFFFF
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

  # additions3/helper_gamepad.cr

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

  type Gamepad = Void

  enum GamepadType
    UNKNOWN = 0
    STANDARD
    XBOX360
    XBOXONE
    PS3
    PS4
    PS5
    NINTENDO_SWITCH_PRO
    NINTENDO_SWITCH_JOYCON_LEFT
    NINTENDO_SWITCH_JOYCON_RIGHT
    NINTENDO_SWITCH_JOYCON_PAIR
    COUNT
  end

  enum GamepadButton
    INVALID = -1
    SOUTH
    EAST
    WEST
    NORTH
    BACK
    GUIDE
    START
    LEFT_STICK
    RIGHT_STICK
    LEFT_SHOULDER
    RIGHT_SHOULDER
    DPAD_UP
    DPAD_DOWN
    DPAD_LEFT
    DPAD_RIGHT
    MISC1
    RIGHT_PADDLE1
    LEFT_PADDLE1
    RIGHT_PADDLE2
    LEFT_PADDLE2
    TOUCHPAD
    MISC2
    MISC3
    MISC4
    MISC5
    MISC6
    COUNT
  end

  enum GamepadButtonLabel
    UNKNOWN
    A
    B
    X
    Y
    CROSS
    CIRCLE
    SQUARE
    TRIANGLE
  end

  enum GamepadAxis
    INVALID = -1
    LEFTX
    LEFTY
    RIGHTX
    RIGHTY
    LEFT_TRIGGER
    RIGHT_TRIGGER
    COUNT
  end

  enum GamepadBindingType
    NONE = 0
    BUTTON
    AXIS
    HAT
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

  type GPUDevice = Void
  type GPUBuffer = Void
  type GPUTransferBuffer = Void
  type GPUTexture = Void
  type GPUSampler = Void
  type GPUShader = Void
  type GPUComputePipeline = Void
  type GPUGraphicsPipeline = Void
  type GPUCommandBuffer = Void
  type GPURenderPass = Void
  type GPUComputePass = Void
  type GPUCopyPass = Void
  type GPUFence = Void

  @[Flags]
  enum GPUTextureUsageFlags : UInt32
    SAMPLER = (1 << 0)
    COLOR_TARGET = (1 << 1)
    DEPTH_STENCIL_TARGET = (1 << 2)
    GRAPHICS_STORAGE_READ = (1 << 3)
    COMPUTE_STORAGE_READ = (1 << 4)
    COMPUTE_STORAGE_WRITE = (1 << 5)
    COMPUTE_STORAGE_SIMULTANEOUS_READ_WRITE = (1 << 6)
  end

  @[Flags]
  enum GPUBufferUsageFlags : UInt32
    VERTEX = (1 << 0)
    INDEX = (1 << 1)
    INDIRECT = (1 << 2)
    GRAPHICS_STORAGE_READ = (1 << 3)
    COMPUTE_STORAGE_READ = (1 << 4)
    COMPUTE_STORAGE_WRITE = (1 << 5)
  end

  enum GPUShaderFormat : UInt32
    INVALID = 0
    PRIVATE = (1 << 0)
    SPIRV = (1 << 1)
    DXBC = (1 << 2)
    DXIL = (1 << 3)
    MSL = (1 << 4)
    METALLIB = (1 << 5)
  end

  @[Flags]
  enum GPUColorComponentFlags : UInt8
    R = (1 << 0)
    G = (1 << 1)
    B = (1 << 2)
    A = (1 << 3)
  end

  enum GPUPrimitiveType
    TRIANGLELIST
    TRIANGLESTRIP
    LINELIST
    LINESTRIP
    POINTLIST
  end

  enum GPULoadOp
    LOAD
    CLEAR
    DONT_CARE
  end

  enum GPUStoreOp
    STORE
    DONT_CARE
    RESOLVE
    RESOLVE_AND_STORE
  end

  enum GPUIndexElementSize
    INDEXELEMENTSIZE_16BIT
    INDEXELEMENTSIZE_32BIT
  end

  enum GPUTextureFormat
    INVALID
    A8_UNORM
    R8_UNORM
    R8G8_UNORM
    R8G8B8A8_UNORM
    R16_UNORM
    R16G16_UNORM
    R16G16B16A16_UNORM
    R10G10B10A2_UNORM
    B5G6R5_UNORM
    B5G5R5A1_UNORM
    B4G4R4A4_UNORM
    B8G8R8A8_UNORM
    BC1_RGBA_UNORM
    BC2_RGBA_UNORM
    BC3_RGBA_UNORM
    BC4_R_UNORM
    BC5_RG_UNORM
    BC7_RGBA_UNORM
    BC6H_RGB_FLOAT
    BC6H_RGB_UFLOAT
    R8_SNORM
    R8G8_SNORM
    R8G8B8A8_SNORM
    R16_SNORM
    R16G16_SNORM
    R16G16B16A16_SNORM
    R16_FLOAT
    R16G16_FLOAT
    R16G16B16A16_FLOAT
    R32_FLOAT
    R32G32_FLOAT
    R32G32B32A32_FLOAT
    R11G11B10_UFLOAT
    R8_UINT
    R8G8_UINT
    R8G8B8A8_UINT
    R16_UINT
    R16G16_UINT
    R16G16B16A16_UINT
    R32_UINT
    R32G32_UINT
    R32G32B32A32_UINT
    R8_INT
    R8G8_INT
    R8G8B8A8_INT
    R16_INT
    R16G16_INT
    R16G16B16A16_INT
    R32_INT
    R32G32_INT
    R32G32B32A32_INT
    R8G8B8A8_UNORM_SRGB
    B8G8R8A8_UNORM_SRGB
    BC1_RGBA_UNORM_SRGB
    BC2_RGBA_UNORM_SRGB
    BC3_RGBA_UNORM_SRGB
    BC7_RGBA_UNORM_SRGB
    D16_UNORM
    D24_UNORM
    D32_FLOAT
    D24_UNORM_S8_UINT
    D32_FLOAT_S8_UINT
    ASTC_4X4_UNORM
    ASTC_5X4_UNORM
    ASTC_5X5_UNORM
    ASTC_6X5_UNORM
    ASTC_6X6_UNORM
    ASTC_8X5_UNORM
    ASTC_8X6_UNORM
    ASTC_8X8_UNORM
    ASTC_10X5_UNORM
    ASTC_10X6_UNORM
    ASTC_10X8_UNORM
    ASTC_10X10_UNORM
    ASTC_12X10_UNORM
    ASTC_12X12_UNORM
    ASTC_4X4_UNORM_SRGB
    ASTC_5X4_UNORM_SRGB
    ASTC_5X5_UNORM_SRGB
    ASTC_6X5_UNORM_SRGB
    ASTC_6X6_UNORM_SRGB
    ASTC_8X5_UNORM_SRGB
    ASTC_8X6_UNORM_SRGB
    ASTC_8X8_UNORM_SRGB
    ASTC_10X5_UNORM_SRGB
    ASTC_10X6_UNORM_SRGB
    ASTC_10X8_UNORM_SRGB
    ASTC_10X10_UNORM_SRGB
    ASTC_12X10_UNORM_SRGB
    ASTC_12X12_UNORM_SRGB
    ASTC_4X4_FLOAT
    ASTC_5X4_FLOAT
    ASTC_5X5_FLOAT
    ASTC_6X5_FLOAT
    ASTC_6X6_FLOAT
    ASTC_8X5_FLOAT
    ASTC_8X6_FLOAT
    ASTC_8X8_FLOAT
    ASTC_10X5_FLOAT
    ASTC_10X6_FLOAT
    ASTC_10X8_FLOAT
    ASTC_10X10_FLOAT
    ASTC_12X10_FLOAT
    ASTC_12X12_FLOAT
  end

  enum GPUTextureType
    TEXTURETYPE_2D
    TEXTURETYPE_2D_ARRAY
    TEXTURETYPE_3D
    CUBE
    CUBE_ARRAY
  end

  enum GPUSampleCount
    SAMPLECOUNT_1
    SAMPLECOUNT_2
    SAMPLECOUNT_4
    SAMPLECOUNT_8
  end

  enum GPUCubeMapFace
    POSITIVEX
    NEGATIVEX
    POSITIVEY
    NEGATIVEY
    POSITIVEZ
    NEGATIVEZ
  end

  enum GPUTransferBufferUsage
    UPLOAD
    DOWNLOAD
  end

  enum GPUShaderStage
    VERTEX
    FRAGMENT
  end

  enum GPUVertexElementFormat
    INVALID
    INT
    INT2
    INT3
    INT4
    UINT
    UINT2
    UINT3
    UINT4
    FLOAT
    FLOAT2
    FLOAT3
    FLOAT4
    BYTE2
    BYTE4
    UBYTE2
    UBYTE4
    BYTE2_NORM
    BYTE4_NORM
    UBYTE2_NORM
    UBYTE4_NORM
    SHORT2
    SHORT4
    USHORT2
    USHORT4
    SHORT2_NORM
    SHORT4_NORM
    USHORT2_NORM
    USHORT4_NORM
    HALF2
    HALF4
  end

  enum GPUVertexInputRate
    VERTEX
    INSTANCE
  end

  enum GPUFillMode
    FILL
    LINE
  end

  enum GPUCullMode
    NONE
    FRONT
    BACK
  end

  enum GPUFrontFace
    COUNTER_CLOCKWISE
    CLOCKWISE
  end

  enum GPUCompareOp
    INVALID
    NEVER
    LESS
    EQUAL
    LESS_OR_EQUAL
    GREATER
    NOT_EQUAL
    GREATER_OR_EQUAL
    ALWAYS
  end

  enum GPUStencilOp
    INVALID
    KEEP
    ZERO
    REPLACE
    INCREMENT_AND_CLAMP
    DECREMENT_AND_CLAMP
    INVERT
    INCREMENT_AND_WRAP
    DECREMENT_AND_WRAP
  end

  enum GPUBlendOp
    INVALID
    ADD
    SUBTRACT
    REVERSE_SUBTRACT
    MIN
    MAX
  end

  enum GPUBlendFactor
    INVALID
    ZERO
    ONE
    SRC_COLOR
    ONE_MINUS_SRC_COLOR
    DST_COLOR
    ONE_MINUS_DST_COLOR
    SRC_ALPHA
    ONE_MINUS_SRC_ALPHA
    DST_ALPHA
    ONE_MINUS_DST_ALPHA
    CONSTANT_COLOR
    ONE_MINUS_CONSTANT_COLOR
    SRC_ALPHA_SATURATE
  end

  enum GPUFilter
    NEAREST
    LINEAR
  end

  enum GPUSamplerMipmapMode
    NEAREST
    LINEAR
  end

  enum GPUSamplerAddressMode
    REPEAT
    MIRRORED_REPEAT
    CLAMP_TO_EDGE
  end

  enum GPUPresentMode
    VSYNC
    IMMEDIATE
    MAILBOX
  end

  enum GPUSwapchainComposition
    SDR
    SDR_LINEAR
    HDR_EXTENDED_LINEAR
    HDR10_ST2084
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

  # additions3/helper_haptic.cr

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

  type Haptic = Void
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

  # additions3/helper_hints.cr

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
    DEFAULT
    NORMAL
    OVERRIDE
  end

  fun set_hint_with_priority = SDL_SetHintWithPriority(name : LibC::Char*, value : LibC::Char*, priority : HintPriority) : LibC::Char
  fun set_hint = SDL_SetHint(name : LibC::Char*, value : LibC::Char*) : LibC::Char
  fun reset_hint = SDL_ResetHint(name : LibC::Char*) : LibC::Char
  fun reset_hints = SDL_ResetHints() : Void
  fun get_hint = SDL_GetHint(name : LibC::Char*) : LibC::Char*
  fun get_hint_boolean = SDL_GetHintBoolean(name : LibC::Char*, default_value : LibC::Char) : LibC::Char
  fun add_hint_callback = SDL_AddHintCallback(name : LibC::Char*, callback : HintCallback, userdata : Void*) : LibC::Char
  fun remove_hint_callback = SDL_RemoveHintCallback(name : LibC::Char*, callback : HintCallback, userdata : Void*) : Void

  # additions3/helper_init.cr

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

  PROP_APP_METADATA_NAME_STRING = "SDL.app.metadata.name"
  PROP_APP_METADATA_VERSION_STRING = "SDL.app.metadata.version"
  PROP_APP_METADATA_IDENTIFIER_STRING = "SDL.app.metadata.identifier"
  PROP_APP_METADATA_CREATOR_STRING = "SDL.app.metadata.creator"
  PROP_APP_METADATA_COPYRIGHT_STRING = "SDL.app.metadata.copyright"
  PROP_APP_METADATA_URL_STRING = "SDL.app.metadata.url"
  PROP_APP_METADATA_TYPE_STRING = "SDL.app.metadata.type"

  @[Flags]
  enum InitFlags : UInt32
    AUDIO = 0x00000010
    VIDEO = 0x00000020
    JOYSTICK = 0x00000200
    HAPTIC = 0x00001000
    GAMEPAD = 0x00002000
    EVENTS = 0x00004000
    SENSOR = 0x00008000
    CAMERA = 0x00010000
  end

  enum AppResult
    CONTINUE
    SUCCESS
    FAILURE
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

  # additions3/helper_iostream.cr

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

  type IOStream = Void

  enum IOStatus
    READY
    ERROR
    EOF
    NOT_READY
    READONLY
    WRITEONLY
  end

  enum IOWhence
    SET
    CUR
    END
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

  # additions3/helper_joystick.cr

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

  type Joystick = Void
  alias JoystickID = UInt32

  enum JoystickType
    UNKNOWN
    GAMEPAD
    WHEEL
    ARCADE_STICK
    FLIGHT_STICK
    DANCE_PAD
    GUITAR
    DRUM_KIT
    ARCADE_PAD
    THROTTLE
    COUNT
  end

  enum JoystickConnectionState
    INVALID = -1
    UNKNOWN
    WIRED
    WIRELESS
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
    TEXT
    TEXT_NAME
    TEXT_EMAIL
    TEXT_USERNAME
    TEXT_PASSWORD_HIDDEN
    TEXT_PASSWORD_VISIBLE
    NUMBER
    NUMBER_PASSWORD_HIDDEN
    NUMBER_PASSWORD_VISIBLE
  end

  enum Capitalization
    NONE
    SENTENCES
    WORDS
    LETTERS
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

  enum Keycode : UInt32
    SCANCODE_MASK = (1 << 30)
    UNKNOWN = 0x00000000
    RETURN = 0x0000000d
    ESCAPE = 0x0000001b
    BACKSPACE = 0x00000008
    TAB = 0x00000009
    SPACE = 0x00000020
    EXCLAIM = 0x00000021
    DBLAPOSTROPHE = 0x00000022
    HASH = 0x00000023
    DOLLAR = 0x00000024
    PERCENT = 0x00000025
    AMPERSAND = 0x00000026
    APOSTROPHE = 0x00000027
    LEFTPAREN = 0x00000028
    RIGHTPAREN = 0x00000029
    ASTERISK = 0x0000002a
    PLUS = 0x0000002b
    COMMA = 0x0000002c
    MINUS = 0x0000002d
    PERIOD = 0x0000002e
    SLASH = 0x0000002f
    K0 = 0x00000030
    K1 = 0x00000031
    K2 = 0x00000032
    K3 = 0x00000033
    K4 = 0x00000034
    K5 = 0x00000035
    K6 = 0x00000036
    K7 = 0x00000037
    K8 = 0x00000038
    K9 = 0x00000039
    COLON = 0x0000003a
    SEMICOLON = 0x0000003b
    LESS = 0x0000003c
    EQUALS = 0x0000003d
    GREATER = 0x0000003e
    QUESTION = 0x0000003f
    AT = 0x00000040
    LEFTBRACKET = 0x0000005b
    BACKSLASH = 0x0000005c
    RIGHTBRACKET = 0x0000005d
    CARET = 0x0000005e
    UNDERSCORE = 0x0000005f
    GRAVE = 0x00000060
    A = 0x00000061
    B = 0x00000062
    C = 0x00000063
    D = 0x00000064
    E = 0x00000065
    F = 0x00000066
    G = 0x00000067
    H = 0x00000068
    I = 0x00000069
    J = 0x0000006a
    K = 0x0000006b
    L = 0x0000006c
    M = 0x0000006d
    N = 0x0000006e
    O = 0x0000006f
    P = 0x00000070
    Q = 0x00000071
    R = 0x00000072
    S = 0x00000073
    T = 0x00000074
    U = 0x00000075
    V = 0x00000076
    W = 0x00000077
    X = 0x00000078
    Y = 0x00000079
    Z = 0x0000007a
    LEFTBRACE = 0x0000007b
    PIPE = 0x0000007c
    RIGHTBRACE = 0x0000007d
    TILDE = 0x0000007e
    DELETE = 0x0000007f
    PLUSMINUS = 0x000000b1
    CAPSLOCK = 0x40000039
    F1 = 0x4000003a
    F2 = 0x4000003b
    F3 = 0x4000003c
    F4 = 0x4000003d
    F5 = 0x4000003e
    F6 = 0x4000003f
    F7 = 0x40000040
    F8 = 0x40000041
    F9 = 0x40000042
    F10 = 0x40000043
    F11 = 0x40000044
    F12 = 0x40000045
    PRINTSCREEN = 0x40000046
    SCROLLLOCK = 0x40000047
    PAUSE = 0x40000048
    INSERT = 0x40000049
    HOME = 0x4000004a
    PAGEUP = 0x4000004b
    END = 0x4000004d
    PAGEDOWN = 0x4000004e
    RIGHT = 0x4000004f
    LEFT = 0x40000050
    DOWN = 0x40000051
    UP = 0x40000052
    NUMLOCKCLEAR = 0x40000053
    KP_DIVIDE = 0x40000054
    KP_MULTIPLY = 0x40000055
    KP_MINUS = 0x40000056
    KP_PLUS = 0x40000057
    KP_ENTER = 0x40000058
    KP_1 = 0x40000059
    KP_2 = 0x4000005a
    KP_3 = 0x4000005b
    KP_4 = 0x4000005c
    KP_5 = 0x4000005d
    KP_6 = 0x4000005e
    KP_7 = 0x4000005f
    KP_8 = 0x40000060
    KP_9 = 0x40000061
    KP_0 = 0x40000062
    KP_PERIOD = 0x40000063
    APPLICATION = 0x40000065
    POWER = 0x40000066
    KP_EQUALS = 0x40000067
    F13 = 0x40000068
    F14 = 0x40000069
    F15 = 0x4000006a
    F16 = 0x4000006b
    F17 = 0x4000006c
    F18 = 0x4000006d
    F19 = 0x4000006e
    F20 = 0x4000006f
    F21 = 0x40000070
    F22 = 0x40000071
    F23 = 0x40000072
    F24 = 0x40000073
    EXECUTE = 0x40000074
    HELP = 0x40000075
    MENU = 0x40000076
    SELECT = 0x40000077
    STOP = 0x40000078
    AGAIN = 0x40000079
    UNDO = 0x4000007a
    CUT = 0x4000007b
    COPY = 0x4000007c
    PASTE = 0x4000007d
    FIND = 0x4000007e
    MUTE = 0x4000007f
    VOLUMEUP = 0x40000080
    VOLUMEDOWN = 0x40000081
    KP_COMMA = 0x40000085
    KP_EQUALSAS400 = 0x40000086
    ALTERASE = 0x40000099
    SYSREQ = 0x4000009a
    CANCEL = 0x4000009b
    CLEAR = 0x4000009c
    PRIOR = 0x4000009d
    RETURN2 = 0x4000009e
    SEPARATOR = 0x4000009f
    OUT = 0x400000a0
    OPER = 0x400000a1
    CLEARAGAIN = 0x400000a2
    CRSEL = 0x400000a3
    EXSEL = 0x400000a4
    KP_00 = 0x400000b0
    KP_000 = 0x400000b1
    THOUSANDSSEPARATOR = 0x400000b2
    DECIMALSEPARATOR = 0x400000b3
    CURRENCYUNIT = 0x400000b4
    CURRENCYSUBUNIT = 0x400000b5
    KP_LEFTPAREN = 0x400000b6
    KP_RIGHTPAREN = 0x400000b7
    KP_LEFTBRACE = 0x400000b8
    KP_RIGHTBRACE = 0x400000b9
    KP_TAB = 0x400000ba
    KP_BACKSPACE = 0x400000bb
    KP_A = 0x400000bc
    KP_B = 0x400000bd
    KP_C = 0x400000be
    KP_D = 0x400000bf
    KP_E = 0x400000c0
    KP_F = 0x400000c1
    KP_XOR = 0x400000c2
    KP_POWER = 0x400000c3
    KP_PERCENT = 0x400000c4
    KP_LESS = 0x400000c5
    KP_GREATER = 0x400000c6
    KP_AMPERSAND = 0x400000c7
    KP_DBLAMPERSAND = 0x400000c8
    KP_VERTICALBAR = 0x400000c9
    KP_DBLVERTICALBAR = 0x400000ca
    KP_COLON = 0x400000cb
    KP_HASH = 0x400000cc
    KP_SPACE = 0x400000cd
    KP_AT = 0x400000ce
    KP_EXCLAM = 0x400000cf
    KP_MEMSTORE = 0x400000d0
    KP_MEMRECALL = 0x400000d1
    KP_MEMCLEAR = 0x400000d2
    KP_MEMADD = 0x400000d3
    KP_MEMSUBTRACT = 0x400000d4
    KP_MEMMULTIPLY = 0x400000d5
    KP_MEMDIVIDE = 0x400000d6
    KP_PLUSMINUS = 0x400000d7
    KP_CLEAR = 0x400000d8
    KP_CLEARENTRY = 0x400000d9
    KP_BINARY = 0x400000da
    KP_OCTAL = 0x400000db
    KP_DECIMAL = 0x400000dc
    KP_HEXADECIMAL = 0x400000dd
    LCTRL = 0x400000e0
    LSHIFT = 0x400000e1
    LALT = 0x400000e2
    LGUI = 0x400000e3
    RCTRL = 0x400000e4
    RSHIFT = 0x400000e5
    RALT = 0x400000e6
    RGUI = 0x400000e7
    MODE = 0x40000101
    SLEEP = 0x40000102
    WAKE = 0x40000103
    CHANNEL_INCREMENT = 0x40000104
    CHANNEL_DECREMENT = 0x40000105
    MEDIA_PLAY = 0x40000106
    MEDIA_PAUSE = 0x40000107
    MEDIA_RECORD = 0x40000108
    MEDIA_FAST_FORWARD = 0x40000109
    MEDIA_REWIND = 0x4000010a
    MEDIA_NEXT_TRACK = 0x4000010b
    MEDIA_PREVIOUS_TRACK = 0x4000010c
    MEDIA_STOP = 0x4000010d
    MEDIA_EJECT = 0x4000010e
    MEDIA_PLAY_PAUSE = 0x4000010f
    MEDIA_SELECT = 0x40000110
    AC_NEW = 0x40000111
    AC_OPEN = 0x40000112
    AC_CLOSE = 0x40000113
    AC_EXIT = 0x40000114
    AC_SAVE = 0x40000115
    AC_PRINT = 0x40000116
    AC_PROPERTIES = 0x40000117
    AC_SEARCH = 0x40000118
    AC_HOME = 0x40000119
    AC_BACK = 0x4000011a
    AC_FORWARD = 0x4000011b
    AC_STOP = 0x4000011c
    AC_REFRESH = 0x4000011d
    AC_BOOKMARKS = 0x4000011e
    SOFTLEFT = 0x4000011f
    SOFTRIGHT = 0x40000120
    CALL = 0x40000121
    ENDCALL = 0x40000122
  end

  enum Keymod : UInt16
    NONE = 0x0000
    LSHIFT = 0x0001
    RSHIFT = 0x0002
    LCTRL = 0x0040
    RCTRL = 0x0080
    LALT = 0x0100
    RALT = 0x0200
    LGUI = 0x0400
    RGUI = 0x0800
    NUM = 0x1000
    CAPS = 0x2000
    MODE = 0x4000
    SCROLL = 0x8000
    CTRL = (LCTRL | RCTRL)
    SHIFT = (LSHIFT | RSHIFT)
    ALT = (LALT | RALT)
    GUI = (LGUI | RGUI)
  end

  # SDL_loadso

  type SharedObject = Void

  fun load_object = SDL_LoadObject(sofile : LibC::Char*) : SharedObject*
  fun load_function = SDL_LoadFunction(handle : SharedObject*, name : LibC::Char*) : FunctionPointer
  fun unload_object = SDL_UnloadObject(handle : SharedObject*) : Void

  # SDL_locale

  struct Locale
    language : LibC::Char*
    country : LibC::Char*
  end

  fun get_preferred_locales = SDL_GetPreferredLocales(count : LibC::Int*) : Locale**

  # additions3/helper_log.cr

  # (void* userdata, int category, SDL_LogPriority priority, const char* message)
  alias LogOutputFunction = (Void*, LibC::Int, LogPriority, LibC::Char*) -> Void

  # SDL_log

  enum LogCategory
    APPLICATION
    ERROR
    ASSERT
    SYSTEM
    AUDIO
    VIDEO
    RENDER
    INPUT
    TEST
    GPU
    RESERVED2
    RESERVED3
    RESERVED4
    RESERVED5
    RESERVED6
    RESERVED7
    RESERVED8
    RESERVED9
    RESERVED10
    CUSTOM
  end

  enum LogPriority
    INVALID
    TRACE
    VERBOSE
    DEBUG
    INFO
    WARN
    ERROR
    CRITICAL
    COUNT
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

  # additions3/helper_main.cr

  # (int argc, char* argv[])
  alias MainFunc = (LibC::Int, LibC::Char**) -> LibC::Int

  fun run_app = SDL_RunApp(argc : LibC::Int, argv : LibC::Char**, main_function : MainFunc, reserved : Void*) : LibC::Int
  fun enter_app_main_callbacks = SDL_EnterAppMainCallbacks(argc : LibC::Int, argv : LibC::Char**, appinit : AppInitFunc, appiter : AppIterateFunc, appevent : AppEventFunc, appquit : AppQuitFunc) : LibC::Int

  # SDL_main

  fun set_main_ready = SDL_SetMainReady() : Void
  fun register_app = SDL_RegisterApp(name : LibC::Char*, style : UInt32, h_inst : Void*) : LibC::Char
  fun unregister_app = SDL_UnregisterApp() : Void
  fun gdksuspend_complete = SDL_GDKSuspendComplete() : Void

  # additions3/helper_messagebox.cr

  struct MessageBoxColorScheme
    colors : MessageBoxColor[MessageBoxColorType::COUNT]
  end

  # SDL_messagebox

  @[Flags]
  enum MessageBoxFlags : UInt32
    ERROR = 0x00000010
    WARNING = 0x00000020
    INFORMATION = 0x00000040
    BUTTONS_LEFT_TO_RIGHT = 0x00000080
    BUTTONS_RIGHT_TO_LEFT = 0x00000100
  end

  @[Flags]
  enum MessageBoxButtonFlags : UInt32
    RETURNKEY_DEFAULT = 0x00000001
    ESCAPEKEY_DEFAULT = 0x00000002
  end

  enum MessageBoxColorType
    BACKGROUND
    TEXT
    BUTTON_BORDER
    BUTTON_BACKGROUND
    BUTTON_SELECTED
    COUNT
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

  type MetalView = Void*

  fun metal_create_view = SDL_Metal_CreateView(window : Window*) : MetalView
  fun metal_destroy_view = SDL_Metal_DestroyView(view : MetalView) : Void
  fun metal_get_layer = SDL_Metal_GetLayer(view : MetalView) : Void*

  # SDL_misc

  fun open_url = SDL_OpenURL(url : LibC::Char*) : LibC::Char

  # SDL_mouse

  type Cursor = Void
  alias MouseID = UInt32

  @[Flags]
  enum MouseButtonFlags : UInt32
    LEFT = 1
    MIDDLE = 2
    RIGHT = 3
    X1 = 4
    X2 = 5
    LMASK = 1 << (LEFT - 1)
    MMASK = 1 << (MIDDLE - 1)
    RMASK = 1 << (RIGHT - 1)
    X1MASK = 1 << (X1 - 1)
    X2MASK = 1 << (X2 - 1)
  end

  enum SystemCursor
    DEFAULT
    TEXT
    WAIT
    CROSSHAIR
    PROGRESS
    NWSE_RESIZE
    NESW_RESIZE
    EW_RESIZE
    NS_RESIZE
    MOVE
    NOT_ALLOWED
    POINTER
    NW_RESIZE
    N_RESIZE
    NE_RESIZE
    E_RESIZE
    SE_RESIZE
    S_RESIZE
    SW_RESIZE
    W_RESIZE
    COUNT
  end

  enum MouseWheelDirection
    NORMAL
    FLIPPED
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

  alias PenID = UInt32

  @[Flags]
  enum PenInputFlags : UInt32
    DOWN = (1 << 0)
    BUTTON_1 = (1 << 1)
    BUTTON_2 = (1 << 2)
    BUTTON_3 = (1 << 3)
    BUTTON_4 = (1 << 4)
    BUTTON_5 = (1 << 5)
    ERASER_TIP = (1 << 30)
  end

  enum PenAxis
    PRESSURE
    XTILT
    YTILT
    DISTANCE
    ROTATION
    SLIDER
    TANGENTIAL_PRESSURE
    COUNT
  end

  # additions3/helper_pixels.cr

  enum PixelFormat
    UNKNOWN = 0
    INDEX1LSB = 0x11100100
    INDEX1MSB = 0x11200100
    INDEX2LSB = 0x1c100200
    INDEX2MSB = 0x1c200200
    INDEX4LSB = 0x12100400
    INDEX4MSB = 0x12200400
    INDEX8 = 0x13000801
    RGB332 = 0x14110801
    XRGB4444 = 0x15120c02
    XBGR4444 = 0x15520c02
    XRGB1555 = 0x15130f02
    XBGR1555 = 0x15530f02
    ARGB4444 = 0x15321002
    RGBA4444 = 0x15421002
    ABGR4444 = 0x15721002
    BGRA4444 = 0x15821002
    ARGB1555 = 0x15331002
    RGBA5551 = 0x15441002
    ABGR1555 = 0x15731002
    BGRA5551 = 0x15841002
    RGB565 = 0x15151002
    BGR565 = 0x15551002
    RGB24 = 0x17101803
    BGR24 = 0x17401803
    XRGB8888 = 0x16161804
    RGBX8888 = 0x16261804
    XBGR8888 = 0x16561804
    BGRX8888 = 0x16661804
    ARGB8888 = 0x16362004
    RGBA8888 = 0x16462004
    ABGR8888 = 0x16762004
    BGRA8888 = 0x16862004
    XRGB2101010 = 0x16172004
    XBGR2101010 = 0x16572004
    ARGB2101010 = 0x16372004
    ABGR2101010 = 0x16772004
    RGB48 = 0x18103006
    BGR48 = 0x18403006
    RGBA64 = 0x18204008
    ARGB64 = 0x18304008
    BGRA64 = 0x18504008
    ABGR64 = 0x18604008
    RGB48_FLOAT = 0x1a103006
    BGR48_FLOAT = 0x1a403006
    RGBA64_FLOAT = 0x1a204008
    ARGB64_FLOAT = 0x1a304008
    BGRA64_FLOAT = 0x1a504008
    ABGR64_FLOAT = 0x1a604008
    RGB96_FLOAT = 0x1b10600c
    BGR96_FLOAT = 0x1b40600c
    RGBA128_FLOAT = 0x1b208010
    ARGB128_FLOAT = 0x1b308010
    BGRA128_FLOAT = 0x1b508010
    ABGR128_FLOAT = 0x1b608010
    YV12 = 0x32315659
    IYUV = 0x56555949
    YUY2 = 0x32595559
    UYVY = 0x59565955
    YVYU = 0x55595659
    NV12 = 0x3231564e
    NV21 = 0x3132564e
    P010 = 0x30313050
    EXTERNAL_OES = 0x2053454f
    # NOTE: The following definitions ONLY hold for little endian - if you are using big endian (why), please open an issue report
    RGBA32 = ABGR8888
    ARGB32 = BGRA8888
    BGRA32 = ARGB8888
    ABGR32 = RGBA8888
    RGBX32 = XBGR8888
    XRGB32 = BGRX8888
    BGRX32 = XRGB8888
    XBGR32 = RGBX8888
  end

  # SDL_pixels

  ALPHA_OPAQUE = 255
  ALPHA_OPAQUE_FLOAT = 1.0
  ALPHA_TRANSPARENT = 0
  ALPHA_TRANSPARENT_FLOAT = 0.0

  enum PixelType
    UNKNOWN
    INDEX1
    INDEX4
    INDEX8
    PACKED8
    PACKED16
    PACKED32
    ARRAYU8
    ARRAYU16
    ARRAYU32
    ARRAYF16
    ARRAYF32
    INDEX2
  end

  enum BitmapOrder
    NONE
    BITMAPORDER_4321
    BITMAPORDER_1234
  end

  enum PackedOrder
    NONE
    XRGB
    RGBX
    ARGB
    RGBA
    XBGR
    BGRX
    ABGR
    BGRA
  end

  enum ArrayOrder
    NONE
    RGB
    RGBA
    ARGB
    BGR
    BGRA
    ABGR
  end

  enum PackedLayout
    NONE
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
    UNKNOWN = 0
    RGB = 1
    YCBCR = 2
  end

  enum ColorRange
    UNKNOWN = 0
    LIMITED = 1
    FULL = 2
  end

  enum ColorPrimaries
    UNKNOWN = 0
    BT709 = 1
    UNSPECIFIED = 2
    BT470M = 4
    BT470BG = 5
    BT601 = 6
    SMPTE240 = 7
    GENERIC_FILM = 8
    BT2020 = 9
    XYZ = 10
    SMPTE431 = 11
    SMPTE432 = 12
    EBU3213 = 22
    CUSTOM = 31
  end

  enum TransferCharacteristics
    UNKNOWN = 0
    BT709 = 1
    UNSPECIFIED = 2
    GAMMA22 = 4
    GAMMA28 = 5
    BT601 = 6
    SMPTE240 = 7
    LINEAR = 8
    LOG100 = 9
    LOG100_SQRT10 = 10
    IEC61966 = 11
    BT1361 = 12
    SRGB = 13
    BT2020_10BIT = 14
    BT2020_12BIT = 15
    PQ = 16
    SMPTE428 = 17
    HLG = 18
    CUSTOM = 31
  end

  enum MatrixCoefficients
    IDENTITY = 0
    BT709 = 1
    UNSPECIFIED = 2
    FCC = 4
    BT470BG = 5
    BT601 = 6
    SMPTE240 = 7
    YCGCO = 8
    BT2020_NCL = 9
    BT2020_CL = 10
    SMPTE2085 = 11
    CHROMA_DERIVED_NCL = 12
    CHROMA_DERIVED_CL = 13
    ICTCP = 14
    CUSTOM = 31
  end

  enum ChromaLocation
    NONE = 0
    LEFT = 1
    CENTER = 2
    TOPLEFT = 3
  end

  enum Colorspace
    UNKNOWN = 0
    SRGB = 0x120005a0
    SRGB_LINEAR = 0x12000500
    HDR10 = 0x12002600
    JPEG = 0x220004c6
    BT601_LIMITED = 0x211018c6
    BT601_FULL = 0x221018c6
    BT709_LIMITED = 0x21100421
    BT709_FULL = 0x22100421
    BT2020_LIMITED = 0x21102609
    BT2020_FULL = 0x22102609
    RGB_DEFAULT = SRGB
    YUV_DEFAULT = JPEG
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
    ERROR = -1
    UNKNOWN
    ON_BATTERY
    NO_BATTERY
    CHARGING
    CHARGED
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

  type Process = Void

  enum ProcessIO
    INHERITED
    NULL
    APP
    REDIRECT
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

  # additions3/helper_properties.cr

  # (void* userdata, void* value)
  alias CleanupPropertyCallback = (Void*, Void*) -> Void

  # (void* userdata, SDL_PropertiesID props, const char* name)
  alias EnumeratePropertiesCallback = (Void*, PropertiesID, LibC::Char*) -> Void

  # SDL_properties

  alias PropertiesID = UInt32

  enum PropertyType
    INVALID
    POINTER
    STRING
    NUMBER
    FLOAT
    BOOLEAN
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

  type Renderer = Void
  type Texture = Void

  enum TextureAccess
    STATIC
    STREAMING
    TARGET
  end

  enum RendererLogicalPresentation
    DISABLED
    STRETCH
    LETTERBOX
    OVERSCAN
    INTEGER_SCALE
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

  type Sensor = Void
  alias SensorID = UInt32

  enum SensorType
    INVALID = -1
    UNKNOWN
    ACCEL
    GYRO
    ACCEL_L
    GYRO_L
    ACCEL_R
    GYRO_R
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

  # additions3/helper_surface.cr

  struct Surface
    flags : SurfaceFlags
    format : PixelFormat
    w : LibC::Int
    h : LibC::Int
    pitch : LibC::Int
    pixels : Void*
    refcount : LibC::Int
    reserved : Void*
  end

  # SDL_surface

  PROP_SURFACE_SDR_WHITE_POINT_FLOAT = "SDL.surface.SDR_white_point"
  PROP_SURFACE_HDR_HEADROOM_FLOAT = "SDL.surface.HDR_headroom"
  PROP_SURFACE_TONEMAP_OPERATOR_STRING = "SDL.surface.tonemap"

  @[Flags]
  enum SurfaceFlags : UInt32
    PREALLOCATED = 0x00000001
    LOCK_NEEDED = 0x00000002
    LOCKED = 0x00000004
    SIMD_ALIGNED = 0x00000008
  end

  enum ScaleMode
    NEAREST
    LINEAR
  end

  enum FlipMode
    NONE
    HORIZONTAL
    VERTICAL
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

  # additions3/helper_tray.cr

  # (void* userdata, SDL_TrayEntry* entry)
  alias TrayCallback = (Void*, TrayEntry*) -> Void

  # SDL_tray

  type Tray = Void
  type TrayMenu = Void
  type TrayEntry = Void

  @[Flags]
  enum TrayEntryFlags : UInt32
    BUTTON = 0x00000001
    CHECKBOX = 0x00000002
    SUBMENU = 0x00000004
    DISABLED = 0x80000000
    CHECKED = 0x40000000
  end

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
    INVALID = -1
    DIRECT
    INDIRECT_ABSOLUTE
    INDIRECT_RELATIVE
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

  # additions3/helper_video.cr

  # (void* userdata)
  alias EGLAttribArrayCallback = (Void*) -> EGLAttrib*

  # (void* userdata, SDL_EGLDisplay display, SDL_EGLConfig config)
  alias EGLIntArrayCallback = (Void*, EGLDisplay, EGLConfig) -> EGLint*
  
  # (SDL_Window* win, const SDL_Point* area, void* data)
  alias HitTest = (Window*, Point*, Void*) -> HitTestResult

  alias GLContextState = Void

  WINDOW_SURFACE_VSYNC_DISABLED = 0
  WINDOW_SURFACE_VSYNC_ADAPTIVE = (-1)

  # SDL_video

  PROP_GLOBAL_VIDEO_WAYLAND_WL_DISPLAY_POINTER = "SDL.video.wayland.wl_display"
  WINDOWPOS_UNDEFINED_MASK = 0x1FFF0000
  WINDOWPOS_UNDEFINED = (LibSDL::WINDOWPOS_UNDEFINED_MASK | 0)
  WINDOWPOS_CENTERED_MASK = 0x2FFF0000
  WINDOWPOS_CENTERED = (LibSDL::WINDOWPOS_CENTERED_MASK | 0)
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

  type DisplayModeData = Void
  type Window = Void
  alias GLContext = GLContextState*
  alias DisplayID = UInt32
  alias WindowID = UInt32
  type EGLDisplay = Void*
  type EGLConfig = Void*
  type EGLSurface = Void*
  alias EGLAttrib = LibC::Int*
  alias EGLint = LibC::Int
  alias GLProfile = UInt32
  alias GLContextResetNotification = UInt32

  @[Flags]
  enum WindowFlags : UInt64
    FULLSCREEN = 0x0000000000000001_u64
    OPENGL = 0x0000000000000002_u64
    OCCLUDED = 0x0000000000000004_u64
    HIDDEN = 0x0000000000000008_u64
    BORDERLESS = 0x0000000000000010_u64
    RESIZABLE = 0x0000000000000020_u64
    MINIMIZED = 0x0000000000000040_u64
    MAXIMIZED = 0x0000000000000080_u64
    MOUSE_GRABBED = 0x0000000000000100_u64
    INPUT_FOCUS = 0x0000000000000200_u64
    MOUSE_FOCUS = 0x0000000000000400_u64
    EXTERNAL = 0x0000000000000800_u64
    MODAL = 0x0000000000001000_u64
    HIGH_PIXEL_DENSITY = 0x0000000000002000_u64
    MOUSE_CAPTURE = 0x0000000000004000_u64
    MOUSE_RELATIVE_MODE = 0x0000000000008000_u64
    ALWAYS_ON_TOP = 0x0000000000010000_u64
    UTILITY = 0x0000000000020000_u64
    TOOLTIP = 0x0000000000040000_u64
    POPUP_MENU = 0x0000000000080000_u64
    KEYBOARD_GRABBED = 0x0000000000100000_u64
    VULKAN = 0x0000000010000000_u64
    METAL = 0x0000000020000000_u64
    TRANSPARENT = 0x0000000040000000_u64
    NOT_FOCUSABLE = 0x0000000080000000_u64
  end

  @[Flags]
  enum GLContextFlag : UInt32
    PROFILE_CORE = 0x0001
    PROFILE_COMPATIBILITY = 0x0002
    PROFILE_ES = 0x0004
    DEBUG_FLAG = 0x0001
    FORWARD_COMPATIBLE_FLAG = 0x0002
    ROBUST_ACCESS_FLAG = 0x0004
    RESET_ISOLATION_FLAG = 0x0008
    RESET_NO_NOTIFICATION = 0x0000
    RESET_LOSE_CONTEXT = 0x0001
  end

  @[Flags]
  enum GLContextReleaseFlag : UInt32
    NONE = 0x0000
    FLUSH = 0x0001
  end

  enum SystemTheme
    UNKNOWN
    LIGHT
    DARK
  end

  enum DisplayOrientation
    UNKNOWN
    LANDSCAPE
    LANDSCAPE_FLIPPED
    PORTRAIT
    PORTRAIT_FLIPPED
  end

  enum FlashOperation
    CANCEL
    BRIEFLY
    UNTIL_FOCUSED
  end

  enum GLAttr
    RED_SIZE
    GREEN_SIZE
    BLUE_SIZE
    ALPHA_SIZE
    BUFFER_SIZE
    DOUBLEBUFFER
    DEPTH_SIZE
    STENCIL_SIZE
    ACCUM_RED_SIZE
    ACCUM_GREEN_SIZE
    ACCUM_BLUE_SIZE
    ACCUM_ALPHA_SIZE
    STEREO
    MULTISAMPLEBUFFERS
    MULTISAMPLESAMPLES
    ACCELERATED_VISUAL
    RETAINED_BACKING
    CONTEXT_MAJOR_VERSION
    CONTEXT_MINOR_VERSION
    CONTEXT_FLAGS
    CONTEXT_PROFILE_MASK
    SHARE_WITH_CURRENT_CONTEXT
    FRAMEBUFFER_SRGB_CAPABLE
    CONTEXT_RELEASE_BEHAVIOR
    CONTEXT_RESET_NOTIFICATION
    CONTEXT_NO_ERROR
    FLOATBUFFERS
    EGL_PLATFORM
  end

  enum HitTestResult
    NORMAL
    DRAGGABLE
    RESIZE_TOPLEFT
    RESIZE_TOP
    RESIZE_TOPRIGHT
    RESIZE_RIGHT
    RESIZE_BOTTOMRIGHT
    RESIZE_BOTTOM
    RESIZE_BOTTOMLEFT
    RESIZE_LEFT
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
    x | LibSDL::Keycode::SCANCODE_MASK
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
      if (format == LibSDL::PixelFormat::YUY2) || (format == LibSDL::PixelFormat::UYVY) || (format == LibSDL::PixelFormat::YVYU) || (format == LibSDL::PixelFormat::P010)
        2
      else
        1
      end
    else
      (format >> 0) & 0xFF
    end
  end

  macro ispixelformat_indexed(format)
    !LibSDLMacro.ispixelformat_fourcc(format) && ((LibSDLMacro.pixeltype(format) == LibSDL::PixelType::INDEX1) || (LibSDLMacro.pixeltype(format) == LibSDL::PixelType::INDEX2) || (LibSDLMacro.pixeltype(format) == LibSDL::PixelType::INDEX4) || (LibSDLMacro.pixeltype(format) == LibSDL::PixelType::INDEX8))
  end

  macro ispixelformat_packed(format)
    !LibSDLMacro.ispixelformat_fourcc(format) && ((LibSDLMacro.pixeltype(format) == LibSDL::PixelType::PACKED8) || (LibSDLMacro.pixeltype(format) == LibSDL::PixelType::PACKED16) || (LibSDLMacro.pixeltype(format) == LibSDL::PixelType::PACKED32))
  end

  macro ispixelformat_array(format)
    !LibSDLMacro.ispixelformat_fourcc(format) && ((LibSDLMacro.pixeltype(format) == LibSDL::PixelType::ARRAYU8) || (LibSDLMacro.pixeltype(format) == LibSDL::PixelType::ARRAYU16) || (LibSDLMacro.pixeltype(format) == LibSDL::PixelType::ARRAYU32) || (LibSDLMacro.pixeltype(format) == LibSDL::PixelType::ARRAYF16) || (LibSDLMacro.pixeltype(format) == LibSDL::PixelType::ARRAYF32))
  end

  macro ispixelformat_10bit(format)
    !LibSDLMacro.ispixelformat_fourcc(format) && ((LibSDLMacro.pixeltype(format) == LibSDL::PixelType::PACKED32) && (LibSDLMacro.pixeltype(format) == LibSDL::PackedLayot::PACKEDLAYOUT_2101010))
  end

  macro ispixelformat_float(format)
    !LibSDLMacro.ispixelformat_fourcc(format) && ((LibSDLMacro.pixeltype(format) == LibSDL::PixelType::ARRAYF16) || (LibSDLMacro.pixeltype(format) == LibSDL::PixelType::ARRAYF32))
  end

  macro ispixelformat_alpha(format)
    (LibSDLMacro.ispixelformat_packed(format) && ((LibSDLMacro.pixelorder(format) == LibSDL::PackedOrder::ARGB) || (LibSDLMacro.pixelorder(format) == LibSDL::PackedOrder::RGBA) || (LibSDLMacro.pixelorder(format) == LibSDL::PackedOrder::ABGR) || (LibSDLMacro.pixelorder(format) == LibSDL::PackedOrder::BGRA))) || (LibSDLMacro.ispixelformat_array(format) && ((LibSDLMacro.pixelorder(format) == LibSDL::ARRAYORDER_ARGB) || (LibSDLMacro.pixelorder(format) == LibSDL::ArrayOrder::RGBA) || (LibSDLMacro.pixelorder(format) == LibSDL::ArrayOrder::ABGR) || (LibSDLMacro.pixelorder(format) == LibSDL::ArrayOrder::BGRA)))
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
    LibSDLMacro.colorspacematrix(cspace) == LibSDL::MatrixCoefficients::BT601 || LibSDLMacro.colorspacematrix(cspace) == LibSDL::MatrixCoefficients::BT470BG
  end

  macro iscolorspace_matrix_bt709(cspace)
    LibSDLMacro.colorspacematrix(cspace) == LibSDL::MatrixCoefficients::BT709
  end

  macro iscolorspace_matrix_bt2020_ncl(cspace)
    LibSDLMacro.colorspacematrix(cspace) == LibSDL::MatrixCoefficients::BT2020_NCL
  end

  macro iscolorspace_limited_range(cspace)
    LibSDLMacro.colorspacerange(cspace) != LibSDL::ColorRange::FULL
  end

  macro iscolorspace_full_range(cspace)
    LibSDLMacro.colorspacerange(cspace) == LibSDL::ColorRange::FULL
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
    (s.value.flags & LibSDL::SurfaceFlags::LOCK_NEEDED) == LibSDL::SurfaceFlags::LOCK_NEEDED
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
