@[Link("SDL3")]
lib LibSDL
  # SDL

  # SDL_version

  MAJOR_VERSION = 3
  MINOR_VERSION = 1
  MICRO_VERSION = 7
  VERSION = (((MAJOR_VERSION)*1000 + (MINOR_VERSION)*100 + (MICRO_VERSION)))

  fun get_version = SDL_GetVersion() : LibC::Int
  fun get_revision = SDL_GetRevision() : LibC::Char*

  # additions/helper_types.cr

  enum SBool
    FALSE = 0
    TRUE = 1
  end

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

  # SDL_audio

  AUDIO_MASK_BITSIZE = (0xFFu)
  AUDIO_MASK_FLOAT = (1 << 8)
  AUDIO_MASK_BIG_ENDIAN = (1 << 12)
  AUDIO_MASK_SIGNED = (1 << 15)
  AUDIO_DEVICE_DEFAULT_PLAYBACK = ((AudioDeviceID)0xFFFFFFFFu)
  AUDIO_DEVICE_DEFAULT_RECORDING = ((AudioDeviceID)0xFFFFFFFEu)

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
  fun get_audio_device_format = SDL_GetAudioDeviceFormat(devid : AudioDeviceID, spec : AudioSpec*, sample_frames : LibC::Int*) : bool
  fun get_audio_device_channel_map = SDL_GetAudioDeviceChannelMap(devid : AudioDeviceID, count : LibC::Int*) : LibC::Int*
  fun open_audio_device = SDL_OpenAudioDevice(devid : AudioDeviceID, spec : AudioSpec*) : AudioDeviceID
  fun is_audio_device_physical = SDL_IsAudioDevicePhysical(devid : AudioDeviceID) : bool
  fun is_audio_device_playback = SDL_IsAudioDevicePlayback(devid : AudioDeviceID) : bool
  fun pause_audio_device = SDL_PauseAudioDevice(dev : AudioDeviceID) : bool
  fun resume_audio_device = SDL_ResumeAudioDevice(dev : AudioDeviceID) : bool
  fun audio_device_paused = SDL_AudioDevicePaused(dev : AudioDeviceID) : bool
  fun get_audio_device_gain = SDL_GetAudioDeviceGain(devid : AudioDeviceID) : LibC::Float
  fun set_audio_device_gain = SDL_SetAudioDeviceGain(devid : AudioDeviceID, gain : LibC::Float) : bool
  fun close_audio_device = SDL_CloseAudioDevice(devid : AudioDeviceID) : Void
  fun bind_audio_streams = SDL_BindAudioStreams(devid : AudioDeviceID, streams : AudioStream* const*, num_streams : LibC::Int) : bool
  fun bind_audio_stream = SDL_BindAudioStream(devid : AudioDeviceID, stream : AudioStream*) : bool
  fun unbind_audio_streams = SDL_UnbindAudioStreams(streams : AudioStream* const*, num_streams : LibC::Int) : Void
  fun unbind_audio_stream = SDL_UnbindAudioStream(stream : AudioStream*) : Void
  fun get_audio_stream_device = SDL_GetAudioStreamDevice(stream : AudioStream*) : AudioDeviceID
  fun create_audio_stream = SDL_CreateAudioStream(src_spec : AudioSpec*, dst_spec : AudioSpec*) : AudioStream*
  fun get_audio_stream_properties = SDL_GetAudioStreamProperties(stream : AudioStream*) : PropertiesID
  fun get_audio_stream_format = SDL_GetAudioStreamFormat(stream : AudioStream*, src_spec : AudioSpec*, dst_spec : AudioSpec*) : bool
  fun set_audio_stream_format = SDL_SetAudioStreamFormat(stream : AudioStream*, src_spec : AudioSpec*, dst_spec : AudioSpec*) : bool
  fun get_audio_stream_frequency_ratio = SDL_GetAudioStreamFrequencyRatio(stream : AudioStream*) : LibC::Float
  fun set_audio_stream_frequency_ratio = SDL_SetAudioStreamFrequencyRatio(stream : AudioStream*, ratio : LibC::Float) : bool
  fun get_audio_stream_gain = SDL_GetAudioStreamGain(stream : AudioStream*) : LibC::Float
  fun set_audio_stream_gain = SDL_SetAudioStreamGain(stream : AudioStream*, gain : LibC::Float) : bool
  fun get_audio_stream_input_channel_map = SDL_GetAudioStreamInputChannelMap(stream : AudioStream*, count : LibC::Int*) : LibC::Int*
  fun get_audio_stream_output_channel_map = SDL_GetAudioStreamOutputChannelMap(stream : AudioStream*, count : LibC::Int*) : LibC::Int*
  fun set_audio_stream_input_channel_map = SDL_SetAudioStreamInputChannelMap(stream : AudioStream*, chmap : LibC::Int*, count : LibC::Int) : bool
  fun set_audio_stream_output_channel_map = SDL_SetAudioStreamOutputChannelMap(stream : AudioStream*, chmap : LibC::Int*, count : LibC::Int) : bool
  fun put_audio_stream_data = SDL_PutAudioStreamData(stream : AudioStream*, buf : Void*, len : LibC::Int) : bool
  fun get_audio_stream_data = SDL_GetAudioStreamData(stream : AudioStream*, buf : Void*, len : LibC::Int) : LibC::Int
  fun get_audio_stream_available = SDL_GetAudioStreamAvailable(stream : AudioStream*) : LibC::Int
  fun get_audio_stream_queued = SDL_GetAudioStreamQueued(stream : AudioStream*) : LibC::Int
  fun flush_audio_stream = SDL_FlushAudioStream(stream : AudioStream*) : bool
  fun clear_audio_stream = SDL_ClearAudioStream(stream : AudioStream*) : bool
  fun pause_audio_stream_device = SDL_PauseAudioStreamDevice(stream : AudioStream*) : bool
  fun resume_audio_stream_device = SDL_ResumeAudioStreamDevice(stream : AudioStream*) : bool
  fun lock_audio_stream = SDL_LockAudioStream(stream : AudioStream*) : bool
  fun unlock_audio_stream = SDL_UnlockAudioStream(stream : AudioStream*) : bool
  fun set_audio_stream_get_callback = SDL_SetAudioStreamGetCallback(stream : AudioStream*, callback : AudioStreamCallback, userdata : Void*) : bool
  fun set_audio_stream_put_callback = SDL_SetAudioStreamPutCallback(stream : AudioStream*, callback : AudioStreamCallback, userdata : Void*) : bool
  fun destroy_audio_stream = SDL_DestroyAudioStream(stream : AudioStream*) : Void
  fun open_audio_device_stream = SDL_OpenAudioDeviceStream(devid : AudioDeviceID, spec : AudioSpec*, callback : AudioStreamCallback, userdata : Void*) : AudioStream*
  fun set_audio_postmix_callback = SDL_SetAudioPostmixCallback(devid : AudioDeviceID, callback : AudioPostmixCallback, userdata : Void*) : bool
  fun load_wav_io = SDL_LoadWAV_IO(src : IOStream*, closeio : bool, spec : AudioSpec*, audio_buf : UInt8**, audio_len : UInt32*) : bool
  fun load_wav = SDL_LoadWAV(path : LibC::Char*, spec : AudioSpec*, audio_buf : UInt8**, audio_len : UInt32*) : bool
  fun mix_audio = SDL_MixAudio(dst : UInt8*, src : UInt8*, format : AudioFormat, len : UInt32, volume : LibC::Float) : bool
  fun convert_audio_samples = SDL_ConvertAudioSamples(src_spec : AudioSpec*, src_data : UInt8*, src_len : LibC::Int, dst_spec : AudioSpec*, dst_data : UInt8**, dst_len : LibC::Int*) : bool
  fun get_audio_format_name = SDL_GetAudioFormatName(format : AudioFormat) : LibC::Char*
  fun get_silence_value_for_format = SDL_GetSilenceValueForFormat(format : AudioFormat) : LibC::Int

  # additions/helper_audio.cr

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

  # SDL_blendmode

  BLENDMODE_NONE = 0x00000000
  BLENDMODE_BLEND = 0x00000001
  BLENDMODE_BLEND_PREMULTIPLIED = 0x00000010
  BLENDMODE_ADD = 0x00000002
  BLENDMODE_ADD_PREMULTIPLIED = 0x00000020
  BLENDMODE_MOD = 0x00000004
  BLENDMODE_MUL = 0x00000008
  BLENDMODE_INVALID = 0x7FFFFFFFu

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

  # SDL_clipboard

  fun set_clipboard_text = SDL_SetClipboardText(text : LibC::Char*) : bool
  fun get_clipboard_text = SDL_GetClipboardText() : LibC::Char*
  fun has_clipboard_text = SDL_HasClipboardText() : bool
  fun set_primary_selection_text = SDL_SetPrimarySelectionText(text : LibC::Char*) : bool
  fun get_primary_selection_text = SDL_GetPrimarySelectionText() : LibC::Char*
  fun has_primary_selection_text = SDL_HasPrimarySelectionText() : bool
  fun set_clipboard_data = SDL_SetClipboardData(callback : ClipboardDataCallback, cleanup : ClipboardCleanupCallback, userdata : Void*, mime_types : LibC::Char**, num_mime_types : LibC::SizeT) : bool
  fun clear_clipboard_data = SDL_ClearClipboardData() : bool
  fun get_clipboard_data = SDL_GetClipboardData(mime_type : LibC::Char*, size : LibC::SizeT*) : Void*
  fun has_clipboard_data = SDL_HasClipboardData(mime_type : LibC::Char*) : bool
  fun get_clipboard_mime_types = SDL_GetClipboardMimeTypes(num_mime_types : LibC::SizeT*) : LibC::Char**

  # SDL_error

  fun set_error = SDL_SetError(fmt : LibC::Char*, ...) : bool
  fun set_error_v = SDL_SetErrorV(fmt : LibC::Char*, sdl_printf_vararg_funcv(1 : vaList ap)) : bool
  fun out_of_memory = SDL_OutOfMemory() : bool
  fun get_error = SDL_GetError() : LibC::Char*
  fun clear_error = SDL_ClearError() : bool

  # additions/helper_event.cr

  union Event
    type : UInt32
    common : CommonEvent
    display : DisplayEvent
    window : WindowEvent
    key : KeyboardEvent
    edit : TextEditingEvent
    edit_ext : TextEditingExtEvent
    text : TextInputEvent
    motion : MouseMotionEvent
    button : MouseButtonEvent
    wheel : MouseWheelEvent
    jaxis : JoyAxisEvent
    jball : JoyBallEvent
    jhat : JoyHatEvent
    jbutton : JoyButtonEvent
    jdevice : JoyDeviceEvent
    jbattery : JoyBatteryEvent
    caxis : ControllerAxisEvent
    cbutton : ControllerButtonEvent
    cdevice : ControllerDeviceEvent
    ctouchpad : ControllerTouchpadEvent
    csensor : ControllerSensorEvent
    adevice : AudioDeviceEvent
    sensor : SensorEvent
    quit : QuitEvent
    user : UserEvent
    syswm : SysWMEvent
    tfinger : TouchFingerEvent
    mgesture : MultiGestureEvent
    dgesture : DollarGestureEvent
    drop : DropEvent
    padding : UInt8[56] # NOTE: This might become difficult on certain architectures
  end

  # (void* userdata, SDL_Event* event)
  alias EventFilter = (Void*, Event*) -> LibC::Int

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
    down : bool
    repeat : bool
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
    const* : LibC::Char*
    candidates : LibC::Char*
    num_candidates : Int32
    selected_candidate : Int32
    horizontal : bool
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
    down : bool
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
    down : bool
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
    down : bool
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
    recording : bool
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
    eraser : bool
    down : bool
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
    down : bool
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
    owner : bool
    n_mime_types : Int32
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
  fun has_event = SDL_HasEvent(type : UInt32) : bool
  fun has_events = SDL_HasEvents(min_type : UInt32, max_type : UInt32) : bool
  fun flush_event = SDL_FlushEvent(type : UInt32) : Void
  fun flush_events = SDL_FlushEvents(min_type : UInt32, max_type : UInt32) : Void
  fun poll_event = SDL_PollEvent(event : Event*) : bool
  fun wait_event = SDL_WaitEvent(event : Event*) : bool
  fun wait_event_timeout = SDL_WaitEventTimeout(event : Event*, timeout_ms : Int32) : bool
  fun push_event = SDL_PushEvent(event : Event*) : bool
  fun set_event_filter = SDL_SetEventFilter(filter : EventFilter, userdata : Void*) : Void
  fun get_event_filter = SDL_GetEventFilter(filter : EventFilter*, userdata : Void**) : bool
  fun add_event_watch = SDL_AddEventWatch(filter : EventFilter, userdata : Void*) : bool
  fun remove_event_watch = SDL_RemoveEventWatch(filter : EventFilter, userdata : Void*) : Void
  fun filter_events = SDL_FilterEvents(filter : EventFilter, userdata : Void*) : Void
  fun set_event_enabled = SDL_SetEventEnabled(type : UInt32, enabled : bool) : Void
  fun event_enabled = SDL_EventEnabled(type : UInt32) : bool
  fun register_events = SDL_RegisterEvents(numevents : LibC::Int) : UInt32
  fun get_window_from_event = SDL_GetWindowFromEvent(event : Event*) : Window*

  # SDL_filesystem

  GLOB_CASEINSENSITIVE = (1 << 0)

  alias GlobFlags = UInt32

  enum Folder
    FOLDER_HOME
    FOLDER_DESKTOP
    FOLDER_DOCUMENTS
    FOLDER_DOWNLOADS
    FOLDER_MUSIC
    FOLDER_PICTURES
    FOLDER_PUBLICSHARE
    FOLDER_SAVEDGAMES
    FOLDER_SCREENSHOTS
    FOLDER_TEMPLATES
    FOLDER_VIDEOS
    FOLDER_COUNT
  end

  enum PathType
    PATHTYPE_NONE
    PATHTYPE_FILE
    PATHTYPE_DIRECTORY
    PATHTYPE_OTHER
  end

  enum EnumerationResult
    ENUM_CONTINUE
    ENUM_SUCCESS
    ENUM_FAILURE
  end

  struct PathInfo
    type : PathType
    size : UInt64
    create_time : Time
    modify_time : Time
    access_time : Time
  end

  fun get_base_path = SDL_GetBasePath() : LibC::Char*
  fun get_pref_path = SDL_GetPrefPath(org : LibC::Char*, app : LibC::Char*) : LibC::Char*
  fun get_user_folder = SDL_GetUserFolder(folder : Folder) : LibC::Char*
  fun create_directory = SDL_CreateDirectory(path : LibC::Char*) : bool
  fun enumerate_directory = SDL_EnumerateDirectory(path : LibC::Char*, callback : EnumerateDirectoryCallback, userdata : Void*) : bool
  fun remove_path = SDL_RemovePath(path : LibC::Char*) : bool
  fun rename_path = SDL_RenamePath(oldpath : LibC::Char*, newpath : LibC::Char*) : bool
  fun copy_file = SDL_CopyFile(oldpath : LibC::Char*, newpath : LibC::Char*) : bool
  fun get_path_info = SDL_GetPathInfo(path : LibC::Char*, info : PathInfo*) : bool
  fun glob_directory = SDL_GlobDirectory(path : LibC::Char*, pattern : LibC::Char*, flags : GlobFlags, count : LibC::Int*) : LibC::Char**
  fun get_current_directory = SDL_GetCurrentDirectory() : LibC::Char*

  # additions/helper_gamecontroller.cr

  struct GameControllerButtonBindUnionHat
    hat : LibC::Int
    hat_mask : LibC::Int
  end

  union GameControllerButtonBindUnion
    button : LibC::Int
    axis : LibC::Int
    hat : GameControllerButtonBindUnionHat
  end

  struct GameControllerButtonBind
    bind_type : GameControllerBindType
    value : GameControllerButtonBindUnion
  end

  # SDL_gamecontroller

  # SDL_gesture

  # SDL_guid

  struct GUID
    data : UInt8[16]
  end

  fun guidto_string = SDL_GUIDToString(guid : GUID, psz_guid : LibC::Char*, cb_guid : LibC::Int) : Void
  fun string_to_guid = SDL_StringToGUID(pch_guid : LibC::Char*) : GUID

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
  fun is_mouse_haptic = SDL_IsMouseHaptic() : bool
  fun open_haptic_from_mouse = SDL_OpenHapticFromMouse() : Haptic*
  fun is_joystick_haptic = SDL_IsJoystickHaptic(joystick : Joystick*) : bool
  fun open_haptic_from_joystick = SDL_OpenHapticFromJoystick(joystick : Joystick*) : Haptic*
  fun close_haptic = SDL_CloseHaptic(haptic : Haptic*) : Void
  fun get_max_haptic_effects = SDL_GetMaxHapticEffects(haptic : Haptic*) : LibC::Int
  fun get_max_haptic_effects_playing = SDL_GetMaxHapticEffectsPlaying(haptic : Haptic*) : LibC::Int
  fun get_haptic_features = SDL_GetHapticFeatures(haptic : Haptic*) : UInt32
  fun get_num_haptic_axes = SDL_GetNumHapticAxes(haptic : Haptic*) : LibC::Int
  fun haptic_effect_supported = SDL_HapticEffectSupported(haptic : Haptic*, effect : HapticEffect*) : bool
  fun create_haptic_effect = SDL_CreateHapticEffect(haptic : Haptic*, effect : HapticEffect*) : LibC::Int
  fun update_haptic_effect = SDL_UpdateHapticEffect(haptic : Haptic*, effect : LibC::Int, data : HapticEffect*) : bool
  fun run_haptic_effect = SDL_RunHapticEffect(haptic : Haptic*, effect : LibC::Int, iterations : UInt32) : bool
  fun stop_haptic_effect = SDL_StopHapticEffect(haptic : Haptic*, effect : LibC::Int) : bool
  fun destroy_haptic_effect = SDL_DestroyHapticEffect(haptic : Haptic*, effect : LibC::Int) : Void
  fun get_haptic_effect_status = SDL_GetHapticEffectStatus(haptic : Haptic*, effect : LibC::Int) : bool
  fun set_haptic_gain = SDL_SetHapticGain(haptic : Haptic*, gain : LibC::Int) : bool
  fun set_haptic_autocenter = SDL_SetHapticAutocenter(haptic : Haptic*, autocenter : LibC::Int) : bool
  fun pause_haptic = SDL_PauseHaptic(haptic : Haptic*) : bool
  fun resume_haptic = SDL_ResumeHaptic(haptic : Haptic*) : bool
  fun stop_haptic_effects = SDL_StopHapticEffects(haptic : Haptic*) : bool
  fun haptic_rumble_supported = SDL_HapticRumbleSupported(haptic : Haptic*) : bool
  fun init_haptic_rumble = SDL_InitHapticRumble(haptic : Haptic*) : bool
  fun play_haptic_rumble = SDL_PlayHapticRumble(haptic : Haptic*, strength : LibC::Float, length : UInt32) : bool
  fun stop_haptic_rumble = SDL_StopHapticRumble(haptic : Haptic*) : bool

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

  fun set_hint_with_priority = SDL_SetHintWithPriority(name : LibC::Char*, value : LibC::Char*, priority : HintPriority) : bool
  fun set_hint = SDL_SetHint(name : LibC::Char*, value : LibC::Char*) : bool
  fun reset_hint = SDL_ResetHint(name : LibC::Char*) : bool
  fun reset_hints = SDL_ResetHints() : Void
  fun get_hint = SDL_GetHint(name : LibC::Char*) : LibC::Char*
  fun get_hint_boolean = SDL_GetHintBoolean(name : LibC::Char*, default_value : bool) : bool
  fun add_hint_callback = SDL_AddHintCallback(name : LibC::Char*, callback : HintCallback, userdata : Void*) : bool
  fun remove_hint_callback = SDL_RemoveHintCallback(name : LibC::Char*, callback : HintCallback, userdata : Void*) : Void

  # additions/helper_hints.cr

  # (void* userdata, const char* name, const char* oldValue, const char* newValue)
  alias HintCallback = (Void*, LibC::Char*, LibC::Char*, LibC::Char*) -> Void

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
  fun has_joystick = SDL_HasJoystick() : bool
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
  fun detach_virtual_joystick = SDL_DetachVirtualJoystick(instance_id : JoystickID) : bool
  fun is_joystick_virtual = SDL_IsJoystickVirtual(instance_id : JoystickID) : bool
  fun set_joystick_virtual_axis = SDL_SetJoystickVirtualAxis(joystick : Joystick*, axis : LibC::Int, value : Int16) : bool
  fun set_joystick_virtual_ball = SDL_SetJoystickVirtualBall(joystick : Joystick*, ball : LibC::Int, xrel : Int16, yrel : Int16) : bool
  fun set_joystick_virtual_button = SDL_SetJoystickVirtualButton(joystick : Joystick*, button : LibC::Int, down : bool) : bool
  fun set_joystick_virtual_hat = SDL_SetJoystickVirtualHat(joystick : Joystick*, hat : LibC::Int, value : UInt8) : bool
  fun set_joystick_virtual_touchpad = SDL_SetJoystickVirtualTouchpad(joystick : Joystick*, touchpad : LibC::Int, finger : LibC::Int, down : bool, x : LibC::Float, y : LibC::Float, pressure : LibC::Float) : bool
  fun send_joystick_virtual_sensor_data = SDL_SendJoystickVirtualSensorData(joystick : Joystick*, type : SensorType, sensor_timestamp : UInt64, data : LibC::Float*, num_values : LibC::Int) : bool
  fun get_joystick_properties = SDL_GetJoystickProperties(joystick : Joystick*) : PropertiesID
  fun get_joystick_name = SDL_GetJoystickName(joystick : Joystick*) : LibC::Char*
  fun get_joystick_path = SDL_GetJoystickPath(joystick : Joystick*) : LibC::Char*
  fun get_joystick_player_index = SDL_GetJoystickPlayerIndex(joystick : Joystick*) : LibC::Int
  fun set_joystick_player_index = SDL_SetJoystickPlayerIndex(joystick : Joystick*, player_index : LibC::Int) : bool
  fun get_joystick_guid = SDL_GetJoystickGUID(joystick : Joystick*) : GUID
  fun get_joystick_vendor = SDL_GetJoystickVendor(joystick : Joystick*) : UInt16
  fun get_joystick_product = SDL_GetJoystickProduct(joystick : Joystick*) : UInt16
  fun get_joystick_product_version = SDL_GetJoystickProductVersion(joystick : Joystick*) : UInt16
  fun get_joystick_firmware_version = SDL_GetJoystickFirmwareVersion(joystick : Joystick*) : UInt16
  fun get_joystick_serial = SDL_GetJoystickSerial(joystick : Joystick*) : LibC::Char*
  fun get_joystick_type = SDL_GetJoystickType(joystick : Joystick*) : JoystickType
  fun get_joystick_guidinfo = SDL_GetJoystickGUIDInfo(guid : GUID, vendor : UInt16*, product : UInt16*, version : UInt16*, crc16 : UInt16*) : Void
  fun joystick_connected = SDL_JoystickConnected(joystick : Joystick*) : bool
  fun get_joystick_id = SDL_GetJoystickID(joystick : Joystick*) : JoystickID
  fun get_num_joystick_axes = SDL_GetNumJoystickAxes(joystick : Joystick*) : LibC::Int
  fun get_num_joystick_balls = SDL_GetNumJoystickBalls(joystick : Joystick*) : LibC::Int
  fun get_num_joystick_hats = SDL_GetNumJoystickHats(joystick : Joystick*) : LibC::Int
  fun get_num_joystick_buttons = SDL_GetNumJoystickButtons(joystick : Joystick*) : LibC::Int
  fun set_joystick_events_enabled = SDL_SetJoystickEventsEnabled(enabled : bool) : Void
  fun joystick_events_enabled = SDL_JoystickEventsEnabled() : bool
  fun update_joysticks = SDL_UpdateJoysticks() : Void
  fun get_joystick_axis = SDL_GetJoystickAxis(joystick : Joystick*, axis : LibC::Int) : Int16
  fun get_joystick_axis_initial_state = SDL_GetJoystickAxisInitialState(joystick : Joystick*, axis : LibC::Int, state : Int16*) : bool
  fun get_joystick_ball = SDL_GetJoystickBall(joystick : Joystick*, ball : LibC::Int, dx : LibC::Int*, dy : LibC::Int*) : bool
  fun get_joystick_hat = SDL_GetJoystickHat(joystick : Joystick*, hat : LibC::Int) : UInt8
  fun get_joystick_button = SDL_GetJoystickButton(joystick : Joystick*, button : LibC::Int) : bool
  fun rumble_joystick = SDL_RumbleJoystick(joystick : Joystick*, low_frequency_rumble : UInt16, high_frequency_rumble : UInt16, duration_ms : UInt32) : bool
  fun rumble_joystick_triggers = SDL_RumbleJoystickTriggers(joystick : Joystick*, left_rumble : UInt16, right_rumble : UInt16, duration_ms : UInt32) : bool
  fun set_joystick_led = SDL_SetJoystickLED(joystick : Joystick*, red : UInt8, green : UInt8, blue : UInt8) : bool
  fun send_joystick_effect = SDL_SendJoystickEffect(joystick : Joystick*, data : Void*, size : LibC::Int) : bool
  fun close_joystick = SDL_CloseJoystick(joystick : Joystick*) : Void
  fun get_joystick_connection_state = SDL_GetJoystickConnectionState(joystick : Joystick*) : JoystickConnectionState
  fun get_joystick_power_info = SDL_GetJoystickPowerInfo(joystick : Joystick*, percent : LibC::Int*) : PowerState

  # additions/helper_joystick.cr

  struct VirtualJoystickDesc
    version : UInt16
    type : UInt16
    naxes : UInt16
    nbuttons : UInt16
    nhats : UInt16
    vendor_id : UInt16
    product_id : UInt16
    padding : UInt16
    button_mask : UInt32
    axis_mask : UInt32
    name : LibC::Char*
    userdata : Void*
    update : (Void*) -> Void  # (void* userdata)
    set_player_index : (Void*, LibC::Int) -> Void # (void* userdata, int player_index)
    rumble : (Void*, UInt16, UInt16) -> LibC::Int # (void* userdata, Uint16 low_frequency_rumble, Uint16 high_frequency_rumble)
    rumble_triggers : (Void*, UInt16, UInt16) -> LibC::Int  # (void* userdata, Uint16 left_rumble, Uint16 right_rumble)
    set_led : (Void*, UInt8, UInt8, UInt8) -> LibC::Int # (void* userdata, Uint8 red, Uint8 green, Uint8 blue)
    send_effect : (Void*, Void*, LibC::Int) -> LibC::Int  # (void* userdata, const void* data, int size)
  end

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

  fun has_keyboard = SDL_HasKeyboard() : bool
  fun get_keyboards = SDL_GetKeyboards(count : LibC::Int*) : KeyboardID*
  fun get_keyboard_name_for_id = SDL_GetKeyboardNameForID(instance_id : KeyboardID) : LibC::Char*
  fun get_keyboard_focus = SDL_GetKeyboardFocus() : Window*
  fun get_keyboard_state = SDL_GetKeyboardState(numkeys : LibC::Int*) : bool*
  fun reset_keyboard = SDL_ResetKeyboard() : Void
  fun get_mod_state = SDL_GetModState() : Keymod
  fun set_mod_state = SDL_SetModState(modstate : Keymod) : Void
  fun get_key_from_scancode = SDL_GetKeyFromScancode(scancode : Scancode, modstate : Keymod, key_event : bool) : Keycode
  fun get_scancode_from_key = SDL_GetScancodeFromKey(key : Keycode, modstate : Keymod*) : Scancode
  fun set_scancode_name = SDL_SetScancodeName(scancode : Scancode, name : LibC::Char*) : bool
  fun get_scancode_name = SDL_GetScancodeName(scancode : Scancode) : LibC::Char*
  fun get_scancode_from_name = SDL_GetScancodeFromName(name : LibC::Char*) : Scancode
  fun get_key_name = SDL_GetKeyName(key : Keycode) : LibC::Char*
  fun get_key_from_name = SDL_GetKeyFromName(name : LibC::Char*) : Keycode
  fun start_text_input = SDL_StartTextInput(window : Window*) : bool
  fun start_text_input_with_properties = SDL_StartTextInputWithProperties(window : Window*, props : PropertiesID) : bool
  fun text_input_active = SDL_TextInputActive(window : Window*) : bool
  fun stop_text_input = SDL_StopTextInput(window : Window*) : bool
  fun clear_composition = SDL_ClearComposition(window : Window*) : bool
  fun set_text_input_area = SDL_SetTextInputArea(window : Window*, rect : Rect*, cursor : LibC::Int) : bool
  fun get_text_input_area = SDL_GetTextInputArea(window : Window*, rect : Rect*, cursor : LibC::Int*) : bool
  fun has_screen_keyboard_support = SDL_HasScreenKeyboardSupport() : bool
  fun screen_keyboard_shown = SDL_ScreenKeyboardShown(window : Window*) : bool

  # SDL_keycode

  K_SCANCODE_MASK = (1 << 30)
  K_UNKNOWN = 0x00000000
  K_RETURN = 0x0000000du
  K_ESCAPE = 0x0000001bu
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
  K_ASTERISK = 0x0000002au
  K_PLUS = 0x0000002bu
  K_COMMA = 0x0000002cu
  K_MINUS = 0x0000002du
  K_PERIOD = 0x0000002eu
  K_SLASH = 0x0000002fu
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
  K_COLON = 0x0000003au
  K_SEMICOLON = 0x0000003bu
  K_LESS = 0x0000003cu
  K_EQUALS = 0x0000003du
  K_GREATER = 0x0000003eu
  K_QUESTION = 0x0000003fu
  K_AT = 0x00000040
  K_LEFTBRACKET = 0x0000005bu
  K_BACKSLASH = 0x0000005cu
  K_RIGHTBRACKET = 0x0000005du
  K_CARET = 0x0000005eu
  K_UNDERSCORE = 0x0000005fu
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
  K_J = 0x0000006au
  K_K = 0x0000006bu
  K_L = 0x0000006cu
  K_M = 0x0000006du
  K_N = 0x0000006eu
  K_O = 0x0000006fu
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
  K_Z = 0x0000007au
  K_LEFTBRACE = 0x0000007bu
  K_PIPE = 0x0000007cu
  K_RIGHTBRACE = 0x0000007du
  K_TILDE = 0x0000007eu
  K_DELETE = 0x0000007fu
  K_PLUSMINUS = 0x000000b1
  K_CAPSLOCK = 0x40000039
  K_F1 = 0x4000003au
  K_F2 = 0x4000003bu
  K_F3 = 0x4000003cu
  K_F4 = 0x4000003du
  K_F5 = 0x4000003eu
  K_F6 = 0x4000003fu
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
  K_HOME = 0x4000004au
  K_PAGEUP = 0x4000004bu
  K_END = 0x4000004du
  K_PAGEDOWN = 0x4000004eu
  K_RIGHT = 0x4000004fu
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
  K_KP_2 = 0x4000005au
  K_KP_3 = 0x4000005bu
  K_KP_4 = 0x4000005cu
  K_KP_5 = 0x4000005du
  K_KP_6 = 0x4000005eu
  K_KP_7 = 0x4000005fu
  K_KP_8 = 0x40000060
  K_KP_9 = 0x40000061
  K_KP_0 = 0x40000062
  K_KP_PERIOD = 0x40000063
  K_APPLICATION = 0x40000065
  K_POWER = 0x40000066
  K_KP_EQUALS = 0x40000067
  K_F13 = 0x40000068
  K_F14 = 0x40000069
  K_F15 = 0x4000006au
  K_F16 = 0x4000006bu
  K_F17 = 0x4000006cu
  K_F18 = 0x4000006du
  K_F19 = 0x4000006eu
  K_F20 = 0x4000006fu
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
  K_UNDO = 0x4000007au
  K_CUT = 0x4000007bu
  K_COPY = 0x4000007cu
  K_PASTE = 0x4000007du
  K_FIND = 0x4000007eu
  K_MUTE = 0x4000007fu
  K_VOLUMEUP = 0x40000080
  K_VOLUMEDOWN = 0x40000081
  K_KP_COMMA = 0x40000085
  K_KP_EQUALSAS400 = 0x40000086
  K_ALTERASE = 0x40000099
  K_SYSREQ = 0x4000009au
  K_CANCEL = 0x4000009bu
  K_CLEAR = 0x4000009cu
  K_PRIOR = 0x4000009du
  K_RETURN2 = 0x4000009eu
  K_SEPARATOR = 0x4000009fu
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
  K_KP_TAB = 0x400000bau
  K_KP_BACKSPACE = 0x400000bbu
  K_KP_A = 0x400000bcu
  K_KP_B = 0x400000bdu
  K_KP_C = 0x400000beu
  K_KP_D = 0x400000bfu
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
  K_KP_DBLVERTICALBAR = 0x400000cau
  K_KP_COLON = 0x400000cbu
  K_KP_HASH = 0x400000ccu
  K_KP_SPACE = 0x400000cdu
  K_KP_AT = 0x400000ceu
  K_KP_EXCLAM = 0x400000cfu
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
  K_KP_BINARY = 0x400000dau
  K_KP_OCTAL = 0x400000dbu
  K_KP_DECIMAL = 0x400000dcu
  K_KP_HEXADECIMAL = 0x400000ddu
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
  K_MEDIA_REWIND = 0x4000010au
  K_MEDIA_NEXT_TRACK = 0x4000010bu
  K_MEDIA_PREVIOUS_TRACK = 0x4000010cu
  K_MEDIA_STOP = 0x4000010du
  K_MEDIA_EJECT = 0x4000010eu
  K_MEDIA_PLAY_PAUSE = 0x4000010fu
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
  K_AC_BACK = 0x4000011au
  K_AC_FORWARD = 0x4000011bu
  K_AC_STOP = 0x4000011cu
  K_AC_REFRESH = 0x4000011du
  K_AC_BOOKMARKS = 0x4000011eu
  K_SOFTLEFT = 0x4000011fu
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

  fun has_mouse = SDL_HasMouse() : bool
  fun get_mice = SDL_GetMice(count : LibC::Int*) : MouseID*
  fun get_mouse_name_for_id = SDL_GetMouseNameForID(instance_id : MouseID) : LibC::Char*
  fun get_mouse_focus = SDL_GetMouseFocus() : Window*
  fun get_mouse_state = SDL_GetMouseState(x : LibC::Float*, y : LibC::Float*) : MouseButtonFlags
  fun get_global_mouse_state = SDL_GetGlobalMouseState(x : LibC::Float*, y : LibC::Float*) : MouseButtonFlags
  fun get_relative_mouse_state = SDL_GetRelativeMouseState(x : LibC::Float*, y : LibC::Float*) : MouseButtonFlags
  fun warp_mouse_in_window = SDL_WarpMouseInWindow(window : Window*, x : LibC::Float, y : LibC::Float) : Void
  fun warp_mouse_global = SDL_WarpMouseGlobal(x : LibC::Float, y : LibC::Float) : bool
  fun set_window_relative_mouse_mode = SDL_SetWindowRelativeMouseMode(window : Window*, enabled : bool) : bool
  fun get_window_relative_mouse_mode = SDL_GetWindowRelativeMouseMode(window : Window*) : bool
  fun capture_mouse = SDL_CaptureMouse(enabled : bool) : bool
  fun create_cursor = SDL_CreateCursor(data : UInt8*, mask : UInt8*, w : LibC::Int, h : LibC::Int, hot_x : LibC::Int, hot_y : LibC::Int) : Cursor*
  fun create_color_cursor = SDL_CreateColorCursor(surface : Surface*, hot_x : LibC::Int, hot_y : LibC::Int) : Cursor*
  fun create_system_cursor = SDL_CreateSystemCursor(id : SystemCursor) : Cursor*
  fun set_cursor = SDL_SetCursor(cursor : Cursor*) : bool
  fun get_cursor = SDL_GetCursor() : Cursor*
  fun get_default_cursor = SDL_GetDefaultCursor() : Cursor*
  fun destroy_cursor = SDL_DestroyCursor(cursor : Cursor*) : Void
  fun show_cursor = SDL_ShowCursor() : bool
  fun hide_cursor = SDL_HideCursor() : bool
  fun cursor_visible = SDL_CursorVisible() : bool

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
  fun get_masks_for_pixel_format = SDL_GetMasksForPixelFormat(format : PixelFormat, bpp : LibC::Int*, rmask : UInt32*, gmask : UInt32*, bmask : UInt32*, amask : UInt32*) : bool
  fun get_pixel_format_for_masks = SDL_GetPixelFormatForMasks(bpp : LibC::Int, rmask : UInt32, gmask : UInt32, bmask : UInt32, amask : UInt32) : PixelFormat
  fun get_pixel_format_details = SDL_GetPixelFormatDetails(format : PixelFormat) : PixelFormatDetails*
  fun create_palette = SDL_CreatePalette(ncolors : LibC::Int) : Palette*
  fun set_palette_colors = SDL_SetPaletteColors(palette : Palette*, colors : Color*, firstcolor : LibC::Int, ncolors : LibC::Int) : bool
  fun destroy_palette = SDL_DestroyPalette(palette : Palette*) : Void
  fun map_rgb = SDL_MapRGB(format : PixelFormatDetails*, palette : Palette*, r : UInt8, g : UInt8, b : UInt8) : UInt32
  fun map_rgba = SDL_MapRGBA(format : PixelFormatDetails*, palette : Palette*, r : UInt8, g : UInt8, b : UInt8, a : UInt8) : UInt32
  fun get_rgb = SDL_GetRGB(pixel : UInt32, format : PixelFormatDetails*, palette : Palette*, r : UInt8*, g : UInt8*, b : UInt8*) : Void
  fun get_rgba = SDL_GetRGBA(pixel : UInt32, format : PixelFormatDetails*, palette : Palette*, r : UInt8*, g : UInt8*, b : UInt8*, a : UInt8*) : Void

  # additions/helper_pixels.cr

  alias Colour = Color

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

  fun has_rect_intersection = SDL_HasRectIntersection(a : Rect*, b : Rect*) : bool
  fun get_rect_intersection = SDL_GetRectIntersection(a : Rect*, b : Rect*, result : Rect*) : bool
  fun get_rect_union = SDL_GetRectUnion(a : Rect*, b : Rect*, result : Rect*) : bool
  fun get_rect_enclosing_points = SDL_GetRectEnclosingPoints(points : Point*, count : LibC::Int, clip : Rect*, result : Rect*) : bool
  fun get_rect_and_line_intersection = SDL_GetRectAndLineIntersection(rect : Rect*, x1 : LibC::Int*, y1 : LibC::Int*, x2 : LibC::Int*, y2 : LibC::Int*) : bool
  fun has_rect_intersection_float = SDL_HasRectIntersectionFloat(a : FRect*, b : FRect*) : bool
  fun get_rect_intersection_float = SDL_GetRectIntersectionFloat(a : FRect*, b : FRect*, result : FRect*) : bool
  fun get_rect_union_float = SDL_GetRectUnionFloat(a : FRect*, b : FRect*, result : FRect*) : bool
  fun get_rect_enclosing_points_float = SDL_GetRectEnclosingPointsFloat(points : FPoint*, count : LibC::Int, clip : FRect*, result : FRect*) : bool
  fun get_rect_and_line_intersection_float = SDL_GetRectAndLineIntersectionFloat(rect : FRect*, x1 : LibC::Float*, y1 : LibC::Float*, x2 : LibC::Float*, y2 : LibC::Float*) : bool

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
  fun create_window_and_renderer = SDL_CreateWindowAndRenderer(title : LibC::Char*, width : LibC::Int, height : LibC::Int, window_flags : WindowFlags, window : Window**, renderer : Renderer**) : bool
  fun create_renderer = SDL_CreateRenderer(window : Window*, name : LibC::Char*) : Renderer*
  fun create_renderer_with_properties = SDL_CreateRendererWithProperties(props : PropertiesID) : Renderer*
  fun create_software_renderer = SDL_CreateSoftwareRenderer(surface : Surface*) : Renderer*
  fun get_renderer = SDL_GetRenderer(window : Window*) : Renderer*
  fun get_render_window = SDL_GetRenderWindow(renderer : Renderer*) : Window*
  fun get_renderer_name = SDL_GetRendererName(renderer : Renderer*) : LibC::Char*
  fun get_renderer_properties = SDL_GetRendererProperties(renderer : Renderer*) : PropertiesID
  fun get_render_output_size = SDL_GetRenderOutputSize(renderer : Renderer*, w : LibC::Int*, h : LibC::Int*) : bool
  fun get_current_render_output_size = SDL_GetCurrentRenderOutputSize(renderer : Renderer*, w : LibC::Int*, h : LibC::Int*) : bool
  fun create_texture = SDL_CreateTexture(renderer : Renderer*, format : PixelFormat, access : TextureAccess, w : LibC::Int, h : LibC::Int) : Texture*
  fun create_texture_from_surface = SDL_CreateTextureFromSurface(renderer : Renderer*, surface : Surface*) : Texture*
  fun create_texture_with_properties = SDL_CreateTextureWithProperties(renderer : Renderer*, props : PropertiesID) : Texture*
  fun get_texture_properties = SDL_GetTextureProperties(texture : Texture*) : PropertiesID
  fun get_renderer_from_texture = SDL_GetRendererFromTexture(texture : Texture*) : Renderer*
  fun get_texture_size = SDL_GetTextureSize(texture : Texture*, w : LibC::Float*, h : LibC::Float*) : bool
  fun set_texture_color_mod = SDL_SetTextureColorMod(texture : Texture*, r : UInt8, g : UInt8, b : UInt8) : bool
  fun set_texture_color_mod_float = SDL_SetTextureColorModFloat(texture : Texture*, r : LibC::Float, g : LibC::Float, b : LibC::Float) : bool
  fun get_texture_color_mod = SDL_GetTextureColorMod(texture : Texture*, r : UInt8*, g : UInt8*, b : UInt8*) : bool
  fun get_texture_color_mod_float = SDL_GetTextureColorModFloat(texture : Texture*, r : LibC::Float*, g : LibC::Float*, b : LibC::Float*) : bool
  fun set_texture_alpha_mod = SDL_SetTextureAlphaMod(texture : Texture*, alpha : UInt8) : bool
  fun set_texture_alpha_mod_float = SDL_SetTextureAlphaModFloat(texture : Texture*, alpha : LibC::Float) : bool
  fun get_texture_alpha_mod = SDL_GetTextureAlphaMod(texture : Texture*, alpha : UInt8*) : bool
  fun get_texture_alpha_mod_float = SDL_GetTextureAlphaModFloat(texture : Texture*, alpha : LibC::Float*) : bool
  fun set_texture_blend_mode = SDL_SetTextureBlendMode(texture : Texture*, blend_mode : BlendMode) : bool
  fun get_texture_blend_mode = SDL_GetTextureBlendMode(texture : Texture*, blend_mode : BlendMode*) : bool
  fun set_texture_scale_mode = SDL_SetTextureScaleMode(texture : Texture*, scale_mode : ScaleMode) : bool
  fun get_texture_scale_mode = SDL_GetTextureScaleMode(texture : Texture*, scale_mode : ScaleMode*) : bool
  fun update_texture = SDL_UpdateTexture(texture : Texture*, rect : Rect*, pixels : Void*, pitch : LibC::Int) : bool
  fun update_yuvtexture = SDL_UpdateYUVTexture(texture : Texture*, rect : Rect*, yplane : UInt8*, ypitch : LibC::Int, uplane : UInt8*, upitch : LibC::Int, vplane : UInt8*, vpitch : LibC::Int) : bool
  fun update_nvtexture = SDL_UpdateNVTexture(texture : Texture*, rect : Rect*, yplane : UInt8*, ypitch : LibC::Int, uvplane : UInt8*, uvpitch : LibC::Int) : bool
  fun lock_texture = SDL_LockTexture(texture : Texture*, rect : Rect*, pixels : Void**, pitch : LibC::Int*) : bool
  fun lock_texture_to_surface = SDL_LockTextureToSurface(texture : Texture*, rect : Rect*, surface : Surface**) : bool
  fun unlock_texture = SDL_UnlockTexture(texture : Texture*) : Void
  fun set_render_target = SDL_SetRenderTarget(renderer : Renderer*, texture : Texture*) : bool
  fun get_render_target = SDL_GetRenderTarget(renderer : Renderer*) : Texture*
  fun set_render_logical_presentation = SDL_SetRenderLogicalPresentation(renderer : Renderer*, w : LibC::Int, h : LibC::Int, mode : RendererLogicalPresentation) : bool
  fun get_render_logical_presentation = SDL_GetRenderLogicalPresentation(renderer : Renderer*, w : LibC::Int*, h : LibC::Int*, mode : RendererLogicalPresentation*) : bool
  fun get_render_logical_presentation_rect = SDL_GetRenderLogicalPresentationRect(renderer : Renderer*, rect : FRect*) : bool
  fun render_coordinates_from_window = SDL_RenderCoordinatesFromWindow(renderer : Renderer*, window_x : LibC::Float, window_y : LibC::Float, x : LibC::Float*, y : LibC::Float*) : bool
  fun render_coordinates_to_window = SDL_RenderCoordinatesToWindow(renderer : Renderer*, x : LibC::Float, y : LibC::Float, window_x : LibC::Float*, window_y : LibC::Float*) : bool
  fun convert_event_to_render_coordinates = SDL_ConvertEventToRenderCoordinates(renderer : Renderer*, event : Event*) : bool
  fun set_render_viewport = SDL_SetRenderViewport(renderer : Renderer*, rect : Rect*) : bool
  fun get_render_viewport = SDL_GetRenderViewport(renderer : Renderer*, rect : Rect*) : bool
  fun render_viewport_set = SDL_RenderViewportSet(renderer : Renderer*) : bool
  fun get_render_safe_area = SDL_GetRenderSafeArea(renderer : Renderer*, rect : Rect*) : bool
  fun set_render_clip_rect = SDL_SetRenderClipRect(renderer : Renderer*, rect : Rect*) : bool
  fun get_render_clip_rect = SDL_GetRenderClipRect(renderer : Renderer*, rect : Rect*) : bool
  fun render_clip_enabled = SDL_RenderClipEnabled(renderer : Renderer*) : bool
  fun set_render_scale = SDL_SetRenderScale(renderer : Renderer*, scale_x : LibC::Float, scale_y : LibC::Float) : bool
  fun get_render_scale = SDL_GetRenderScale(renderer : Renderer*, scale_x : LibC::Float*, scale_y : LibC::Float*) : bool
  fun set_render_draw_color = SDL_SetRenderDrawColor(renderer : Renderer*, r : UInt8, g : UInt8, b : UInt8, a : UInt8) : bool
  fun set_render_draw_color_float = SDL_SetRenderDrawColorFloat(renderer : Renderer*, r : LibC::Float, g : LibC::Float, b : LibC::Float, a : LibC::Float) : bool
  fun get_render_draw_color = SDL_GetRenderDrawColor(renderer : Renderer*, r : UInt8*, g : UInt8*, b : UInt8*, a : UInt8*) : bool
  fun get_render_draw_color_float = SDL_GetRenderDrawColorFloat(renderer : Renderer*, r : LibC::Float*, g : LibC::Float*, b : LibC::Float*, a : LibC::Float*) : bool
  fun set_render_color_scale = SDL_SetRenderColorScale(renderer : Renderer*, scale : LibC::Float) : bool
  fun get_render_color_scale = SDL_GetRenderColorScale(renderer : Renderer*, scale : LibC::Float*) : bool
  fun set_render_draw_blend_mode = SDL_SetRenderDrawBlendMode(renderer : Renderer*, blend_mode : BlendMode) : bool
  fun get_render_draw_blend_mode = SDL_GetRenderDrawBlendMode(renderer : Renderer*, blend_mode : BlendMode*) : bool
  fun render_clear = SDL_RenderClear(renderer : Renderer*) : bool
  fun render_point = SDL_RenderPoint(renderer : Renderer*, x : LibC::Float, y : LibC::Float) : bool
  fun render_points = SDL_RenderPoints(renderer : Renderer*, points : FPoint*, count : LibC::Int) : bool
  fun render_line = SDL_RenderLine(renderer : Renderer*, x1 : LibC::Float, y1 : LibC::Float, x2 : LibC::Float, y2 : LibC::Float) : bool
  fun render_lines = SDL_RenderLines(renderer : Renderer*, points : FPoint*, count : LibC::Int) : bool
  fun render_rect = SDL_RenderRect(renderer : Renderer*, rect : FRect*) : bool
  fun render_rects = SDL_RenderRects(renderer : Renderer*, rects : FRect*, count : LibC::Int) : bool
  fun render_fill_rect = SDL_RenderFillRect(renderer : Renderer*, rect : FRect*) : bool
  fun render_fill_rects = SDL_RenderFillRects(renderer : Renderer*, rects : FRect*, count : LibC::Int) : bool
  fun render_texture = SDL_RenderTexture(renderer : Renderer*, texture : Texture*, srcrect : FRect*, dstrect : FRect*) : bool
  fun render_texture_rotated = SDL_RenderTextureRotated(renderer : Renderer*, texture : Texture*, srcrect : FRect*, dstrect : FRect*, angle : LibC::Double, center : FPoint*, flip : FlipMode) : bool
  fun render_texture_affine = SDL_RenderTextureAffine(renderer : Renderer*, texture : Texture*, srcrect : FRect*, origin : FPoint*, right : FPoint*, down : FPoint*) : bool
  fun render_texture_tiled = SDL_RenderTextureTiled(renderer : Renderer*, texture : Texture*, srcrect : FRect*, scale : LibC::Float, dstrect : FRect*) : bool
  fun render_texture9_grid = SDL_RenderTexture9Grid(renderer : Renderer*, texture : Texture*, srcrect : FRect*, left_width : LibC::Float, right_width : LibC::Float, top_height : LibC::Float, bottom_height : LibC::Float, scale : LibC::Float, dstrect : FRect*) : bool
  fun render_geometry = SDL_RenderGeometry(renderer : Renderer*, texture : Texture*, vertices : Vertex*, num_vertices : LibC::Int, indices : LibC::Int*, num_indices : LibC::Int) : bool
  fun render_geometry_raw = SDL_RenderGeometryRaw(renderer : Renderer*, texture : Texture*, xy : LibC::Float*, xy_stride : LibC::Int, color : FColor*, color_stride : LibC::Int, uv : LibC::Float*, uv_stride : LibC::Int, num_vertices : LibC::Int, indices : Void*, num_indices : LibC::Int, size_indices : LibC::Int) : bool
  fun render_read_pixels = SDL_RenderReadPixels(renderer : Renderer*, rect : Rect*) : Surface*
  fun render_present = SDL_RenderPresent(renderer : Renderer*) : bool
  fun destroy_texture = SDL_DestroyTexture(texture : Texture*) : Void
  fun destroy_renderer = SDL_DestroyRenderer(renderer : Renderer*) : Void
  fun flush_renderer = SDL_FlushRenderer(renderer : Renderer*) : bool
  fun get_render_metal_layer = SDL_GetRenderMetalLayer(renderer : Renderer*) : Void*
  fun get_render_metal_command_encoder = SDL_GetRenderMetalCommandEncoder(renderer : Renderer*) : Void*
  fun add_vulkan_render_semaphores = SDL_AddVulkanRenderSemaphores(renderer : Renderer*, wait_stage_mask : UInt32, wait_semaphore : Int64, signal_semaphore : Int64) : bool
  fun set_render_vsync = SDL_SetRenderVSync(renderer : Renderer*, vsync : LibC::Int) : bool
  fun get_render_vsync = SDL_GetRenderVSync(renderer : Renderer*, vsync : LibC::Int*) : bool
  fun render_debug_text = SDL_RenderDebugText(renderer : Renderer*, x : LibC::Float, y : LibC::Float, str : LibC::Char*) : bool
  fun render_debug_text_format = SDL_RenderDebugTextFormat(renderer : Renderer*, x : LibC::Float, y : LibC::Float, fmt : LibC::Char*, ...) : bool

  # additions/helper_rwops.cr

  type RWops = Void # This works as long as we're dealing with pointers only

  # SDL_rwops

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
  fun get_sensor_data = SDL_GetSensorData(sensor : Sensor*, data : LibC::Float*, num_values : LibC::Int) : bool
  fun close_sensor = SDL_CloseSensor(sensor : Sensor*) : Void
  fun update_sensors = SDL_UpdateSensors() : Void

  # additions/helper_shape.cr

  union WindowShapeParams
    binarization_cutoff : UInt8
    color_key : Color
  end

  enum ShapeMode
    ShapeModeDefault
    ShapeModeBinarizeAlpha
    ShapeModeReverseBinarizeAlpha
    ShapeModeColorKey
  end

  struct WindowShapeMode
    mode : ShapeMode
    parameters : WindowShapeParams
  end

  # SDL_shape

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
  fun set_surface_colorspace = SDL_SetSurfaceColorspace(surface : Surface*, colorspace : Colorspace) : bool
  fun get_surface_colorspace = SDL_GetSurfaceColorspace(surface : Surface*) : Colorspace
  fun create_surface_palette = SDL_CreateSurfacePalette(surface : Surface*) : Palette*
  fun set_surface_palette = SDL_SetSurfacePalette(surface : Surface*, palette : Palette*) : bool
  fun get_surface_palette = SDL_GetSurfacePalette(surface : Surface*) : Palette*
  fun add_surface_alternate_image = SDL_AddSurfaceAlternateImage(surface : Surface*, image : Surface*) : bool
  fun surface_has_alternate_images = SDL_SurfaceHasAlternateImages(surface : Surface*) : bool
  fun get_surface_images = SDL_GetSurfaceImages(surface : Surface*, count : LibC::Int*) : Surface**
  fun remove_surface_alternate_images = SDL_RemoveSurfaceAlternateImages(surface : Surface*) : Void
  fun lock_surface = SDL_LockSurface(surface : Surface*) : bool
  fun unlock_surface = SDL_UnlockSurface(surface : Surface*) : Void
  fun load_bmp_io = SDL_LoadBMP_IO(src : IOStream*, closeio : bool) : Surface*
  fun load_bmp = SDL_LoadBMP(file : LibC::Char*) : Surface*
  fun save_bmp_io = SDL_SaveBMP_IO(surface : Surface*, dst : IOStream*, closeio : bool) : bool
  fun save_bmp = SDL_SaveBMP(surface : Surface*, file : LibC::Char*) : bool
  fun set_surface_rle = SDL_SetSurfaceRLE(surface : Surface*, enabled : bool) : bool
  fun surface_has_rle = SDL_SurfaceHasRLE(surface : Surface*) : bool
  fun set_surface_color_key = SDL_SetSurfaceColorKey(surface : Surface*, enabled : bool, key : UInt32) : bool
  fun surface_has_color_key = SDL_SurfaceHasColorKey(surface : Surface*) : bool
  fun get_surface_color_key = SDL_GetSurfaceColorKey(surface : Surface*, key : UInt32*) : bool
  fun set_surface_color_mod = SDL_SetSurfaceColorMod(surface : Surface*, r : UInt8, g : UInt8, b : UInt8) : bool
  fun get_surface_color_mod = SDL_GetSurfaceColorMod(surface : Surface*, r : UInt8*, g : UInt8*, b : UInt8*) : bool
  fun set_surface_alpha_mod = SDL_SetSurfaceAlphaMod(surface : Surface*, alpha : UInt8) : bool
  fun get_surface_alpha_mod = SDL_GetSurfaceAlphaMod(surface : Surface*, alpha : UInt8*) : bool
  fun set_surface_blend_mode = SDL_SetSurfaceBlendMode(surface : Surface*, blend_mode : BlendMode) : bool
  fun get_surface_blend_mode = SDL_GetSurfaceBlendMode(surface : Surface*, blend_mode : BlendMode*) : bool
  fun set_surface_clip_rect = SDL_SetSurfaceClipRect(surface : Surface*, rect : Rect*) : bool
  fun get_surface_clip_rect = SDL_GetSurfaceClipRect(surface : Surface*, rect : Rect*) : bool
  fun flip_surface = SDL_FlipSurface(surface : Surface*, flip : FlipMode) : bool
  fun duplicate_surface = SDL_DuplicateSurface(surface : Surface*) : Surface*
  fun scale_surface = SDL_ScaleSurface(surface : Surface*, width : LibC::Int, height : LibC::Int, scale_mode : ScaleMode) : Surface*
  fun convert_surface = SDL_ConvertSurface(surface : Surface*, format : PixelFormat) : Surface*
  fun convert_surface_and_colorspace = SDL_ConvertSurfaceAndColorspace(surface : Surface*, format : PixelFormat, palette : Palette*, colorspace : Colorspace, props : PropertiesID) : Surface*
  fun convert_pixels = SDL_ConvertPixels(width : LibC::Int, height : LibC::Int, src_format : PixelFormat, src : Void*, src_pitch : LibC::Int, dst_format : PixelFormat, dst : Void*, dst_pitch : LibC::Int) : bool
  fun convert_pixels_and_colorspace = SDL_ConvertPixelsAndColorspace(width : LibC::Int, height : LibC::Int, src_format : PixelFormat, src_colorspace : Colorspace, src_properties : PropertiesID, src : Void*, src_pitch : LibC::Int, dst_format : PixelFormat, dst_colorspace : Colorspace, dst_properties : PropertiesID, dst : Void*, dst_pitch : LibC::Int) : bool
  fun premultiply_alpha = SDL_PremultiplyAlpha(width : LibC::Int, height : LibC::Int, src_format : PixelFormat, src : Void*, src_pitch : LibC::Int, dst_format : PixelFormat, dst : Void*, dst_pitch : LibC::Int, linear : bool) : bool
  fun premultiply_surface_alpha = SDL_PremultiplySurfaceAlpha(surface : Surface*, linear : bool) : bool
  fun clear_surface = SDL_ClearSurface(surface : Surface*, r : LibC::Float, g : LibC::Float, b : LibC::Float, a : LibC::Float) : bool
  fun fill_surface_rect = SDL_FillSurfaceRect(dst : Surface*, rect : Rect*, color : UInt32) : bool
  fun fill_surface_rects = SDL_FillSurfaceRects(dst : Surface*, rects : Rect*, count : LibC::Int, color : UInt32) : bool
  fun blit_surface = SDL_BlitSurface(src : Surface*, srcrect : Rect*, dst : Surface*, dstrect : Rect*) : bool
  fun blit_surface_unchecked = SDL_BlitSurfaceUnchecked(src : Surface*, srcrect : Rect*, dst : Surface*, dstrect : Rect*) : bool
  fun blit_surface_scaled = SDL_BlitSurfaceScaled(src : Surface*, srcrect : Rect*, dst : Surface*, dstrect : Rect*, scale_mode : ScaleMode) : bool
  fun blit_surface_unchecked_scaled = SDL_BlitSurfaceUncheckedScaled(src : Surface*, srcrect : Rect*, dst : Surface*, dstrect : Rect*, scale_mode : ScaleMode) : bool
  fun blit_surface_tiled = SDL_BlitSurfaceTiled(src : Surface*, srcrect : Rect*, dst : Surface*, dstrect : Rect*) : bool
  fun blit_surface_tiled_with_scale = SDL_BlitSurfaceTiledWithScale(src : Surface*, srcrect : Rect*, scale : LibC::Float, scale_mode : ScaleMode, dst : Surface*, dstrect : Rect*) : bool
  fun blit_surface9_grid = SDL_BlitSurface9Grid(src : Surface*, srcrect : Rect*, left_width : LibC::Int, right_width : LibC::Int, top_height : LibC::Int, bottom_height : LibC::Int, scale : LibC::Float, scale_mode : ScaleMode, dst : Surface*, dstrect : Rect*) : bool
  fun map_surface_rgb = SDL_MapSurfaceRGB(surface : Surface*, r : UInt8, g : UInt8, b : UInt8) : UInt32
  fun map_surface_rgba = SDL_MapSurfaceRGBA(surface : Surface*, r : UInt8, g : UInt8, b : UInt8, a : UInt8) : UInt32
  fun read_surface_pixel = SDL_ReadSurfacePixel(surface : Surface*, x : LibC::Int, y : LibC::Int, r : UInt8*, g : UInt8*, b : UInt8*, a : UInt8*) : bool
  fun read_surface_pixel_float = SDL_ReadSurfacePixelFloat(surface : Surface*, x : LibC::Int, y : LibC::Int, r : LibC::Float*, g : LibC::Float*, b : LibC::Float*, a : LibC::Float*) : bool
  fun write_surface_pixel = SDL_WriteSurfacePixel(surface : Surface*, x : LibC::Int, y : LibC::Int, r : UInt8, g : UInt8, b : UInt8, a : UInt8) : bool
  fun write_surface_pixel_float = SDL_WriteSurfacePixelFloat(surface : Surface*, x : LibC::Int, y : LibC::Int, r : LibC::Float, g : LibC::Float, b : LibC::Float, a : LibC::Float) : bool

  # SDL_touch

  TOUCH_MOUSEID = ((MouseID)-1)
  MOUSE_TOUCHID = ((TouchID)-1)

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

  # (SDL_Window* win, const SDL_Point* area, void* data)
  alias HitTest = (Window*, Point*, Void*) -> HitTestResult

  # SDL_video

  PROP_GLOBAL_VIDEO_WAYLAND_WL_DISPLAY_POINTER = "SDL.video.wayland.wl_display"
  WINDOW_FULLSCREEN = UINT64_C(0x0000000000000001)
  WINDOW_OPENGL = UINT64_C(0x0000000000000002)
  WINDOW_OCCLUDED = UINT64_C(0x0000000000000004)
  WINDOW_HIDDEN = UINT64_C(0x0000000000000008)
  WINDOW_BORDERLESS = UINT64_C(0x0000000000000010)
  WINDOW_RESIZABLE = UINT64_C(0x0000000000000020)
  WINDOW_MINIMIZED = UINT64_C(0x0000000000000040)
  WINDOW_MAXIMIZED = UINT64_C(0x0000000000000080)
  WINDOW_MOUSE_GRABBED = UINT64_C(0x0000000000000100)
  WINDOW_INPUT_FOCUS = UINT64_C(0x0000000000000200)
  WINDOW_MOUSE_FOCUS = UINT64_C(0x0000000000000400)
  WINDOW_EXTERNAL = UINT64_C(0x0000000000000800)
  WINDOW_MODAL = UINT64_C(0x0000000000001000)
  WINDOW_HIGH_PIXEL_DENSITY = UINT64_C(0x0000000000002000)
  WINDOW_MOUSE_CAPTURE = UINT64_C(0x0000000000004000)
  WINDOW_MOUSE_RELATIVE_MODE = UINT64_C(0x0000000000008000)
  WINDOW_ALWAYS_ON_TOP = UINT64_C(0x0000000000010000)
  WINDOW_UTILITY = UINT64_C(0x0000000000020000)
  WINDOW_TOOLTIP = UINT64_C(0x0000000000040000)
  WINDOW_POPUP_MENU = UINT64_C(0x0000000000080000)
  WINDOW_KEYBOARD_GRABBED = UINT64_C(0x0000000000100000)
  WINDOW_VULKAN = UINT64_C(0x0000000010000000)
  WINDOW_METAL = UINT64_C(0x0000000020000000)
  WINDOW_TRANSPARENT = UINT64_C(0x0000000040000000)
  WINDOW_NOT_FOCUSABLE = UINT64_C(0x0000000080000000)
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
  alias GLContext = Void
  alias DisplayID = UInt32
  alias WindowID = UInt32
  alias WindowFlags = UInt64
  alias EGLDisplay = Void*
  alias EGLConfig = Void*
  alias EGLSurface = Void*
  alias EGLAttrib = LibC::IntptrT
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
  fun get_display_bounds = SDL_GetDisplayBounds(display_id : DisplayID, rect : Rect*) : bool
  fun get_display_usable_bounds = SDL_GetDisplayUsableBounds(display_id : DisplayID, rect : Rect*) : bool
  fun get_natural_display_orientation = SDL_GetNaturalDisplayOrientation(display_id : DisplayID) : DisplayOrientation
  fun get_current_display_orientation = SDL_GetCurrentDisplayOrientation(display_id : DisplayID) : DisplayOrientation
  fun get_display_content_scale = SDL_GetDisplayContentScale(display_id : DisplayID) : LibC::Float
  fun get_fullscreen_display_modes = SDL_GetFullscreenDisplayModes(display_id : DisplayID, count : LibC::Int*) : DisplayMode**
  fun get_closest_fullscreen_display_mode = SDL_GetClosestFullscreenDisplayMode(display_id : DisplayID, w : LibC::Int, h : LibC::Int, refresh_rate : LibC::Float, include_high_density_modes : bool, closest : DisplayMode*) : bool
  fun get_desktop_display_mode = SDL_GetDesktopDisplayMode(display_id : DisplayID) : DisplayMode*
  fun get_current_display_mode = SDL_GetCurrentDisplayMode(display_id : DisplayID) : DisplayMode*
  fun get_display_for_point = SDL_GetDisplayForPoint(point : Point*) : DisplayID
  fun get_display_for_rect = SDL_GetDisplayForRect(rect : Rect*) : DisplayID
  fun get_display_for_window = SDL_GetDisplayForWindow(window : Window*) : DisplayID
  fun get_window_pixel_density = SDL_GetWindowPixelDensity(window : Window*) : LibC::Float
  fun get_window_display_scale = SDL_GetWindowDisplayScale(window : Window*) : LibC::Float
  fun set_window_fullscreen_mode = SDL_SetWindowFullscreenMode(window : Window*, mode : DisplayMode*) : bool
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
  fun set_window_title = SDL_SetWindowTitle(window : Window*, title : LibC::Char*) : bool
  fun get_window_title = SDL_GetWindowTitle(window : Window*) : LibC::Char*
  fun set_window_icon = SDL_SetWindowIcon(window : Window*, icon : Surface*) : bool
  fun set_window_position = SDL_SetWindowPosition(window : Window*, x : LibC::Int, y : LibC::Int) : bool
  fun get_window_position = SDL_GetWindowPosition(window : Window*, x : LibC::Int*, y : LibC::Int*) : bool
  fun set_window_size = SDL_SetWindowSize(window : Window*, w : LibC::Int, h : LibC::Int) : bool
  fun get_window_size = SDL_GetWindowSize(window : Window*, w : LibC::Int*, h : LibC::Int*) : bool
  fun get_window_safe_area = SDL_GetWindowSafeArea(window : Window*, rect : Rect*) : bool
  fun set_window_aspect_ratio = SDL_SetWindowAspectRatio(window : Window*, min_aspect : LibC::Float, max_aspect : LibC::Float) : bool
  fun get_window_aspect_ratio = SDL_GetWindowAspectRatio(window : Window*, min_aspect : LibC::Float*, max_aspect : LibC::Float*) : bool
  fun get_window_borders_size = SDL_GetWindowBordersSize(window : Window*, top : LibC::Int*, left : LibC::Int*, bottom : LibC::Int*, right : LibC::Int*) : bool
  fun get_window_size_in_pixels = SDL_GetWindowSizeInPixels(window : Window*, w : LibC::Int*, h : LibC::Int*) : bool
  fun set_window_minimum_size = SDL_SetWindowMinimumSize(window : Window*, min_w : LibC::Int, min_h : LibC::Int) : bool
  fun get_window_minimum_size = SDL_GetWindowMinimumSize(window : Window*, w : LibC::Int*, h : LibC::Int*) : bool
  fun set_window_maximum_size = SDL_SetWindowMaximumSize(window : Window*, max_w : LibC::Int, max_h : LibC::Int) : bool
  fun get_window_maximum_size = SDL_GetWindowMaximumSize(window : Window*, w : LibC::Int*, h : LibC::Int*) : bool
  fun set_window_bordered = SDL_SetWindowBordered(window : Window*, bordered : bool) : bool
  fun set_window_resizable = SDL_SetWindowResizable(window : Window*, resizable : bool) : bool
  fun set_window_always_on_top = SDL_SetWindowAlwaysOnTop(window : Window*, on_top : bool) : bool
  fun show_window = SDL_ShowWindow(window : Window*) : bool
  fun hide_window = SDL_HideWindow(window : Window*) : bool
  fun raise_window = SDL_RaiseWindow(window : Window*) : bool
  fun maximize_window = SDL_MaximizeWindow(window : Window*) : bool
  fun minimize_window = SDL_MinimizeWindow(window : Window*) : bool
  fun restore_window = SDL_RestoreWindow(window : Window*) : bool
  fun set_window_fullscreen = SDL_SetWindowFullscreen(window : Window*, fullscreen : bool) : bool
  fun sync_window = SDL_SyncWindow(window : Window*) : bool
  fun window_has_surface = SDL_WindowHasSurface(window : Window*) : bool
  fun get_window_surface = SDL_GetWindowSurface(window : Window*) : Surface*
  fun set_window_surface_vsync = SDL_SetWindowSurfaceVSync(window : Window*, vsync : LibC::Int) : bool
  fun get_window_surface_vsync = SDL_GetWindowSurfaceVSync(window : Window*, vsync : LibC::Int*) : bool
  fun update_window_surface = SDL_UpdateWindowSurface(window : Window*) : bool
  fun update_window_surface_rects = SDL_UpdateWindowSurfaceRects(window : Window*, rects : Rect*, numrects : LibC::Int) : bool
  fun destroy_window_surface = SDL_DestroyWindowSurface(window : Window*) : bool
  fun set_window_keyboard_grab = SDL_SetWindowKeyboardGrab(window : Window*, grabbed : bool) : bool
  fun set_window_mouse_grab = SDL_SetWindowMouseGrab(window : Window*, grabbed : bool) : bool
  fun get_window_keyboard_grab = SDL_GetWindowKeyboardGrab(window : Window*) : bool
  fun get_window_mouse_grab = SDL_GetWindowMouseGrab(window : Window*) : bool
  fun get_grabbed_window = SDL_GetGrabbedWindow() : Window*
  fun set_window_mouse_rect = SDL_SetWindowMouseRect(window : Window*, rect : Rect*) : bool
  fun get_window_mouse_rect = SDL_GetWindowMouseRect(window : Window*) : Rect*
  fun set_window_opacity = SDL_SetWindowOpacity(window : Window*, opacity : LibC::Float) : bool
  fun get_window_opacity = SDL_GetWindowOpacity(window : Window*) : LibC::Float
  fun set_window_parent = SDL_SetWindowParent(window : Window*, parent : Window*) : bool
  fun set_window_modal = SDL_SetWindowModal(window : Window*, modal : bool) : bool
  fun set_window_focusable = SDL_SetWindowFocusable(window : Window*, focusable : bool) : bool
  fun show_window_system_menu = SDL_ShowWindowSystemMenu(window : Window*, x : LibC::Int, y : LibC::Int) : bool
  fun set_window_hit_test = SDL_SetWindowHitTest(window : Window*, callback : HitTest, callback_data : Void*) : bool
  fun set_window_shape = SDL_SetWindowShape(window : Window*, shape : Surface*) : bool
  fun flash_window = SDL_FlashWindow(window : Window*, operation : FlashOperation) : bool
  fun destroy_window = SDL_DestroyWindow(window : Window*) : Void
  fun screen_saver_enabled = SDL_ScreenSaverEnabled() : bool
  fun enable_screen_saver = SDL_EnableScreenSaver() : bool
  fun disable_screen_saver = SDL_DisableScreenSaver() : bool
  fun gl_load_library = SDL_GL_LoadLibrary(path : LibC::Char*) : bool
  fun gl_get_proc_address = SDL_GL_GetProcAddress(proc : LibC::Char*) : FunctionPointer
  fun egl_get_proc_address = SDL_EGL_GetProcAddress(proc : LibC::Char*) : FunctionPointer
  fun gl_unload_library = SDL_GL_UnloadLibrary() : Void
  fun gl_extension_supported = SDL_GL_ExtensionSupported(extension : LibC::Char*) : bool
  fun gl_reset_attributes = SDL_GL_ResetAttributes() : Void
  fun gl_set_attribute = SDL_GL_SetAttribute(attr : GLAttr, value : LibC::Int) : bool
  fun gl_get_attribute = SDL_GL_GetAttribute(attr : GLAttr, value : LibC::Int*) : bool
  fun gl_create_context = SDL_GL_CreateContext(window : Window*) : GLContext
  fun gl_make_current = SDL_GL_MakeCurrent(window : Window*, context : GLContext) : bool
  fun gl_get_current_window = SDL_GL_GetCurrentWindow() : Window*
  fun gl_get_current_context = SDL_GL_GetCurrentContext() : GLContext
  fun egl_get_current_display = SDL_EGL_GetCurrentDisplay() : EGLDisplay
  fun egl_get_current_config = SDL_EGL_GetCurrentConfig() : EGLConfig
  fun egl_get_window_surface = SDL_EGL_GetWindowSurface(window : Window*) : EGLSurface
  fun egl_set_attribute_callbacks = SDL_EGL_SetAttributeCallbacks(platform_attrib_callback : EGLAttribArrayCallback, surface_attrib_callback : EGLIntArrayCallback, context_attrib_callback : EGLIntArrayCallback, userdata : Void*) : Void
  fun gl_set_swap_interval = SDL_GL_SetSwapInterval(interval : LibC::Int) : bool
  fun gl_get_swap_interval = SDL_GL_GetSwapInterval(interval : LibC::Int*) : bool
  fun gl_swap_window = SDL_GL_SwapWindow(window : Window*) : bool
  fun gl_destroy_context = SDL_GL_DestroyContext(context : GLContext) : bool

end

module LibSDLMacro
  # Other helper macros

  def self.fourcc(a, b, c, d)
    (a.to_u8 << 0).to_u32 | (b.to_u8 << 8).to_u32 | (c.to_u8 << 16).to_u32 | (d.to_u8 << 24).to_u32
  end

  # SDL_version

  def self.version(x)
    (x).value.major = LibSDL::MAJOR_VERSION
    (x).value.minor = LibSDL::MINOR_VERSION
    (x).value.patch = LibSDL::PATCHLEVEL
  end

  def self.versionnum(x, y, z)
    ((x)*1000 + (y)*100 + (z))
  end

  def self.version_atleast(x, y, z)
    ((LibSDL::MAJOR_VERSION >= x) && (LibSDL::MAJOR_VERSION > x || LibSDL::MINOR_VERSION >= y) && (LibSDL::MAJOR_VERSION > x || LibSDL::MINOR_VERSION > y || LibSDL::PATCHLEVEL >= z))
  end

  # SDL_audio

  def self.audio_bitsize(x)
    x & LibSDL::AUDIO_MASK_BITSIZE
  end

  def self.audio_is_float(x)
    x & LibSDL::AUDIO_MASK_DATATYPE
  end

  def self.is_big_endian(x)
    x & LibSDL::AUDIO_MASK_ENDIAN
  end

  def self.is_signed(x)
    x & LibSDL::MASK_SIGNED
  end

  def self.is_int(x)
    !self.audio_is_float(x)
  end

  def self.is_little_endian(x)
    !self.is_big_endian(x)
  end

  def self.is_unsigned(x)
    !self.is_signed(x)
  end

  def self.load_wav(file, spec, audio_buf, audio_len)
    LibSDL.load_wav_rw(LibSDL.rwfrom_file(file, "rb"), 1, spec, audio_buf, audio_len)
  end

  # SDL_error

  def self.out_of_memory
    LibSDL.error(LibSDL::Errorcode::ENOMEM)
  end

  def self.unsupported
    LibSDL.error(LibSDL::Errorcode::UNSUPPORTED)
  end

  def self.invalid_param_error(param)
    LibSDL.set_error("Parameter '%s' is invalid", (param))
  end

  # SDL_events

  def self.get_event_state(type)
    LibSDL.event_state(type, LibSDL::QUERY)
  end

  # SDL_gamecontroller

  def self.game_controller_add_mappings_from_file(file)
    LibSDL.game_controller_add_mappings_from_rw(LibSDL.rwfrom_file(file, "rb"), 1)
  end

  # SDL_keycode

  def self.scancode_to_keycode(x)
    x | LibSDL::K_SCANCODE_MASK
  end

  # SDL_mouse

  def self.button(x)
    (1 << ((x)-1))
  end

  # SDL_pixels

  def self.define_pixel_fourcc(a, b, c, d)
    self.fourcc(a, b, c, d) # TODO: Implement fourcc
  end

  def self.define_pixel_format(type, order, layout, bits, bytes)
    ((1 << 28) | ((type) << 24) | ((order) << 20) | ((layout) << 16) | ((bits) << 8) | ((bytes) << 0))
  end

  def self.pixel_flag(x)
     (((x) >> 28) & 0x0F)
  end

  def self.pixel_type(x)
    (((x) >> 24) & 0x0F)
  end

  def self.pixel_order(x)
    (((x) >> 20) & 0x0F)
  end

  def self.pixel_layout(x)
    (((x) >> 16) & 0x0F)
  end

  def self.bits_per_pixel(x)
    (((x) >> 8) & 0xFF)
  end

  def self.bytes_per_pixel(x)
    (self.is_pixel_format_fourcc(x) ? ((((x) == LibSDL::PIXELFORMAT_YUY2) || ((x) == LibSDL::PIXELFORMAT_UYVY) || ((x) == LibSDL::PIXELFORMAT_YVYU)) ? 2 : 1) : (((x) >> 0) & 0xFF))
  end

  def self.is_pixel_format_indexed(format)
    (!self.is_pixel_format_fourcc(format) && ((self.pixel_type(format) == LibSDL::PIXELTYPE_INDEX1) || (self.pixel_type(format) == LibSDL::PIXELTYPE_INDEX4) || (self.pixel_type(format) == LibSDL::PIXELTYPE_INDEX8)))
  end

  def self.is_pixel_format_packed(format)
     (!self.is_pixel_format_fourcc(format) && ((self.pixel_type(format) == LibSDL::PIXELTYPE_PACKED8) || (self.pixel_type(format) == LibSDL::PIXELTYPE_PACKED16) || (self.pixel_type(format) == LibSDL::PIXELTYPE_PACKED32)))
  end

  def self.is_pixel_format_array(format)
    (!self.is_pixel_format_fourcc(format) && ((self.pixel_type(format) == LibSDL::PIXELTYPE_ARRAYU8) || (self.pixel_type(format) == LibSDL::PIXELTYPE_ARRAYU16) || (self.pixel_type(format) == LibSDL::PIXELTYPE_ARRAYU32) || (self.pixel_type(format) == LibSDL::PIXELTYPE_ARRAYF16) || (self.pixel_type(format) == LibSDL::PIXELTYPE_ARRAYF32)))
  end

  def self.is_pixel_format_alpha(format)
    ((self.is_pixel_format_fourcc(format) && ((self.pixel_order(format) == LibSDL::PACKEDORDER_ARGB) || (self.pixel_order(format) == LibSDL::PACKEDORDER_RGBA) || (self.pixel_order(format) == LibSDL::PACKEDORDER_ABGR) || (self.pixel_order(format) == LibSDL::PACKEDORDER_BGRA))) || (self.is_pixel_format_array(format) && ((self.pixel_order(format) == LibSDL::ARRAYORDER_ARGB) || (self.pixel_order(format) == LibSDL::ARRAYORDER_RGBA) || (self.pixel_order(format) == LibSDL::ARRAYORDER_ABGR) || (self.pixel_order(format) == LibSDL::ARRAYORDER_BGRA))))
  end

  def self.is_pixel_format_fourcc(format)
    ((format) && (self.pixel_flag(format) != 1))
  end

  # SDL_shape

  def self.shape_mode_alpha(mode)
    (mode == LibSDL::ShapeMode::ShapeModeDefault || mode == LibSDL::ShapeMode::ShapeModeBinarizeAlpha || mode == LibSDL::ShapeMode::ShapeModeReverseBinarizeAlpha)
  end

  # SDL_surface

  def self.must_lock(s)
    (((s).value.flags & LibSDL::RLEACCEL) != 0)
  end

  def self.load_bmp(file)
    LibSDL.load_bmp_rw(LibSDL.rwfrom_file(file, "rb"), 1)
  end

  def self.save_bmp(surface, file)
    LibSDL.save_bmp_rw(surface, LibSDL.rwfrom_file(file, "wb"), 1)
  end

  def self.blit_surface(*args)
    LibSDL.upper_blit(*args)
  end

  def self.blit_scaled(*args)
    LibSDL.upper_blit_scaled(*args)
  end

  # SDL_video

  def self.window_pos_undefined_display(x)
    (LibSDL::WINDOWPOS_UNDEFINED_MASK | (x))
  end

  def self.window_pos_is_undefined(x)
    (((x)&0xFFFF0000) == LibSDL::WINDOWPOS_UNDEFINED_MASK)
  end

  def self.window_pos_centered_display(x)
    (LibSDL::WINDOWPOS_CENTERED_MASK | (x))
  end

  def self.window_pos_is_centered(x)
    (((x)&0xFFFF0000) == LibSDL::WINDOWPOS_CENTERED_MASK)
  end
end
