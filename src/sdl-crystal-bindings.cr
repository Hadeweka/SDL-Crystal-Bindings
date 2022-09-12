@[Link("SDL2")]
@[Link("SDL2_image")]
@[Link("SDL2_mixer")]
@[Link("SDL2_ttf")]
lib LibSDL
  # SDL

  INIT_TIMER = 0x00000001
  INIT_AUDIO = 0x00000010
  INIT_VIDEO = 0x00000020
  INIT_JOYSTICK = 0x00000200
  INIT_HAPTIC = 0x00001000
  INIT_GAMECONTROLLER = 0x00002000
  INIT_EVENTS = 0x00004000
  INIT_SENSOR = 0x00008000
  INIT_NOPARACHUTE = 0x00100000
  INIT_EVERYTHING = (INIT_TIMER | INIT_AUDIO | INIT_VIDEO | INIT_EVENTS | INIT_JOYSTICK | INIT_HAPTIC | INIT_GAMECONTROLLER | INIT_SENSOR)

  fun init = SDL_Init(flags : UInt32) : LibC::Int
  fun init_sub_system = SDL_InitSubSystem(flags : UInt32) : LibC::Int
  fun quit_sub_system = SDL_QuitSubSystem(flags : UInt32) : Void
  fun was_init = SDL_WasInit(flags : UInt32) : UInt32
  fun quit = SDL_Quit() : Void

  # SDL_version

  MAJOR_VERSION = 2
  MINOR_VERSION = 25
  PATCHLEVEL = 0
  COMPILEDVERSION = (((MAJOR_VERSION)*1000 + (MINOR_VERSION)*100 + (PATCHLEVEL)))

  struct Version
    major : UInt8
    minor : UInt8
    patch : UInt8
  end

  fun get_version = SDL_GetVersion(ver : Version*) : Void
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
    SCANCODE_AUDIONEXT = 258
    SCANCODE_AUDIOPREV = 259
    SCANCODE_AUDIOSTOP = 260
    SCANCODE_AUDIOPLAY = 261
    SCANCODE_AUDIOMUTE = 262
    SCANCODE_MEDIASELECT = 263
    SCANCODE_WWW = 264
    SCANCODE_MAIL = 265
    SCANCODE_CALCULATOR = 266
    SCANCODE_COMPUTER = 267
    SCANCODE_AC_SEARCH = 268
    SCANCODE_AC_HOME = 269
    SCANCODE_AC_BACK = 270
    SCANCODE_AC_FORWARD = 271
    SCANCODE_AC_STOP = 272
    SCANCODE_AC_REFRESH = 273
    SCANCODE_AC_BOOKMARKS = 274
    SCANCODE_BRIGHTNESSDOWN = 275
    SCANCODE_BRIGHTNESSUP = 276
    SCANCODE_DISPLAYSWITCH = 277
    SCANCODE_KBDILLUMTOGGLE = 278
    SCANCODE_KBDILLUMDOWN = 279
    SCANCODE_KBDILLUMUP = 280
    SCANCODE_EJECT = 281
    SCANCODE_SLEEP = 282
    SCANCODE_APP1 = 283
    SCANCODE_APP2 = 284
    SCANCODE_AUDIOREWIND = 285
    SCANCODE_AUDIOFASTFORWARD = 286
    SCANCODE_SOFTLEFT = 287
    SCANCODE_SOFTRIGHT = 288
    SCANCODE_CALL = 289
    SCANCODE_ENDCALL = 290
    NUM_SCANCODES = 512
  end

  # SDL_audio

  AUDIO_MASK_BITSIZE = (0xFF)
  AUDIO_MASK_DATATYPE = (1 << 8)
  AUDIO_MASK_ENDIAN = (1 << 12)
  AUDIO_MASK_SIGNED = (1 << 15)
  AUDIO_U8 = 0x0008
  AUDIO_S8 = 0x8008
  AUDIO_U16LSB = 0x0010
  AUDIO_S16LSB = 0x8010
  AUDIO_U16MSB = 0x1010
  AUDIO_S16MSB = 0x9010
  AUDIO_U16 = AUDIO_U16LSB
  AUDIO_S16 = AUDIO_S16LSB
  AUDIO_S32LSB = 0x8020
  AUDIO_S32MSB = 0x9020
  AUDIO_S32 = AUDIO_S32LSB
  AUDIO_F32LSB = 0x8120
  AUDIO_F32MSB = 0x9120
  AUDIO_F32 = AUDIO_F32LSB
  AUDIO_U16SYS = AUDIO_U16LSB
  AUDIO_S16SYS = AUDIO_S16LSB
  AUDIO_S32SYS = AUDIO_S32LSB
  AUDIO_F32SYS = AUDIO_F32LSB
  AUDIO_ALLOW_FREQUENCY_CHANGE = 0x00000001
  AUDIO_ALLOW_FORMAT_CHANGE = 0x00000002
  AUDIO_ALLOW_CHANNELS_CHANGE = 0x00000004
  AUDIO_ALLOW_SAMPLES_CHANGE = 0x00000008
  AUDIO_ALLOW_ANY_CHANGE = (AUDIO_ALLOW_FREQUENCY_CHANGE | AUDIO_ALLOW_FORMAT_CHANGE | AUDIO_ALLOW_CHANNELS_CHANGE | AUDIO_ALLOW_SAMPLES_CHANGE)
  AUDIOCVT_MAX_FILTERS = 9
  MIX_MAXVOLUME = 128

  alias AudioStream = Void
  alias AudioFormat = UInt16
  alias AudioDeviceID = UInt32

  enum AudioStatus
    AUDIO_STOPPED = 0
    AUDIO_PLAYING
    AUDIO_PAUSED
  end

  struct AudioSpec
    freq : LibC::Int
    format : AudioFormat
    channels : UInt8
    silence : UInt8
    samples : UInt16
    padding : UInt16
    size : UInt32
    callback : AudioCallback
    userdata : Void*
  end

  fun get_num_audio_drivers = SDL_GetNumAudioDrivers() : LibC::Int
  fun get_audio_driver = SDL_GetAudioDriver(index : LibC::Int) : LibC::Char*
  fun audio_init = SDL_AudioInit(driver_name : LibC::Char*) : LibC::Int
  fun audio_quit = SDL_AudioQuit() : Void
  fun get_current_audio_driver = SDL_GetCurrentAudioDriver() : LibC::Char*
  fun open_audio = SDL_OpenAudio(desired : AudioSpec*, obtained : AudioSpec*) : LibC::Int
  fun get_num_audio_devices = SDL_GetNumAudioDevices(iscapture : LibC::Int) : LibC::Int
  fun get_audio_device_name = SDL_GetAudioDeviceName(index : LibC::Int, iscapture : LibC::Int) : LibC::Char*
  fun get_audio_device_spec = SDL_GetAudioDeviceSpec(index : LibC::Int, iscapture : LibC::Int, spec : AudioSpec*) : LibC::Int
  fun get_default_audio_info = SDL_GetDefaultAudioInfo(name : LibC::Char**, spec : AudioSpec*, iscapture : LibC::Int) : LibC::Int
  fun open_audio_device = SDL_OpenAudioDevice(device : LibC::Char*, iscapture : LibC::Int, desired : AudioSpec*, obtained : AudioSpec*, allowed_changes : LibC::Int) : AudioDeviceID
  fun get_audio_status = SDL_GetAudioStatus() : AudioStatus
  fun get_audio_device_status = SDL_GetAudioDeviceStatus(dev : AudioDeviceID) : AudioStatus
  fun pause_audio = SDL_PauseAudio(pause_on : LibC::Int) : Void
  fun pause_audio_device = SDL_PauseAudioDevice(dev : AudioDeviceID, pause_on : LibC::Int) : Void
  fun load_wav_rw = SDL_LoadWAV_RW(src : RWops*, freesrc : LibC::Int, spec : AudioSpec*, audio_buf : UInt8**, audio_len : UInt32*) : AudioSpec*
  fun free_wav = SDL_FreeWAV(audio_buf : UInt8*) : Void
  fun build_audio_cvt = SDL_BuildAudioCVT(cvt : AudioCVT*, src_format : AudioFormat, src_channels : UInt8, src_rate : LibC::Int, dst_format : AudioFormat, dst_channels : UInt8, dst_rate : LibC::Int) : LibC::Int
  fun convert_audio = SDL_ConvertAudio(cvt : AudioCVT*) : LibC::Int
  fun new_audio_stream = SDL_NewAudioStream(src_format : AudioFormat, src_channels : UInt8, src_rate : LibC::Int, dst_format : AudioFormat, dst_channels : UInt8, dst_rate : LibC::Int) : AudioStream*
  fun audio_stream_put = SDL_AudioStreamPut(stream : AudioStream*, buf : Void*, len : LibC::Int) : LibC::Int
  fun audio_stream_get = SDL_AudioStreamGet(stream : AudioStream*, buf : Void*, len : LibC::Int) : LibC::Int
  fun audio_stream_available = SDL_AudioStreamAvailable(stream : AudioStream*) : LibC::Int
  fun audio_stream_flush = SDL_AudioStreamFlush(stream : AudioStream*) : LibC::Int
  fun audio_stream_clear = SDL_AudioStreamClear(stream : AudioStream*) : Void
  fun free_audio_stream = SDL_FreeAudioStream(stream : AudioStream*) : Void
  fun mix_audio = SDL_MixAudio(dst : UInt8*, src : UInt8*, len : UInt32, volume : LibC::Int) : Void
  fun mix_audio_format = SDL_MixAudioFormat(dst : UInt8*, src : UInt8*, format : AudioFormat, len : UInt32, volume : LibC::Int) : Void
  fun queue_audio = SDL_QueueAudio(dev : AudioDeviceID, data : Void*, len : UInt32) : LibC::Int
  fun dequeue_audio = SDL_DequeueAudio(dev : AudioDeviceID, data : Void*, len : UInt32) : UInt32
  fun get_queued_audio_size = SDL_GetQueuedAudioSize(dev : AudioDeviceID) : UInt32
  fun clear_queued_audio = SDL_ClearQueuedAudio(dev : AudioDeviceID) : Void
  fun lock_audio = SDL_LockAudio() : Void
  fun lock_audio_device = SDL_LockAudioDevice(dev : AudioDeviceID) : Void
  fun unlock_audio = SDL_UnlockAudio() : Void
  fun unlock_audio_device = SDL_UnlockAudioDevice(dev : AudioDeviceID) : Void
  fun close_audio = SDL_CloseAudio() : Void
  fun close_audio_device = SDL_CloseAudioDevice(dev : AudioDeviceID) : Void

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

  enum BlendMode
    BLENDMODE_NONE = 0x00000000
    BLENDMODE_BLEND = 0x00000001
    BLENDMODE_ADD = 0x00000002
    BLENDMODE_MOD = 0x00000004
    BLENDMODE_MUL = 0x00000008
    BLENDMODE_INVALID = 0x7FFFFFFF
  end

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

  fun set_clipboard_text = SDL_SetClipboardText(text : LibC::Char*) : LibC::Int
  fun get_clipboard_text = SDL_GetClipboardText() : LibC::Char*
  fun has_clipboard_text = SDL_HasClipboardText() : SBool

  # SDL_error

  enum Errorcode
    ENOMEM
    EFREAD
    EFWRITE
    EFSEEK
    UNSUPPORTED
    LASTERROR
  end

  fun set_error = SDL_SetError(fmt : LibC::Char*, ...) : LibC::Int
  fun get_error = SDL_GetError() : LibC::Char*
  fun get_error_msg = SDL_GetErrorMsg(errstr : LibC::Char*, maxlen : LibC::Int) : LibC::Char*
  fun clear_error = SDL_ClearError() : Void
  fun error = SDL_Error(code : Errorcode) : LibC::Int

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

  RELEASED = 0
  PRESSED = 1
  TEXTEDITINGEVENT_TEXT_SIZE = (32)
  TEXTINPUTEVENT_TEXT_SIZE = (32)
  QUERY = -1
  IGNORE = 0
  DISABLE = 0
  ENABLE = 1

  alias SysWMmsg = Void

  enum EventType
    FIRSTEVENT = 0
    QUIT = 0x100
    APP_TERMINATING
    APP_LOWMEMORY
    APP_WILLENTERBACKGROUND
    APP_DIDENTERBACKGROUND
    APP_WILLENTERFOREGROUND
    APP_DIDENTERFOREGROUND
    LOCALECHANGED
    DISPLAYEVENT = 0x150
    WINDOWEVENT = 0x200
    SYSWMEVENT
    KEYDOWN = 0x300
    KEYUP
    TEXTEDITING
    TEXTINPUT
    KEYMAPCHANGED
    TEXTEDITING_EXT
    MOUSEMOTION = 0x400
    MOUSEBUTTONDOWN
    MOUSEBUTTONUP
    MOUSEWHEEL
    JOYAXISMOTION = 0x600
    JOYBALLMOTION
    JOYHATMOTION
    JOYBUTTONDOWN
    JOYBUTTONUP
    JOYDEVICEADDED
    JOYDEVICEREMOVED
    JOYBATTERYUPDATED
    CONTROLLERAXISMOTION = 0x650
    CONTROLLERBUTTONDOWN
    CONTROLLERBUTTONUP
    CONTROLLERDEVICEADDED
    CONTROLLERDEVICEREMOVED
    CONTROLLERDEVICEREMAPPED
    CONTROLLERTOUCHPADDOWN
    CONTROLLERTOUCHPADMOTION
    CONTROLLERTOUCHPADUP
    CONTROLLERSENSORUPDATE
    FINGERDOWN = 0x700
    FINGERUP
    FINGERMOTION
    DOLLARGESTURE = 0x800
    DOLLARRECORD
    MULTIGESTURE
    CLIPBOARDUPDATE = 0x900
    DROPFILE = 0x1000
    DROPTEXT
    DROPBEGIN
    DROPCOMPLETE
    AUDIODEVICEADDED = 0x1100
    AUDIODEVICEREMOVED
    SENSORUPDATE = 0x1200
    RENDER_TARGETS_RESET = 0x2000
    RENDER_DEVICE_RESET
    POLLSENTINEL = 0x7F00
    USEREVENT = 0x8000
    LASTEVENT = 0xFFFF
  end

  enum Eventaction
    ADDEVENT
    PEEKEVENT
    GETEVENT
  end

  struct CommonEvent
    type : UInt32
    timestamp : UInt32
  end

  struct DisplayEvent
    type : UInt32
    timestamp : UInt32
    display : UInt32
    event : UInt8
    padding1 : UInt8
    padding2 : UInt8
    padding3 : UInt8
    data1 : Int32
  end

  struct WindowEvent
    type : UInt32
    timestamp : UInt32
    window_id : UInt32
    event : UInt8
    padding1 : UInt8
    padding2 : UInt8
    padding3 : UInt8
    data1 : Int32
    data2 : Int32
  end

  struct KeyboardEvent
    type : UInt32
    timestamp : UInt32
    window_id : UInt32
    state : UInt8
    repeat : UInt8
    padding2 : UInt8
    padding3 : UInt8
    keysym : Keysym
  end

  struct TextEditingEvent
    type : UInt32
    timestamp : UInt32
    window_id : UInt32
    text : LibC::Char[TEXTEDITINGEVENT_TEXT_SIZE]
    start_point : Int32
    length : Int32
  end

  struct TextEditingExtEvent
    type : UInt32
    timestamp : UInt32
    window_id : UInt32
    text : LibC::Char*
    start_point : Int32
    length : Int32
  end

  struct TextInputEvent
    type : UInt32
    timestamp : UInt32
    window_id : UInt32
    text : LibC::Char[TEXTINPUTEVENT_TEXT_SIZE]
  end

  struct MouseMotionEvent
    type : UInt32
    timestamp : UInt32
    window_id : UInt32
    which : UInt32
    state : UInt32
    x : Int32
    y : Int32
    xrel : Int32
    yrel : Int32
  end

  struct MouseButtonEvent
    type : UInt32
    timestamp : UInt32
    window_id : UInt32
    which : UInt32
    button : UInt8
    state : UInt8
    clicks : UInt8
    padding1 : UInt8
    x : Int32
    y : Int32
  end

  struct MouseWheelEvent
    type : UInt32
    timestamp : UInt32
    window_id : UInt32
    which : UInt32
    x : Int32
    y : Int32
    direction : UInt32
    precise_x : LibC::Float
    precise_y : LibC::Float
  end

  struct JoyAxisEvent
    type : UInt32
    timestamp : UInt32
    which : JoystickID
    axis : UInt8
    padding1 : UInt8
    padding2 : UInt8
    padding3 : UInt8
    value : Int16
    padding4 : UInt16
  end

  struct JoyBallEvent
    type : UInt32
    timestamp : UInt32
    which : JoystickID
    ball : UInt8
    padding1 : UInt8
    padding2 : UInt8
    padding3 : UInt8
    xrel : Int16
    yrel : Int16
  end

  struct JoyHatEvent
    type : UInt32
    timestamp : UInt32
    which : JoystickID
    hat : UInt8
    value : UInt8
    padding1 : UInt8
    padding2 : UInt8
  end

  struct JoyButtonEvent
    type : UInt32
    timestamp : UInt32
    which : JoystickID
    button : UInt8
    state : UInt8
    padding1 : UInt8
    padding2 : UInt8
  end

  struct JoyDeviceEvent
    type : UInt32
    timestamp : UInt32
    which : Int32
  end

  struct JoyBatteryEvent
    type : UInt32
    timestamp : UInt32
    which : JoystickID
    level : JoystickPowerLevel
  end

  struct ControllerAxisEvent
    type : UInt32
    timestamp : UInt32
    which : JoystickID
    axis : UInt8
    padding1 : UInt8
    padding2 : UInt8
    padding3 : UInt8
    value : Int16
    padding4 : UInt16
  end

  struct ControllerButtonEvent
    type : UInt32
    timestamp : UInt32
    which : JoystickID
    button : UInt8
    state : UInt8
    padding1 : UInt8
    padding2 : UInt8
  end

  struct ControllerDeviceEvent
    type : UInt32
    timestamp : UInt32
    which : Int32
  end

  struct ControllerTouchpadEvent
    type : UInt32
    timestamp : UInt32
    which : JoystickID
    touchpad : Int32
    finger : Int32
    x : LibC::Float
    y : LibC::Float
    pressure : LibC::Float
  end

  struct ControllerSensorEvent
    type : UInt32
    timestamp : UInt32
    which : JoystickID
    sensor : Int32
    data : LibC::Float[3]
  end

  struct AudioDeviceEvent
    type : UInt32
    timestamp : UInt32
    which : UInt32
    iscapture : UInt8
    padding1 : UInt8
    padding2 : UInt8
    padding3 : UInt8
  end

  struct TouchFingerEvent
    type : UInt32
    timestamp : UInt32
    touch_id : TouchID
    finger_id : FingerID
    x : LibC::Float
    y : LibC::Float
    dx : LibC::Float
    dy : LibC::Float
    pressure : LibC::Float
    window_id : UInt32
  end

  struct MultiGestureEvent
    type : UInt32
    timestamp : UInt32
    touch_id : TouchID
    d_theta : LibC::Float
    d_dist : LibC::Float
    x : LibC::Float
    y : LibC::Float
    num_fingers : UInt16
    padding : UInt16
  end

  struct DollarGestureEvent
    type : UInt32
    timestamp : UInt32
    touch_id : TouchID
    gesture_id : GestureID
    num_fingers : UInt32
    error : LibC::Float
    x : LibC::Float
    y : LibC::Float
  end

  struct DropEvent
    type : UInt32
    timestamp : UInt32
    file : LibC::Char*
    window_id : UInt32
  end

  struct SensorEvent
    type : UInt32
    timestamp : UInt32
    which : Int32
    data : LibC::Float[6]
  end

  struct QuitEvent
    type : UInt32
    timestamp : UInt32
  end

  struct OSEvent
    type : UInt32
    timestamp : UInt32
  end

  struct UserEvent
    type : UInt32
    timestamp : UInt32
    window_id : UInt32
    code : Int32
    data1 : Void*
    data2 : Void*
  end

  struct SysWMEvent
    type : UInt32
    timestamp : UInt32
    msg : SysWMmsg*
  end

  fun pump_events = SDL_PumpEvents() : Void
  fun peep_events = SDL_PeepEvents(events : Event*, numevents : LibC::Int, action : Eventaction, min_type : UInt32, max_type : UInt32) : LibC::Int
  fun has_event = SDL_HasEvent(type : UInt32) : SBool
  fun has_events = SDL_HasEvents(min_type : UInt32, max_type : UInt32) : SBool
  fun flush_event = SDL_FlushEvent(type : UInt32) : Void
  fun flush_events = SDL_FlushEvents(min_type : UInt32, max_type : UInt32) : Void
  fun poll_event = SDL_PollEvent(event : Event*) : LibC::Int
  fun wait_event = SDL_WaitEvent(event : Event*) : LibC::Int
  fun wait_event_timeout = SDL_WaitEventTimeout(event : Event*, timeout : LibC::Int) : LibC::Int
  fun push_event = SDL_PushEvent(event : Event*) : LibC::Int
  fun set_event_filter = SDL_SetEventFilter(filter : EventFilter, userdata : Void*) : Void
  fun get_event_filter = SDL_GetEventFilter(filter : EventFilter*, userdata : Void**) : SBool
  fun add_event_watch = SDL_AddEventWatch(filter : EventFilter, userdata : Void*) : Void
  fun del_event_watch = SDL_DelEventWatch(filter : EventFilter, userdata : Void*) : Void
  fun filter_events = SDL_FilterEvents(filter : EventFilter, userdata : Void*) : Void
  fun event_state = SDL_EventState(type : UInt32, state : LibC::Int) : UInt8
  fun register_events = SDL_RegisterEvents(numevents : LibC::Int) : UInt32

  # SDL_filesystem

  fun get_base_path = SDL_GetBasePath() : LibC::Char*
  fun get_pref_path = SDL_GetPrefPath(org : LibC::Char*, app : LibC::Char*) : LibC::Char*

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

  alias GameController = Void

  enum GameControllerType
    CONTROLLER_TYPE_UNKNOWN = 0
    CONTROLLER_TYPE_XBOX360
    CONTROLLER_TYPE_XBOXONE
    CONTROLLER_TYPE_PS3
    CONTROLLER_TYPE_PS4
    CONTROLLER_TYPE_NINTENDO_SWITCH_PRO
    CONTROLLER_TYPE_VIRTUAL
    CONTROLLER_TYPE_PS5
    CONTROLLER_TYPE_AMAZON_LUNA
    CONTROLLER_TYPE_GOOGLE_STADIA
    CONTROLLER_TYPE_NVIDIA_SHIELD
    CONTROLLER_TYPE_NINTENDO_SWITCH_JOYCON_LEFT
    CONTROLLER_TYPE_NINTENDO_SWITCH_JOYCON_RIGHT
    CONTROLLER_TYPE_NINTENDO_SWITCH_JOYCON_PAIR
  end

  enum GameControllerBindType
    CONTROLLER_BINDTYPE_NONE = 0
    CONTROLLER_BINDTYPE_BUTTON
    CONTROLLER_BINDTYPE_AXIS
    CONTROLLER_BINDTYPE_HAT
  end

  enum GameControllerAxis
    CONTROLLER_AXIS_INVALID = -1
    CONTROLLER_AXIS_LEFTX
    CONTROLLER_AXIS_LEFTY
    CONTROLLER_AXIS_RIGHTX
    CONTROLLER_AXIS_RIGHTY
    CONTROLLER_AXIS_TRIGGERLEFT
    CONTROLLER_AXIS_TRIGGERRIGHT
    CONTROLLER_AXIS_MAX
  end

  enum GameControllerButton
    CONTROLLER_BUTTON_INVALID = -1
    CONTROLLER_BUTTON_A
    CONTROLLER_BUTTON_B
    CONTROLLER_BUTTON_X
    CONTROLLER_BUTTON_Y
    CONTROLLER_BUTTON_BACK
    CONTROLLER_BUTTON_GUIDE
    CONTROLLER_BUTTON_START
    CONTROLLER_BUTTON_LEFTSTICK
    CONTROLLER_BUTTON_RIGHTSTICK
    CONTROLLER_BUTTON_LEFTSHOULDER
    CONTROLLER_BUTTON_RIGHTSHOULDER
    CONTROLLER_BUTTON_DPAD_UP
    CONTROLLER_BUTTON_DPAD_DOWN
    CONTROLLER_BUTTON_DPAD_LEFT
    CONTROLLER_BUTTON_DPAD_RIGHT
    CONTROLLER_BUTTON_MISC1
    CONTROLLER_BUTTON_PADDLE1
    CONTROLLER_BUTTON_PADDLE2
    CONTROLLER_BUTTON_PADDLE3
    CONTROLLER_BUTTON_PADDLE4
    CONTROLLER_BUTTON_TOUCHPAD
    CONTROLLER_BUTTON_MAX
  end

  fun game_controller_add_mappings_from_rw = SDL_GameControllerAddMappingsFromRW(rw : RWops*, freerw : LibC::Int) : LibC::Int
  fun game_controller_add_mapping = SDL_GameControllerAddMapping(mapping_string : LibC::Char*) : LibC::Int
  fun game_controller_num_mappings = SDL_GameControllerNumMappings() : LibC::Int
  fun game_controller_mapping_for_index = SDL_GameControllerMappingForIndex(mapping_index : LibC::Int) : LibC::Char*
  fun game_controller_mapping_for_guid = SDL_GameControllerMappingForGUID(guid : JoystickGUID) : LibC::Char*
  fun game_controller_mapping = SDL_GameControllerMapping(gamecontroller : GameController*) : LibC::Char*
  fun is_game_controller = SDL_IsGameController(joystick_index : LibC::Int) : SBool
  fun game_controller_name_for_index = SDL_GameControllerNameForIndex(joystick_index : LibC::Int) : LibC::Char*
  fun game_controller_path_for_index = SDL_GameControllerPathForIndex(joystick_index : LibC::Int) : LibC::Char*
  fun game_controller_type_for_index = SDL_GameControllerTypeForIndex(joystick_index : LibC::Int) : GameControllerType
  fun game_controller_mapping_for_device_index = SDL_GameControllerMappingForDeviceIndex(joystick_index : LibC::Int) : LibC::Char*
  fun game_controller_open = SDL_GameControllerOpen(joystick_index : LibC::Int) : GameController*
  fun game_controller_from_instance_id = SDL_GameControllerFromInstanceID(joyid : JoystickID) : GameController*
  fun game_controller_from_player_index = SDL_GameControllerFromPlayerIndex(player_index : LibC::Int) : GameController*
  fun game_controller_name = SDL_GameControllerName(gamecontroller : GameController*) : LibC::Char*
  fun game_controller_path = SDL_GameControllerPath(gamecontroller : GameController*) : LibC::Char*
  fun game_controller_get_type = SDL_GameControllerGetType(gamecontroller : GameController*) : GameControllerType
  fun game_controller_get_player_index = SDL_GameControllerGetPlayerIndex(gamecontroller : GameController*) : LibC::Int
  fun game_controller_set_player_index = SDL_GameControllerSetPlayerIndex(gamecontroller : GameController*, player_index : LibC::Int) : Void
  fun game_controller_get_vendor = SDL_GameControllerGetVendor(gamecontroller : GameController*) : UInt16
  fun game_controller_get_product = SDL_GameControllerGetProduct(gamecontroller : GameController*) : UInt16
  fun game_controller_get_product_version = SDL_GameControllerGetProductVersion(gamecontroller : GameController*) : UInt16
  fun game_controller_get_firmware_version = SDL_GameControllerGetFirmwareVersion(gamecontroller : GameController*) : UInt16
  fun game_controller_get_serial = SDL_GameControllerGetSerial(gamecontroller : GameController*) : LibC::Char*
  fun game_controller_get_attached = SDL_GameControllerGetAttached(gamecontroller : GameController*) : SBool
  fun game_controller_get_joystick = SDL_GameControllerGetJoystick(gamecontroller : GameController*) : Joystick*
  fun game_controller_event_state = SDL_GameControllerEventState(state : LibC::Int) : LibC::Int
  fun game_controller_update = SDL_GameControllerUpdate() : Void
  fun game_controller_get_axis_from_string = SDL_GameControllerGetAxisFromString(str : LibC::Char*) : GameControllerAxis
  fun game_controller_get_string_for_axis = SDL_GameControllerGetStringForAxis(axis : GameControllerAxis) : LibC::Char*
  fun game_controller_get_bind_for_axis = SDL_GameControllerGetBindForAxis(gamecontroller : GameController*, axis : GameControllerAxis) : GameControllerButtonBind
  fun game_controller_has_axis = SDL_GameControllerHasAxis(gamecontroller : GameController*, axis : GameControllerAxis) : SBool
  fun game_controller_get_axis = SDL_GameControllerGetAxis(gamecontroller : GameController*, axis : GameControllerAxis) : Int16
  fun game_controller_get_button_from_string = SDL_GameControllerGetButtonFromString(str : LibC::Char*) : GameControllerButton
  fun game_controller_get_string_for_button = SDL_GameControllerGetStringForButton(button : GameControllerButton) : LibC::Char*
  fun game_controller_get_bind_for_button = SDL_GameControllerGetBindForButton(gamecontroller : GameController*, button : GameControllerButton) : GameControllerButtonBind
  fun game_controller_has_button = SDL_GameControllerHasButton(gamecontroller : GameController*, button : GameControllerButton) : SBool
  fun game_controller_get_button = SDL_GameControllerGetButton(gamecontroller : GameController*, button : GameControllerButton) : UInt8
  fun game_controller_get_num_touchpads = SDL_GameControllerGetNumTouchpads(gamecontroller : GameController*) : LibC::Int
  fun game_controller_get_num_touchpad_fingers = SDL_GameControllerGetNumTouchpadFingers(gamecontroller : GameController*, touchpad : LibC::Int) : LibC::Int
  fun game_controller_get_touchpad_finger = SDL_GameControllerGetTouchpadFinger(gamecontroller : GameController*, touchpad : LibC::Int, finger : LibC::Int, state : UInt8*, x : LibC::Float*, y : LibC::Float*, pressure : LibC::Float*) : LibC::Int
  fun game_controller_has_sensor = SDL_GameControllerHasSensor(gamecontroller : GameController*, type : SensorType) : SBool
  fun game_controller_set_sensor_enabled = SDL_GameControllerSetSensorEnabled(gamecontroller : GameController*, type : SensorType, enabled : SBool) : LibC::Int
  fun game_controller_is_sensor_enabled = SDL_GameControllerIsSensorEnabled(gamecontroller : GameController*, type : SensorType) : SBool
  fun game_controller_get_sensor_data_rate = SDL_GameControllerGetSensorDataRate(gamecontroller : GameController*, type : SensorType) : LibC::Float
  fun game_controller_get_sensor_data = SDL_GameControllerGetSensorData(gamecontroller : GameController*, type : SensorType, data : LibC::Float*, num_values : LibC::Int) : LibC::Int
  fun game_controller_rumble = SDL_GameControllerRumble(gamecontroller : GameController*, low_frequency_rumble : UInt16, high_frequency_rumble : UInt16, duration_ms : UInt32) : LibC::Int
  fun game_controller_rumble_triggers = SDL_GameControllerRumbleTriggers(gamecontroller : GameController*, left_rumble : UInt16, right_rumble : UInt16, duration_ms : UInt32) : LibC::Int
  fun game_controller_has_led = SDL_GameControllerHasLED(gamecontroller : GameController*) : SBool
  fun game_controller_has_rumble = SDL_GameControllerHasRumble(gamecontroller : GameController*) : SBool
  fun game_controller_has_rumble_triggers = SDL_GameControllerHasRumbleTriggers(gamecontroller : GameController*) : SBool
  fun game_controller_set_led = SDL_GameControllerSetLED(gamecontroller : GameController*, red : UInt8, green : UInt8, blue : UInt8) : LibC::Int
  fun game_controller_send_effect = SDL_GameControllerSendEffect(gamecontroller : GameController*, data : Void*, size : LibC::Int) : LibC::Int
  fun game_controller_close = SDL_GameControllerClose(gamecontroller : GameController*) : Void
  fun game_controller_get_apple_sfsymbols_name_for_button = SDL_GameControllerGetAppleSFSymbolsNameForButton(gamecontroller : GameController*, button : GameControllerButton) : LibC::Char*
  fun game_controller_get_apple_sfsymbols_name_for_axis = SDL_GameControllerGetAppleSFSymbolsNameForAxis(gamecontroller : GameController*, axis : GameControllerAxis) : LibC::Char*

  # SDL_gesture

  alias GestureID = Int64

  fun record_gesture = SDL_RecordGesture(touch_id : TouchID) : LibC::Int
  fun save_all_dollar_templates = SDL_SaveAllDollarTemplates(dst : RWops*) : LibC::Int
  fun save_dollar_template = SDL_SaveDollarTemplate(gesture_id : GestureID, dst : RWops*) : LibC::Int
  fun load_dollar_templates = SDL_LoadDollarTemplates(touch_id : TouchID, src : RWops*) : LibC::Int

  # SDL_guid

  struct GUID
    data : UInt8[16]
  end

  fun guidto_string = SDL_GUIDToString(guid : GUID, psz_guid : LibC::Char*, cb_guid : LibC::Int) : Void
  fun guidfrom_string = SDL_GUIDFromString(pch_guid : LibC::Char*) : GUID

  # SDL_haptic

  HAPTIC_CONSTANT = (1 << 0)
  HAPTIC_SINE = (1 << 1)
  HAPTIC_LEFTRIGHT = (1 << 2)
  HAPTIC_TRIANGLE = (1 << 3)
  HAPTIC_SAWTOOTHUP = (1 << 4)
  HAPTIC_SAWTOOTHDOWN = (1 << 5)
  HAPTIC_RAMP = (1 << 6)
  HAPTIC_SPRING = (1 << 7)
  HAPTIC_DAMPER = (1 << 8)
  HAPTIC_INERTIA = (1 << 9)
  HAPTIC_FRICTION = (1 << 10)
  HAPTIC_CUSTOM = (1 << 11)
  HAPTIC_GAIN = (1 << 12)
  HAPTIC_AUTOCENTER = (1 << 13)
  HAPTIC_STATUS = (1 << 14)
  HAPTIC_PAUSE = (1 << 15)
  HAPTIC_POLAR = 0
  HAPTIC_CARTESIAN = 1
  HAPTIC_SPHERICAL = 2
  HAPTIC_STEERING_AXIS = 3
  HAPTIC_INFINITY = 4294967295

  alias Haptic = Void

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

  fun num_haptics = SDL_NumHaptics() : LibC::Int
  fun haptic_name = SDL_HapticName(device_index : LibC::Int) : LibC::Char*
  fun haptic_open = SDL_HapticOpen(device_index : LibC::Int) : Haptic*
  fun haptic_opened = SDL_HapticOpened(device_index : LibC::Int) : LibC::Int
  fun haptic_index = SDL_HapticIndex(haptic : Haptic*) : LibC::Int
  fun mouse_is_haptic = SDL_MouseIsHaptic() : LibC::Int
  fun haptic_open_from_mouse = SDL_HapticOpenFromMouse() : Haptic*
  fun joystick_is_haptic = SDL_JoystickIsHaptic(joystick : Joystick*) : LibC::Int
  fun haptic_open_from_joystick = SDL_HapticOpenFromJoystick(joystick : Joystick*) : Haptic*
  fun haptic_close = SDL_HapticClose(haptic : Haptic*) : Void
  fun haptic_num_effects = SDL_HapticNumEffects(haptic : Haptic*) : LibC::Int
  fun haptic_num_effects_playing = SDL_HapticNumEffectsPlaying(haptic : Haptic*) : LibC::Int
  fun haptic_query = SDL_HapticQuery(haptic : Haptic*) : LibC::Int
  fun haptic_num_axes = SDL_HapticNumAxes(haptic : Haptic*) : LibC::Int
  fun haptic_effect_supported = SDL_HapticEffectSupported(haptic : Haptic*, effect : HapticEffect*) : LibC::Int
  fun haptic_new_effect = SDL_HapticNewEffect(haptic : Haptic*, effect : HapticEffect*) : LibC::Int
  fun haptic_update_effect = SDL_HapticUpdateEffect(haptic : Haptic*, effect : LibC::Int, data : HapticEffect*) : LibC::Int
  fun haptic_run_effect = SDL_HapticRunEffect(haptic : Haptic*, effect : LibC::Int, iterations : UInt32) : LibC::Int
  fun haptic_stop_effect = SDL_HapticStopEffect(haptic : Haptic*, effect : LibC::Int) : LibC::Int
  fun haptic_destroy_effect = SDL_HapticDestroyEffect(haptic : Haptic*, effect : LibC::Int) : Void
  fun haptic_get_effect_status = SDL_HapticGetEffectStatus(haptic : Haptic*, effect : LibC::Int) : LibC::Int
  fun haptic_set_gain = SDL_HapticSetGain(haptic : Haptic*, gain : LibC::Int) : LibC::Int
  fun haptic_set_autocenter = SDL_HapticSetAutocenter(haptic : Haptic*, autocenter : LibC::Int) : LibC::Int
  fun haptic_pause = SDL_HapticPause(haptic : Haptic*) : LibC::Int
  fun haptic_unpause = SDL_HapticUnpause(haptic : Haptic*) : LibC::Int
  fun haptic_stop_all = SDL_HapticStopAll(haptic : Haptic*) : LibC::Int
  fun haptic_rumble_supported = SDL_HapticRumbleSupported(haptic : Haptic*) : LibC::Int
  fun haptic_rumble_init = SDL_HapticRumbleInit(haptic : Haptic*) : LibC::Int
  fun haptic_rumble_play = SDL_HapticRumblePlay(haptic : Haptic*, strength : LibC::Float, length : UInt32) : LibC::Int
  fun haptic_rumble_stop = SDL_HapticRumbleStop(haptic : Haptic*) : LibC::Int

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

  HINT_ACCELEROMETER_AS_JOYSTICK = "ACCELEROMETER_AS_JOYSTICK"
  HINT_ALLOW_ALT_TAB_WHILE_GRABBED = "ALLOW_ALT_TAB_WHILE_GRABBED"
  HINT_ALLOW_TOPMOST = "ALLOW_TOPMOST"
  HINT_ANDROID_APK_EXPANSION_MAIN_FILE_VERSION = "ANDROID_APK_EXPANSION_MAIN_FILE_VERSION"
  HINT_ANDROID_APK_EXPANSION_PATCH_FILE_VERSION = "ANDROID_APK_EXPANSION_PATCH_FILE_VERSION"
  HINT_ANDROID_BLOCK_ON_PAUSE = "ANDROID_BLOCK_ON_PAUSE"
  HINT_ANDROID_BLOCK_ON_PAUSE_PAUSEAUDIO = "ANDROID_BLOCK_ON_PAUSE_PAUSEAUDIO"
  HINT_ANDROID_TRAP_BACK_BUTTON = "ANDROID_TRAP_BACK_BUTTON"
  HINT_APP_NAME = "APP_NAME"
  HINT_APPLE_TV_CONTROLLER_UI_EVENTS = "APPLE_TV_CONTROLLER_UI_EVENTS"
  HINT_APPLE_TV_REMOTE_ALLOW_ROTATION = "APPLE_TV_REMOTE_ALLOW_ROTATION"
  HINT_AUDIO_CATEGORY = "AUDIO_CATEGORY"
  HINT_AUDIO_DEVICE_APP_NAME = "AUDIO_DEVICE_APP_NAME"
  HINT_AUDIO_DEVICE_STREAM_NAME = "AUDIO_DEVICE_STREAM_NAME"
  HINT_AUDIO_DEVICE_STREAM_ROLE = "AUDIO_DEVICE_STREAM_ROLE"
  HINT_AUDIO_RESAMPLING_MODE = "AUDIO_RESAMPLING_MODE"
  HINT_AUTO_UPDATE_JOYSTICKS = "AUTO_UPDATE_JOYSTICKS"
  HINT_AUTO_UPDATE_SENSORS = "AUTO_UPDATE_SENSORS"
  HINT_BMP_SAVE_LEGACY_FORMAT = "BMP_SAVE_LEGACY_FORMAT"
  HINT_DISPLAY_USABLE_BOUNDS = "DISPLAY_USABLE_BOUNDS"
  HINT_EMSCRIPTEN_ASYNCIFY = "EMSCRIPTEN_ASYNCIFY"
  HINT_EMSCRIPTEN_KEYBOARD_ELEMENT = "EMSCRIPTEN_KEYBOARD_ELEMENT"
  HINT_ENABLE_STEAM_CONTROLLERS = "ENABLE_STEAM_CONTROLLERS"
  HINT_EVENT_LOGGING = "EVENT_LOGGING"
  HINT_FORCE_RAISEWINDOW = "HINT_FORCE_RAISEWINDOW"
  HINT_FRAMEBUFFER_ACCELERATION = "FRAMEBUFFER_ACCELERATION"
  HINT_GAMECONTROLLERCONFIG = "GAMECONTROLLERCONFIG"
  HINT_GAMECONTROLLERCONFIG_FILE = "GAMECONTROLLERCONFIG_FILE"
  HINT_GAMECONTROLLERTYPE = "GAMECONTROLLERTYPE"
  HINT_GAMECONTROLLER_IGNORE_DEVICES = "GAMECONTROLLER_IGNORE_DEVICES"
  HINT_GAMECONTROLLER_IGNORE_DEVICES_EXCEPT = "GAMECONTROLLER_IGNORE_DEVICES_EXCEPT"
  HINT_GAMECONTROLLER_USE_BUTTON_LABELS = "GAMECONTROLLER_USE_BUTTON_LABELS"
  HINT_GRAB_KEYBOARD = "GRAB_KEYBOARD"
  HINT_IDLE_TIMER_DISABLED = "IOS_IDLE_TIMER_DISABLED"
  HINT_IME_INTERNAL_EDITING = "IME_INTERNAL_EDITING"
  HINT_IME_SHOW_UI = "IME_SHOW_UI"
  HINT_IME_SUPPORT_EXTENDED_TEXT = "IME_SUPPORT_EXTENDED_TEXT"
  HINT_IOS_HIDE_HOME_INDICATOR = "IOS_HIDE_HOME_INDICATOR"
  HINT_JOYSTICK_ALLOW_BACKGROUND_EVENTS = "JOYSTICK_ALLOW_BACKGROUND_EVENTS"
  HINT_JOYSTICK_HIDAPI = "JOYSTICK_HIDAPI"
  HINT_JOYSTICK_HIDAPI_GAMECUBE = "JOYSTICK_HIDAPI_GAMECUBE"
  HINT_JOYSTICK_GAMECUBE_RUMBLE_BRAKE = "JOYSTICK_GAMECUBE_RUMBLE_BRAKE"
  HINT_JOYSTICK_HIDAPI_JOY_CONS = "JOYSTICK_HIDAPI_JOY_CONS"
  HINT_JOYSTICK_HIDAPI_COMBINE_JOY_CONS = "JOYSTICK_HIDAPI_COMBINE_JOY_CONS"
  HINT_JOYSTICK_HIDAPI_LUNA = "JOYSTICK_HIDAPI_LUNA"
  HINT_JOYSTICK_HIDAPI_NINTENDO_CLASSIC = "JOYSTICK_HIDAPI_NINTENDO_CLASSIC"
  HINT_JOYSTICK_HIDAPI_SHIELD = "JOYSTICK_HIDAPI_SHIELD"
  HINT_JOYSTICK_HIDAPI_PS3 = "JOYSTICK_HIDAPI_PS3"
  HINT_JOYSTICK_HIDAPI_PS4 = "JOYSTICK_HIDAPI_PS4"
  HINT_JOYSTICK_HIDAPI_PS4_RUMBLE = "JOYSTICK_HIDAPI_PS4_RUMBLE"
  HINT_JOYSTICK_HIDAPI_PS5 = "JOYSTICK_HIDAPI_PS5"
  HINT_JOYSTICK_HIDAPI_PS5_PLAYER_LED = "JOYSTICK_HIDAPI_PS5_PLAYER_LED"
  HINT_JOYSTICK_HIDAPI_PS5_RUMBLE = "JOYSTICK_HIDAPI_PS5_RUMBLE"
  HINT_JOYSTICK_HIDAPI_STADIA = "JOYSTICK_HIDAPI_STADIA"
  HINT_JOYSTICK_HIDAPI_STEAM = "JOYSTICK_HIDAPI_STEAM"
  HINT_JOYSTICK_HIDAPI_SWITCH = "JOYSTICK_HIDAPI_SWITCH"
  HINT_JOYSTICK_HIDAPI_SWITCH_HOME_LED = "JOYSTICK_HIDAPI_SWITCH_HOME_LED"
  HINT_JOYSTICK_HIDAPI_JOYCON_HOME_LED = "JOYSTICK_HIDAPI_JOYCON_HOME_LED"
  HINT_JOYSTICK_HIDAPI_SWITCH_PLAYER_LED = "JOYSTICK_HIDAPI_SWITCH_PLAYER_LED"
  HINT_JOYSTICK_HIDAPI_WII = "JOYSTICK_HIDAPI_WII"
  HINT_JOYSTICK_HIDAPI_WII_PLAYER_LED = "JOYSTICK_HIDAPI_WII_PLAYER_LED"
  HINT_JOYSTICK_HIDAPI_XBOX = "JOYSTICK_HIDAPI_XBOX"
  HINT_JOYSTICK_HIDAPI_XBOX_360 = "JOYSTICK_HIDAPI_XBOX_360"
  HINT_JOYSTICK_HIDAPI_XBOX_360_PLAYER_LED = "JOYSTICK_HIDAPI_XBOX_360_PLAYER_LED"
  HINT_JOYSTICK_HIDAPI_XBOX_360_WIRELESS = "JOYSTICK_HIDAPI_XBOX_360_WIRELESS"
  HINT_JOYSTICK_HIDAPI_XBOX_ONE = "JOYSTICK_HIDAPI_XBOX_ONE"
  HINT_JOYSTICK_RAWINPUT = "JOYSTICK_RAWINPUT"
  HINT_JOYSTICK_RAWINPUT_CORRELATE_XINPUT = "JOYSTICK_RAWINPUT_CORRELATE_XINPUT"
  HINT_JOYSTICK_ROG_CHAKRAM = "JOYSTICK_ROG_CHAKRAM"
  HINT_JOYSTICK_THREAD = "JOYSTICK_THREAD"
  HINT_KMSDRM_REQUIRE_DRM_MASTER = "KMSDRM_REQUIRE_DRM_MASTER"
  HINT_JOYSTICK_DEVICE = "JOYSTICK_DEVICE"
  HINT_LINUX_DIGITAL_HATS = "LINUX_DIGITAL_HATS"
  HINT_LINUX_HAT_DEADZONES = "LINUX_HAT_DEADZONES"
  HINT_LINUX_JOYSTICK_CLASSIC = "LINUX_JOYSTICK_CLASSIC"
  HINT_LINUX_JOYSTICK_DEADZONES = "LINUX_JOYSTICK_DEADZONES"
  HINT_MAC_BACKGROUND_APP = "MAC_BACKGROUND_APP"
  HINT_MAC_CTRL_CLICK_EMULATE_RIGHT_CLICK = "MAC_CTRL_CLICK_EMULATE_RIGHT_CLICK"
  HINT_MAC_OPENGL_ASYNC_DISPATCH = "MAC_OPENGL_ASYNC_DISPATCH"
  HINT_MOUSE_DOUBLE_CLICK_RADIUS = "MOUSE_DOUBLE_CLICK_RADIUS"
  HINT_MOUSE_DOUBLE_CLICK_TIME = "MOUSE_DOUBLE_CLICK_TIME"
  HINT_MOUSE_FOCUS_CLICKTHROUGH = "MOUSE_FOCUS_CLICKTHROUGH"
  HINT_MOUSE_NORMAL_SPEED_SCALE = "MOUSE_NORMAL_SPEED_SCALE"
  HINT_MOUSE_RELATIVE_MODE_CENTER = "MOUSE_RELATIVE_MODE_CENTER"
  HINT_MOUSE_RELATIVE_MODE_WARP = "MOUSE_RELATIVE_MODE_WARP"
  HINT_MOUSE_RELATIVE_SCALING = "MOUSE_RELATIVE_SCALING"
  HINT_MOUSE_RELATIVE_SPEED_SCALE = "MOUSE_RELATIVE_SPEED_SCALE"
  HINT_MOUSE_RELATIVE_SYSTEM_SCALE = "MOUSE_RELATIVE_SYSTEM_SCALE"
  HINT_MOUSE_RELATIVE_WARP_MOTION = "MOUSE_RELATIVE_WARP_MOTION"
  HINT_MOUSE_TOUCH_EVENTS = "MOUSE_TOUCH_EVENTS"
  HINT_MOUSE_AUTO_CAPTURE = "MOUSE_AUTO_CAPTURE"
  HINT_NO_SIGNAL_HANDLERS = "NO_SIGNAL_HANDLERS"
  HINT_OPENGL_ES_DRIVER = "OPENGL_ES_DRIVER"
  HINT_ORIENTATIONS = "IOS_ORIENTATIONS"
  HINT_POLL_SENTINEL = "POLL_SENTINEL"
  HINT_PREFERRED_LOCALES = "PREFERRED_LOCALES"
  HINT_QTWAYLAND_CONTENT_ORIENTATION = "QTWAYLAND_CONTENT_ORIENTATION"
  HINT_QTWAYLAND_WINDOW_FLAGS = "QTWAYLAND_WINDOW_FLAGS"
  HINT_RENDER_BATCHING = "RENDER_BATCHING"
  HINT_RENDER_LINE_METHOD = "RENDER_LINE_METHOD"
  HINT_RENDER_DIRECT3D11_DEBUG = "RENDER_DIRECT3D11_DEBUG"
  HINT_RENDER_DIRECT3D_THREADSAFE = "RENDER_DIRECT3D_THREADSAFE"
  HINT_RENDER_DRIVER = "RENDER_DRIVER"
  HINT_RENDER_LOGICAL_SIZE_MODE = "RENDER_LOGICAL_SIZE_MODE"
  HINT_RENDER_OPENGL_SHADERS = "RENDER_OPENGL_SHADERS"
  HINT_RENDER_SCALE_QUALITY = "RENDER_SCALE_QUALITY"
  HINT_RENDER_VSYNC = "RENDER_VSYNC"
  HINT_PS2_DYNAMIC_VSYNC = "PS2_DYNAMIC_VSYNC"
  HINT_RETURN_KEY_HIDES_IME = "RETURN_KEY_HIDES_IME"
  HINT_RPI_VIDEO_LAYER = "RPI_VIDEO_LAYER"
  HINT_SCREENSAVER_INHIBIT_ACTIVITY_NAME = "SCREENSAVER_INHIBIT_ACTIVITY_NAME"
  HINT_THREAD_FORCE_REALTIME_TIME_CRITICAL = "THREAD_FORCE_REALTIME_TIME_CRITICAL"
  HINT_THREAD_PRIORITY_POLICY = "THREAD_PRIORITY_POLICY"
  HINT_THREAD_STACK_SIZE = "THREAD_STACK_SIZE"
  HINT_TIMER_RESOLUTION = "TIMER_RESOLUTION"
  HINT_TOUCH_MOUSE_EVENTS = "TOUCH_MOUSE_EVENTS"
  HINT_VITA_TOUCH_MOUSE_DEVICE = "HINT_VITA_TOUCH_MOUSE_DEVICE"
  HINT_TV_REMOTE_AS_JOYSTICK = "TV_REMOTE_AS_JOYSTICK"
  HINT_VIDEO_ALLOW_SCREENSAVER = "VIDEO_ALLOW_SCREENSAVER"
  HINT_VIDEO_DOUBLE_BUFFER = "VIDEO_DOUBLE_BUFFER"
  HINT_VIDEO_EGL_ALLOW_TRANSPARENCY = "VIDEO_EGL_ALLOW_TRANSPARENCY"
  HINT_VIDEO_EXTERNAL_CONTEXT = "VIDEO_EXTERNAL_CONTEXT"
  HINT_VIDEO_HIGHDPI_DISABLED = "VIDEO_HIGHDPI_DISABLED"
  HINT_VIDEO_MAC_FULLSCREEN_SPACES = "VIDEO_MAC_FULLSCREEN_SPACES"
  HINT_VIDEO_MINIMIZE_ON_FOCUS_LOSS = "VIDEO_MINIMIZE_ON_FOCUS_LOSS"
  HINT_VIDEO_WAYLAND_ALLOW_LIBDECOR = "VIDEO_WAYLAND_ALLOW_LIBDECOR"
  HINT_VIDEO_WAYLAND_PREFER_LIBDECOR = "VIDEO_WAYLAND_PREFER_LIBDECOR"
  HINT_VIDEO_WAYLAND_MODE_EMULATION = "VIDEO_WAYLAND_MODE_EMULATION"
  HINT_VIDEO_WINDOW_SHARE_PIXEL_FORMAT = "VIDEO_WINDOW_SHARE_PIXEL_FORMAT"
  HINT_VIDEO_FOREIGN_WINDOW_OPENGL = "VIDEO_FOREIGN_WINDOW_OPENGL"
  HINT_VIDEO_FOREIGN_WINDOW_VULKAN = "VIDEO_FOREIGN_WINDOW_VULKAN"
  HINT_VIDEO_WIN_D3DCOMPILER = "VIDEO_WIN_D3DCOMPILER"
  HINT_VIDEO_X11_FORCE_EGL = "VIDEO_X11_FORCE_EGL"
  HINT_VIDEO_X11_NET_WM_BYPASS_COMPOSITOR = "VIDEO_X11_NET_WM_BYPASS_COMPOSITOR"
  HINT_VIDEO_X11_NET_WM_PING = "VIDEO_X11_NET_WM_PING"
  HINT_VIDEO_X11_WINDOW_VISUALID = "VIDEO_X11_WINDOW_VISUALID"
  HINT_VIDEO_X11_XINERAMA = "VIDEO_X11_XINERAMA"
  HINT_VIDEO_X11_XRANDR = "VIDEO_X11_XRANDR"
  HINT_VIDEO_X11_XVIDMODE = "VIDEO_X11_XVIDMODE"
  HINT_WAVE_FACT_CHUNK = "WAVE_FACT_CHUNK"
  HINT_WAVE_RIFF_CHUNK_SIZE = "WAVE_RIFF_CHUNK_SIZE"
  HINT_WAVE_TRUNCATION = "WAVE_TRUNCATION"
  HINT_WINDOWS_DISABLE_THREAD_NAMING = "WINDOWS_DISABLE_THREAD_NAMING"
  HINT_WINDOWS_ENABLE_MESSAGELOOP = "WINDOWS_ENABLE_MESSAGELOOP"
  HINT_WINDOWS_FORCE_MUTEX_CRITICAL_SECTIONS = "WINDOWS_FORCE_MUTEX_CRITICAL_SECTIONS"
  HINT_WINDOWS_FORCE_SEMAPHORE_KERNEL = "WINDOWS_FORCE_SEMAPHORE_KERNEL"
  HINT_WINDOWS_INTRESOURCE_ICON = "WINDOWS_INTRESOURCE_ICON"
  HINT_WINDOWS_INTRESOURCE_ICON_SMALL = "WINDOWS_INTRESOURCE_ICON_SMALL"
  HINT_WINDOWS_NO_CLOSE_ON_ALT_F4 = "WINDOWS_NO_CLOSE_ON_ALT_F4"
  HINT_WINDOWS_USE_D3D9EX = "WINDOWS_USE_D3D9EX"
  HINT_WINDOWS_DPI_AWARENESS = "WINDOWS_DPI_AWARENESS"
  HINT_WINDOWS_DPI_SCALING = "WINDOWS_DPI_SCALING"
  HINT_WINDOW_FRAME_USABLE_WHILE_CURSOR_HIDDEN = "WINDOW_FRAME_USABLE_WHILE_CURSOR_HIDDEN"
  HINT_WINDOW_NO_ACTIVATION_WHEN_SHOWN = "WINDOW_NO_ACTIVATION_WHEN_SHOWN"
  HINT_WINRT_HANDLE_BACK_BUTTON = "WINRT_HANDLE_BACK_BUTTON"
  HINT_WINRT_PRIVACY_POLICY_LABEL = "WINRT_PRIVACY_POLICY_LABEL"
  HINT_WINRT_PRIVACY_POLICY_URL = "WINRT_PRIVACY_POLICY_URL"
  HINT_X11_FORCE_OVERRIDE_REDIRECT = "X11_FORCE_OVERRIDE_REDIRECT"
  HINT_XINPUT_ENABLED = "XINPUT_ENABLED"
  HINT_DIRECTINPUT_ENABLED = "DIRECTINPUT_ENABLED"
  HINT_XINPUT_USE_OLD_JOYSTICK_MAPPING = "XINPUT_USE_OLD_JOYSTICK_MAPPING"
  HINT_AUDIO_INCLUDE_MONITORS = "AUDIO_INCLUDE_MONITORS"
  HINT_X11_WINDOW_TYPE = "X11_WINDOW_TYPE"
  HINT_QUIT_ON_LAST_WINDOW_CLOSE = "QUIT_ON_LAST_WINDOW_CLOSE"
  HINT_VIDEODRIVER = "VIDEODRIVER"
  HINT_AUDIODRIVER = "AUDIODRIVER"
  HINT_KMSDRM_DEVICE_INDEX = "KMSDRM_DEVICE_INDEX"
  HINT_TRACKPAD_IS_TOUCH_ONLY = "TRACKPAD_IS_TOUCH_ONLY"

  enum HintPriority
    HINT_DEFAULT
    HINT_NORMAL
    HINT_OVERRIDE
  end

  fun set_hint_with_priority = SDL_SetHintWithPriority(name : LibC::Char*, value : LibC::Char*, priority : HintPriority) : SBool
  fun set_hint = SDL_SetHint(name : LibC::Char*, value : LibC::Char*) : SBool
  fun reset_hint = SDL_ResetHint(name : LibC::Char*) : SBool
  fun get_hint = SDL_GetHint(name : LibC::Char*) : LibC::Char*
  fun get_hint_boolean = SDL_GetHintBoolean(name : LibC::Char*, default_value : SBool) : SBool
  fun add_hint_callback = SDL_AddHintCallback(name : LibC::Char*, callback : HintCallback, userdata : Void*) : Void
  fun del_hint_callback = SDL_DelHintCallback(name : LibC::Char*, callback : HintCallback, userdata : Void*) : Void
  fun clear_hints = SDL_ClearHints() : Void

  # additions/helper_hints.cr

  # (void* userdata, const char* name, const char* oldValue, const char* newValue)
  alias HintCallback = (Void*, LibC::Char*, LibC::Char*, LibC::Char*) -> Void

  # SDL_joystick

  IPHONE_MAX_GFORCE = 5.0
  VIRTUAL_JOYSTICK_DESC_VERSION = 1
  JOYSTICK_AXIS_MAX = 32767
  JOYSTICK_AXIS_MIN = -32768
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
  alias JoystickGUID = GUID
  alias JoystickID = Int32

  enum JoystickType
    JOYSTICK_TYPE_UNKNOWN
    JOYSTICK_TYPE_GAMECONTROLLER
    JOYSTICK_TYPE_WHEEL
    JOYSTICK_TYPE_ARCADE_STICK
    JOYSTICK_TYPE_FLIGHT_STICK
    JOYSTICK_TYPE_DANCE_PAD
    JOYSTICK_TYPE_GUITAR
    JOYSTICK_TYPE_DRUM_KIT
    JOYSTICK_TYPE_ARCADE_PAD
    JOYSTICK_TYPE_THROTTLE
  end

  enum JoystickPowerLevel
    JOYSTICK_POWER_UNKNOWN = -1
    JOYSTICK_POWER_EMPTY
    JOYSTICK_POWER_LOW
    JOYSTICK_POWER_MEDIUM
    JOYSTICK_POWER_FULL
    JOYSTICK_POWER_WIRED
    JOYSTICK_POWER_MAX
  end

  fun lock_joysticks = SDL_LockJoysticks() : Void
  fun unlock_joysticks = SDL_UnlockJoysticks() : Void
  fun num_joysticks = SDL_NumJoysticks() : LibC::Int
  fun joystick_name_for_index = SDL_JoystickNameForIndex(device_index : LibC::Int) : LibC::Char*
  fun joystick_path_for_index = SDL_JoystickPathForIndex(device_index : LibC::Int) : LibC::Char*
  fun joystick_get_device_player_index = SDL_JoystickGetDevicePlayerIndex(device_index : LibC::Int) : LibC::Int
  fun joystick_get_device_guid = SDL_JoystickGetDeviceGUID(device_index : LibC::Int) : JoystickGUID
  fun joystick_get_device_vendor = SDL_JoystickGetDeviceVendor(device_index : LibC::Int) : UInt16
  fun joystick_get_device_product = SDL_JoystickGetDeviceProduct(device_index : LibC::Int) : UInt16
  fun joystick_get_device_product_version = SDL_JoystickGetDeviceProductVersion(device_index : LibC::Int) : UInt16
  fun joystick_get_device_type = SDL_JoystickGetDeviceType(device_index : LibC::Int) : JoystickType
  fun joystick_get_device_instance_id = SDL_JoystickGetDeviceInstanceID(device_index : LibC::Int) : JoystickID
  fun joystick_open = SDL_JoystickOpen(device_index : LibC::Int) : Joystick*
  fun joystick_from_instance_id = SDL_JoystickFromInstanceID(instance_id : JoystickID) : Joystick*
  fun joystick_from_player_index = SDL_JoystickFromPlayerIndex(player_index : LibC::Int) : Joystick*
  fun joystick_attach_virtual = SDL_JoystickAttachVirtual(type : JoystickType, naxes : LibC::Int, nbuttons : LibC::Int, nhats : LibC::Int) : LibC::Int
  fun joystick_attach_virtual_ex = SDL_JoystickAttachVirtualEx(desc : VirtualJoystickDesc*) : LibC::Int
  fun joystick_detach_virtual = SDL_JoystickDetachVirtual(device_index : LibC::Int) : LibC::Int
  fun joystick_is_virtual = SDL_JoystickIsVirtual(device_index : LibC::Int) : SBool
  fun joystick_set_virtual_axis = SDL_JoystickSetVirtualAxis(joystick : Joystick*, axis : LibC::Int, value : Int16) : LibC::Int
  fun joystick_set_virtual_button = SDL_JoystickSetVirtualButton(joystick : Joystick*, button : LibC::Int, value : UInt8) : LibC::Int
  fun joystick_set_virtual_hat = SDL_JoystickSetVirtualHat(joystick : Joystick*, hat : LibC::Int, value : UInt8) : LibC::Int
  fun joystick_name = SDL_JoystickName(joystick : Joystick*) : LibC::Char*
  fun joystick_path = SDL_JoystickPath(joystick : Joystick*) : LibC::Char*
  fun joystick_get_player_index = SDL_JoystickGetPlayerIndex(joystick : Joystick*) : LibC::Int
  fun joystick_set_player_index = SDL_JoystickSetPlayerIndex(joystick : Joystick*, player_index : LibC::Int) : Void
  fun joystick_get_guid = SDL_JoystickGetGUID(joystick : Joystick*) : JoystickGUID
  fun joystick_get_vendor = SDL_JoystickGetVendor(joystick : Joystick*) : UInt16
  fun joystick_get_product = SDL_JoystickGetProduct(joystick : Joystick*) : UInt16
  fun joystick_get_product_version = SDL_JoystickGetProductVersion(joystick : Joystick*) : UInt16
  fun joystick_get_firmware_version = SDL_JoystickGetFirmwareVersion(joystick : Joystick*) : UInt16
  fun joystick_get_serial = SDL_JoystickGetSerial(joystick : Joystick*) : LibC::Char*
  fun joystick_get_type = SDL_JoystickGetType(joystick : Joystick*) : JoystickType
  fun joystick_get_guidstring = SDL_JoystickGetGUIDString(guid : JoystickGUID, psz_guid : LibC::Char*, cb_guid : LibC::Int) : Void
  fun joystick_get_guidfrom_string = SDL_JoystickGetGUIDFromString(pch_guid : LibC::Char*) : JoystickGUID
  fun get_joystick_guidinfo = SDL_GetJoystickGUIDInfo(guid : JoystickGUID, vendor : UInt16*, product : UInt16*, version : UInt16*, crc16 : UInt16*) : Void
  fun joystick_get_attached = SDL_JoystickGetAttached(joystick : Joystick*) : SBool
  fun joystick_instance_id = SDL_JoystickInstanceID(joystick : Joystick*) : JoystickID
  fun joystick_num_axes = SDL_JoystickNumAxes(joystick : Joystick*) : LibC::Int
  fun joystick_num_balls = SDL_JoystickNumBalls(joystick : Joystick*) : LibC::Int
  fun joystick_num_hats = SDL_JoystickNumHats(joystick : Joystick*) : LibC::Int
  fun joystick_num_buttons = SDL_JoystickNumButtons(joystick : Joystick*) : LibC::Int
  fun joystick_update = SDL_JoystickUpdate() : Void
  fun joystick_event_state = SDL_JoystickEventState(state : LibC::Int) : LibC::Int
  fun joystick_get_axis = SDL_JoystickGetAxis(joystick : Joystick*, axis : LibC::Int) : Int16
  fun joystick_get_axis_initial_state = SDL_JoystickGetAxisInitialState(joystick : Joystick*, axis : LibC::Int, state : Int16*) : SBool
  fun joystick_get_hat = SDL_JoystickGetHat(joystick : Joystick*, hat : LibC::Int) : UInt8
  fun joystick_get_ball = SDL_JoystickGetBall(joystick : Joystick*, ball : LibC::Int, dx : LibC::Int*, dy : LibC::Int*) : LibC::Int
  fun joystick_get_button = SDL_JoystickGetButton(joystick : Joystick*, button : LibC::Int) : UInt8
  fun joystick_rumble = SDL_JoystickRumble(joystick : Joystick*, low_frequency_rumble : UInt16, high_frequency_rumble : UInt16, duration_ms : UInt32) : LibC::Int
  fun joystick_rumble_triggers = SDL_JoystickRumbleTriggers(joystick : Joystick*, left_rumble : UInt16, right_rumble : UInt16, duration_ms : UInt32) : LibC::Int
  fun joystick_has_led = SDL_JoystickHasLED(joystick : Joystick*) : SBool
  fun joystick_has_rumble = SDL_JoystickHasRumble(joystick : Joystick*) : SBool
  fun joystick_has_rumble_triggers = SDL_JoystickHasRumbleTriggers(joystick : Joystick*) : SBool
  fun joystick_set_led = SDL_JoystickSetLED(joystick : Joystick*, red : UInt8, green : UInt8, blue : UInt8) : LibC::Int
  fun joystick_send_effect = SDL_JoystickSendEffect(joystick : Joystick*, data : Void*, size : LibC::Int) : LibC::Int
  fun joystick_close = SDL_JoystickClose(joystick : Joystick*) : Void
  fun joystick_current_power_level = SDL_JoystickCurrentPowerLevel(joystick : Joystick*) : JoystickPowerLevel

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

  struct Keysym
    scancode : Scancode
    sym : Keycode
    mod : UInt16
    unused : UInt32
  end

  fun get_keyboard_focus = SDL_GetKeyboardFocus() : Window*
  fun get_keyboard_state = SDL_GetKeyboardState(numkeys : LibC::Int*) : UInt8*
  fun reset_keyboard = SDL_ResetKeyboard() : Void
  fun get_mod_state = SDL_GetModState() : Keymod
  fun set_mod_state = SDL_SetModState(modstate : Keymod) : Void
  fun get_key_from_scancode = SDL_GetKeyFromScancode(scancode : Scancode) : Keycode
  fun get_scancode_from_key = SDL_GetScancodeFromKey(key : Keycode) : Scancode
  fun get_scancode_name = SDL_GetScancodeName(scancode : Scancode) : LibC::Char*
  fun get_scancode_from_name = SDL_GetScancodeFromName(name : LibC::Char*) : Scancode
  fun get_key_name = SDL_GetKeyName(key : Keycode) : LibC::Char*
  fun get_key_from_name = SDL_GetKeyFromName(name : LibC::Char*) : Keycode
  fun start_text_input = SDL_StartTextInput() : Void
  fun is_text_input_active = SDL_IsTextInputActive() : SBool
  fun stop_text_input = SDL_StopTextInput() : Void
  fun clear_composition = SDL_ClearComposition() : Void
  fun is_text_input_shown = SDL_IsTextInputShown() : SBool
  fun set_text_input_rect = SDL_SetTextInputRect(rect : Rect*) : Void
  fun has_screen_keyboard_support = SDL_HasScreenKeyboardSupport() : SBool
  fun is_screen_keyboard_shown = SDL_IsScreenKeyboardShown(window : Window*) : SBool

  # SDL_keycode

  K_SCANCODE_MASK = (1 << 30)

  alias Keycode = Int32

  enum KeyCode
    K_UNKNOWN = 0
    K_RETURN = 13
    K_ESCAPE = 27
    K_BACKSPACE = 8
    K_TAB = 9
    K_SPACE = 32
    K_EXCLAIM = 33
    K_QUOTEDBL = 34
    K_HASH = 35
    K_PERCENT = 37
    K_DOLLAR = 36
    K_AMPERSAND = 38
    K_QUOTE = 39
    K_LEFTPAREN = 40
    K_RIGHTPAREN = 41
    K_ASTERISK = 42
    K_PLUS = 43
    K_COMMA = 44
    K_MINUS = 45
    K_PERIOD = 46
    K_SLASH = 47
    K_0 = 48
    K_1 = 49
    K_2 = 50
    K_3 = 51
    K_4 = 52
    K_5 = 53
    K_6 = 54
    K_7 = 55
    K_8 = 56
    K_9 = 57
    K_COLON = 58
    K_SEMICOLON = 59
    K_LESS = 60
    K_EQUALS = 61
    K_GREATER = 62
    K_QUESTION = 63
    K_AT = 64
    K_LEFTBRACKET = 91
    K_BACKSLASH = 92
    K_RIGHTBRACKET = 93
    K_CARET = 94
    K_UNDERSCORE = 95
    K_BACKQUOTE = 96
    K_A = 97
    K_B = 98
    K_C = 99
    K_D = 100
    K_E = 101
    K_F = 102
    K_G = 103
    K_H = 104
    K_I = 105
    K_J = 106
    K_K = 107
    K_L = 108
    K_M = 109
    K_N = 110
    K_O = 111
    K_P = 112
    K_Q = 113
    K_R = 114
    K_S = 115
    K_T = 116
    K_U = 117
    K_V = 118
    K_W = 119
    K_X = 120
    K_Y = 121
    K_Z = 122
    K_CAPSLOCK = Scancode::SCANCODE_CAPSLOCK | K_SCANCODE_MASK
    K_F1 = Scancode::SCANCODE_F1 | K_SCANCODE_MASK
    K_F2 = Scancode::SCANCODE_F2 | K_SCANCODE_MASK
    K_F3 = Scancode::SCANCODE_F3 | K_SCANCODE_MASK
    K_F4 = Scancode::SCANCODE_F4 | K_SCANCODE_MASK
    K_F5 = Scancode::SCANCODE_F5 | K_SCANCODE_MASK
    K_F6 = Scancode::SCANCODE_F6 | K_SCANCODE_MASK
    K_F7 = Scancode::SCANCODE_F7 | K_SCANCODE_MASK
    K_F8 = Scancode::SCANCODE_F8 | K_SCANCODE_MASK
    K_F9 = Scancode::SCANCODE_F9 | K_SCANCODE_MASK
    K_F10 = Scancode::SCANCODE_F10 | K_SCANCODE_MASK
    K_F11 = Scancode::SCANCODE_F11 | K_SCANCODE_MASK
    K_F12 = Scancode::SCANCODE_F12 | K_SCANCODE_MASK
    K_PRINTSCREEN = Scancode::SCANCODE_PRINTSCREEN | K_SCANCODE_MASK
    K_SCROLLLOCK = Scancode::SCANCODE_SCROLLLOCK | K_SCANCODE_MASK
    K_PAUSE = Scancode::SCANCODE_PAUSE | K_SCANCODE_MASK
    K_INSERT = Scancode::SCANCODE_INSERT | K_SCANCODE_MASK
    K_HOME = Scancode::SCANCODE_HOME | K_SCANCODE_MASK
    K_PAGEUP = Scancode::SCANCODE_PAGEUP | K_SCANCODE_MASK
    K_DELETE = 127
    K_END = Scancode::SCANCODE_END | K_SCANCODE_MASK
    K_PAGEDOWN = Scancode::SCANCODE_PAGEDOWN | K_SCANCODE_MASK
    K_RIGHT = Scancode::SCANCODE_RIGHT | K_SCANCODE_MASK
    K_LEFT = Scancode::SCANCODE_LEFT | K_SCANCODE_MASK
    K_DOWN = Scancode::SCANCODE_DOWN | K_SCANCODE_MASK
    K_UP = Scancode::SCANCODE_UP | K_SCANCODE_MASK
    K_NUMLOCKCLEAR = Scancode::SCANCODE_NUMLOCKCLEAR | K_SCANCODE_MASK
    K_KP_DIVIDE = Scancode::SCANCODE_KP_DIVIDE | K_SCANCODE_MASK
    K_KP_MULTIPLY = Scancode::SCANCODE_KP_MULTIPLY | K_SCANCODE_MASK
    K_KP_MINUS = Scancode::SCANCODE_KP_MINUS | K_SCANCODE_MASK
    K_KP_PLUS = Scancode::SCANCODE_KP_PLUS | K_SCANCODE_MASK
    K_KP_ENTER = Scancode::SCANCODE_KP_ENTER | K_SCANCODE_MASK
    K_KP_1 = Scancode::SCANCODE_KP_1 | K_SCANCODE_MASK
    K_KP_2 = Scancode::SCANCODE_KP_2 | K_SCANCODE_MASK
    K_KP_3 = Scancode::SCANCODE_KP_3 | K_SCANCODE_MASK
    K_KP_4 = Scancode::SCANCODE_KP_4 | K_SCANCODE_MASK
    K_KP_5 = Scancode::SCANCODE_KP_5 | K_SCANCODE_MASK
    K_KP_6 = Scancode::SCANCODE_KP_6 | K_SCANCODE_MASK
    K_KP_7 = Scancode::SCANCODE_KP_7 | K_SCANCODE_MASK
    K_KP_8 = Scancode::SCANCODE_KP_8 | K_SCANCODE_MASK
    K_KP_9 = Scancode::SCANCODE_KP_9 | K_SCANCODE_MASK
    K_KP_0 = Scancode::SCANCODE_KP_0 | K_SCANCODE_MASK
    K_KP_PERIOD = Scancode::SCANCODE_KP_PERIOD | K_SCANCODE_MASK
    K_APPLICATION = Scancode::SCANCODE_APPLICATION | K_SCANCODE_MASK
    K_POWER = Scancode::SCANCODE_POWER | K_SCANCODE_MASK
    K_KP_EQUALS = Scancode::SCANCODE_KP_EQUALS | K_SCANCODE_MASK
    K_F13 = Scancode::SCANCODE_F13 | K_SCANCODE_MASK
    K_F14 = Scancode::SCANCODE_F14 | K_SCANCODE_MASK
    K_F15 = Scancode::SCANCODE_F15 | K_SCANCODE_MASK
    K_F16 = Scancode::SCANCODE_F16 | K_SCANCODE_MASK
    K_F17 = Scancode::SCANCODE_F17 | K_SCANCODE_MASK
    K_F18 = Scancode::SCANCODE_F18 | K_SCANCODE_MASK
    K_F19 = Scancode::SCANCODE_F19 | K_SCANCODE_MASK
    K_F20 = Scancode::SCANCODE_F20 | K_SCANCODE_MASK
    K_F21 = Scancode::SCANCODE_F21 | K_SCANCODE_MASK
    K_F22 = Scancode::SCANCODE_F22 | K_SCANCODE_MASK
    K_F23 = Scancode::SCANCODE_F23 | K_SCANCODE_MASK
    K_F24 = Scancode::SCANCODE_F24 | K_SCANCODE_MASK
    K_EXECUTE = Scancode::SCANCODE_EXECUTE | K_SCANCODE_MASK
    K_HELP = Scancode::SCANCODE_HELP | K_SCANCODE_MASK
    K_MENU = Scancode::SCANCODE_MENU | K_SCANCODE_MASK
    K_SELECT = Scancode::SCANCODE_SELECT | K_SCANCODE_MASK
    K_STOP = Scancode::SCANCODE_STOP | K_SCANCODE_MASK
    K_AGAIN = Scancode::SCANCODE_AGAIN | K_SCANCODE_MASK
    K_UNDO = Scancode::SCANCODE_UNDO | K_SCANCODE_MASK
    K_CUT = Scancode::SCANCODE_CUT | K_SCANCODE_MASK
    K_COPY = Scancode::SCANCODE_COPY | K_SCANCODE_MASK
    K_PASTE = Scancode::SCANCODE_PASTE | K_SCANCODE_MASK
    K_FIND = Scancode::SCANCODE_FIND | K_SCANCODE_MASK
    K_MUTE = Scancode::SCANCODE_MUTE | K_SCANCODE_MASK
    K_VOLUMEUP = Scancode::SCANCODE_VOLUMEUP | K_SCANCODE_MASK
    K_VOLUMEDOWN = Scancode::SCANCODE_VOLUMEDOWN | K_SCANCODE_MASK
    K_KP_COMMA = Scancode::SCANCODE_KP_COMMA | K_SCANCODE_MASK
    K_KP_EQUALSAS400 = Scancode::SCANCODE_KP_EQUALSAS400 | K_SCANCODE_MASK
    K_ALTERASE = Scancode::SCANCODE_ALTERASE | K_SCANCODE_MASK
    K_SYSREQ = Scancode::SCANCODE_SYSREQ | K_SCANCODE_MASK
    K_CANCEL = Scancode::SCANCODE_CANCEL | K_SCANCODE_MASK
    K_CLEAR = Scancode::SCANCODE_CLEAR | K_SCANCODE_MASK
    K_PRIOR = Scancode::SCANCODE_PRIOR | K_SCANCODE_MASK
    K_RETURN2 = Scancode::SCANCODE_RETURN2 | K_SCANCODE_MASK
    K_SEPARATOR = Scancode::SCANCODE_SEPARATOR | K_SCANCODE_MASK
    K_OUT = Scancode::SCANCODE_OUT | K_SCANCODE_MASK
    K_OPER = Scancode::SCANCODE_OPER | K_SCANCODE_MASK
    K_CLEARAGAIN = Scancode::SCANCODE_CLEARAGAIN | K_SCANCODE_MASK
    K_CRSEL = Scancode::SCANCODE_CRSEL | K_SCANCODE_MASK
    K_EXSEL = Scancode::SCANCODE_EXSEL | K_SCANCODE_MASK
    K_KP_00 = Scancode::SCANCODE_KP_00 | K_SCANCODE_MASK
    K_KP_000 = Scancode::SCANCODE_KP_000 | K_SCANCODE_MASK
    K_THOUSANDSSEPARATOR = Scancode::SCANCODE_THOUSANDSSEPARATOR | K_SCANCODE_MASK
    K_DECIMALSEPARATOR = Scancode::SCANCODE_DECIMALSEPARATOR | K_SCANCODE_MASK
    K_CURRENCYUNIT = Scancode::SCANCODE_CURRENCYUNIT | K_SCANCODE_MASK
    K_CURRENCYSUBUNIT = Scancode::SCANCODE_CURRENCYSUBUNIT | K_SCANCODE_MASK
    K_KP_LEFTPAREN = Scancode::SCANCODE_KP_LEFTPAREN | K_SCANCODE_MASK
    K_KP_RIGHTPAREN = Scancode::SCANCODE_KP_RIGHTPAREN | K_SCANCODE_MASK
    K_KP_LEFTBRACE = Scancode::SCANCODE_KP_LEFTBRACE | K_SCANCODE_MASK
    K_KP_RIGHTBRACE = Scancode::SCANCODE_KP_RIGHTBRACE | K_SCANCODE_MASK
    K_KP_TAB = Scancode::SCANCODE_KP_TAB | K_SCANCODE_MASK
    K_KP_BACKSPACE = Scancode::SCANCODE_KP_BACKSPACE | K_SCANCODE_MASK
    K_KP_A = Scancode::SCANCODE_KP_A | K_SCANCODE_MASK
    K_KP_B = Scancode::SCANCODE_KP_B | K_SCANCODE_MASK
    K_KP_C = Scancode::SCANCODE_KP_C | K_SCANCODE_MASK
    K_KP_D = Scancode::SCANCODE_KP_D | K_SCANCODE_MASK
    K_KP_E = Scancode::SCANCODE_KP_E | K_SCANCODE_MASK
    K_KP_F = Scancode::SCANCODE_KP_F | K_SCANCODE_MASK
    K_KP_XOR = Scancode::SCANCODE_KP_XOR | K_SCANCODE_MASK
    K_KP_POWER = Scancode::SCANCODE_KP_POWER | K_SCANCODE_MASK
    K_KP_PERCENT = Scancode::SCANCODE_KP_PERCENT | K_SCANCODE_MASK
    K_KP_LESS = Scancode::SCANCODE_KP_LESS | K_SCANCODE_MASK
    K_KP_GREATER = Scancode::SCANCODE_KP_GREATER | K_SCANCODE_MASK
    K_KP_AMPERSAND = Scancode::SCANCODE_KP_AMPERSAND | K_SCANCODE_MASK
    K_KP_DBLAMPERSAND = Scancode::SCANCODE_KP_DBLAMPERSAND | K_SCANCODE_MASK
    K_KP_VERTICALBAR = Scancode::SCANCODE_KP_VERTICALBAR | K_SCANCODE_MASK
    K_KP_DBLVERTICALBAR = Scancode::SCANCODE_KP_DBLVERTICALBAR | K_SCANCODE_MASK
    K_KP_COLON = Scancode::SCANCODE_KP_COLON | K_SCANCODE_MASK
    K_KP_HASH = Scancode::SCANCODE_KP_HASH | K_SCANCODE_MASK
    K_KP_SPACE = Scancode::SCANCODE_KP_SPACE | K_SCANCODE_MASK
    K_KP_AT = Scancode::SCANCODE_KP_AT | K_SCANCODE_MASK
    K_KP_EXCLAM = Scancode::SCANCODE_KP_EXCLAM | K_SCANCODE_MASK
    K_KP_MEMSTORE = Scancode::SCANCODE_KP_MEMSTORE | K_SCANCODE_MASK
    K_KP_MEMRECALL = Scancode::SCANCODE_KP_MEMRECALL | K_SCANCODE_MASK
    K_KP_MEMCLEAR = Scancode::SCANCODE_KP_MEMCLEAR | K_SCANCODE_MASK
    K_KP_MEMADD = Scancode::SCANCODE_KP_MEMADD | K_SCANCODE_MASK
    K_KP_MEMSUBTRACT = Scancode::SCANCODE_KP_MEMSUBTRACT | K_SCANCODE_MASK
    K_KP_MEMMULTIPLY = Scancode::SCANCODE_KP_MEMMULTIPLY | K_SCANCODE_MASK
    K_KP_MEMDIVIDE = Scancode::SCANCODE_KP_MEMDIVIDE | K_SCANCODE_MASK
    K_KP_PLUSMINUS = Scancode::SCANCODE_KP_PLUSMINUS | K_SCANCODE_MASK
    K_KP_CLEAR = Scancode::SCANCODE_KP_CLEAR | K_SCANCODE_MASK
    K_KP_CLEARENTRY = Scancode::SCANCODE_KP_CLEARENTRY | K_SCANCODE_MASK
    K_KP_BINARY = Scancode::SCANCODE_KP_BINARY | K_SCANCODE_MASK
    K_KP_OCTAL = Scancode::SCANCODE_KP_OCTAL | K_SCANCODE_MASK
    K_KP_DECIMAL = Scancode::SCANCODE_KP_DECIMAL | K_SCANCODE_MASK
    K_KP_HEXADECIMAL = Scancode::SCANCODE_KP_HEXADECIMAL | K_SCANCODE_MASK
    K_LCTRL = Scancode::SCANCODE_LCTRL | K_SCANCODE_MASK
    K_LSHIFT = Scancode::SCANCODE_LSHIFT | K_SCANCODE_MASK
    K_LALT = Scancode::SCANCODE_LALT | K_SCANCODE_MASK
    K_LGUI = Scancode::SCANCODE_LGUI | K_SCANCODE_MASK
    K_RCTRL = Scancode::SCANCODE_RCTRL | K_SCANCODE_MASK
    K_RSHIFT = Scancode::SCANCODE_RSHIFT | K_SCANCODE_MASK
    K_RALT = Scancode::SCANCODE_RALT | K_SCANCODE_MASK
    K_RGUI = Scancode::SCANCODE_RGUI | K_SCANCODE_MASK
    K_MODE = Scancode::SCANCODE_MODE | K_SCANCODE_MASK
    K_AUDIONEXT = Scancode::SCANCODE_AUDIONEXT | K_SCANCODE_MASK
    K_AUDIOPREV = Scancode::SCANCODE_AUDIOPREV | K_SCANCODE_MASK
    K_AUDIOSTOP = Scancode::SCANCODE_AUDIOSTOP | K_SCANCODE_MASK
    K_AUDIOPLAY = Scancode::SCANCODE_AUDIOPLAY | K_SCANCODE_MASK
    K_AUDIOMUTE = Scancode::SCANCODE_AUDIOMUTE | K_SCANCODE_MASK
    K_MEDIASELECT = Scancode::SCANCODE_MEDIASELECT | K_SCANCODE_MASK
    K_WWW = Scancode::SCANCODE_WWW | K_SCANCODE_MASK
    K_MAIL = Scancode::SCANCODE_MAIL | K_SCANCODE_MASK
    K_CALCULATOR = Scancode::SCANCODE_CALCULATOR | K_SCANCODE_MASK
    K_COMPUTER = Scancode::SCANCODE_COMPUTER | K_SCANCODE_MASK
    K_AC_SEARCH = Scancode::SCANCODE_AC_SEARCH | K_SCANCODE_MASK
    K_AC_HOME = Scancode::SCANCODE_AC_HOME | K_SCANCODE_MASK
    K_AC_BACK = Scancode::SCANCODE_AC_BACK | K_SCANCODE_MASK
    K_AC_FORWARD = Scancode::SCANCODE_AC_FORWARD | K_SCANCODE_MASK
    K_AC_STOP = Scancode::SCANCODE_AC_STOP | K_SCANCODE_MASK
    K_AC_REFRESH = Scancode::SCANCODE_AC_REFRESH | K_SCANCODE_MASK
    K_AC_BOOKMARKS = Scancode::SCANCODE_AC_BOOKMARKS | K_SCANCODE_MASK
    K_BRIGHTNESSDOWN = Scancode::SCANCODE_BRIGHTNESSDOWN | K_SCANCODE_MASK
    K_BRIGHTNESSUP = Scancode::SCANCODE_BRIGHTNESSUP | K_SCANCODE_MASK
    K_DISPLAYSWITCH = Scancode::SCANCODE_DISPLAYSWITCH | K_SCANCODE_MASK
    K_KBDILLUMTOGGLE = Scancode::SCANCODE_KBDILLUMTOGGLE | K_SCANCODE_MASK
    K_KBDILLUMDOWN = Scancode::SCANCODE_KBDILLUMDOWN | K_SCANCODE_MASK
    K_KBDILLUMUP = Scancode::SCANCODE_KBDILLUMUP | K_SCANCODE_MASK
    K_EJECT = Scancode::SCANCODE_EJECT | K_SCANCODE_MASK
    K_SLEEP = Scancode::SCANCODE_SLEEP | K_SCANCODE_MASK
    K_APP1 = Scancode::SCANCODE_APP1 | K_SCANCODE_MASK
    K_APP2 = Scancode::SCANCODE_APP2 | K_SCANCODE_MASK
    K_AUDIOREWIND = Scancode::SCANCODE_AUDIOREWIND | K_SCANCODE_MASK
    K_AUDIOFASTFORWARD = Scancode::SCANCODE_AUDIOFASTFORWARD | K_SCANCODE_MASK
    K_SOFTLEFT = Scancode::SCANCODE_SOFTLEFT | K_SCANCODE_MASK
    K_SOFTRIGHT = Scancode::SCANCODE_SOFTRIGHT | K_SCANCODE_MASK
    K_CALL = Scancode::SCANCODE_CALL | K_SCANCODE_MASK
    K_ENDCALL = Scancode::SCANCODE_ENDCALL | K_SCANCODE_MASK
  end

  enum Keymod
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
    KMOD_CTRL = KMOD_LCTRL | KMOD_RCTRL
    KMOD_SHIFT = KMOD_LSHIFT | KMOD_RSHIFT
    KMOD_ALT = KMOD_LALT | KMOD_RALT
    KMOD_GUI = KMOD_LGUI | KMOD_RGUI
    KMOD_RESERVED = KMOD_SCROLL
  end

  # SDL_mouse

  BUTTON_LEFT = 1
  BUTTON_MIDDLE = 2
  BUTTON_RIGHT = 3
  BUTTON_X1 = 4
  BUTTON_X2 = 5
  BUTTON_LMASK = BUTTON(BUTTON_LEFT)
  BUTTON_MMASK = BUTTON(BUTTON_MIDDLE)
  BUTTON_RMASK = BUTTON(BUTTON_RIGHT)
  BUTTON_X1MASK = BUTTON(BUTTON_X1)
  BUTTON_X2MASK = BUTTON(BUTTON_X2)

  alias Cursor = Void

  enum SystemCursor
    SYSTEM_CURSOR_ARROW
    SYSTEM_CURSOR_IBEAM
    SYSTEM_CURSOR_WAIT
    SYSTEM_CURSOR_CROSSHAIR
    SYSTEM_CURSOR_WAITARROW
    SYSTEM_CURSOR_SIZENWSE
    SYSTEM_CURSOR_SIZENESW
    SYSTEM_CURSOR_SIZEWE
    SYSTEM_CURSOR_SIZENS
    SYSTEM_CURSOR_SIZEALL
    SYSTEM_CURSOR_NO
    SYSTEM_CURSOR_HAND
    NUM_SYSTEM_CURSORS
  end

  enum MouseWheelDirection
    MOUSEWHEEL_NORMAL
    MOUSEWHEEL_FLIPPED
  end

  fun get_mouse_focus = SDL_GetMouseFocus() : Window*
  fun get_mouse_state = SDL_GetMouseState(x : LibC::Int*, y : LibC::Int*) : UInt32
  fun get_global_mouse_state = SDL_GetGlobalMouseState(x : LibC::Int*, y : LibC::Int*) : UInt32
  fun get_relative_mouse_state = SDL_GetRelativeMouseState(x : LibC::Int*, y : LibC::Int*) : UInt32
  fun warp_mouse_in_window = SDL_WarpMouseInWindow(window : Window*, x : LibC::Int, y : LibC::Int) : Void
  fun warp_mouse_global = SDL_WarpMouseGlobal(x : LibC::Int, y : LibC::Int) : LibC::Int
  fun set_relative_mouse_mode = SDL_SetRelativeMouseMode(enabled : SBool) : LibC::Int
  fun capture_mouse = SDL_CaptureMouse(enabled : SBool) : LibC::Int
  fun get_relative_mouse_mode = SDL_GetRelativeMouseMode() : SBool
  fun create_cursor = SDL_CreateCursor(data : UInt8*, mask : UInt8*, w : LibC::Int, h : LibC::Int, hot_x : LibC::Int, hot_y : LibC::Int) : Cursor*
  fun create_color_cursor = SDL_CreateColorCursor(surface : Surface*, hot_x : LibC::Int, hot_y : LibC::Int) : Cursor*
  fun create_system_cursor = SDL_CreateSystemCursor(id : SystemCursor) : Cursor*
  fun set_cursor = SDL_SetCursor(cursor : Cursor*) : Void
  fun get_cursor = SDL_GetCursor() : Cursor*
  fun get_default_cursor = SDL_GetDefaultCursor() : Cursor*
  fun free_cursor = SDL_FreeCursor(cursor : Cursor*) : Void
  fun show_cursor = SDL_ShowCursor(toggle : LibC::Int) : LibC::Int

  # SDL_pixels

  ALPHA_OPAQUE = 255
  ALPHA_TRANSPARENT = 0

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

  struct Color
    r : UInt8
    g : UInt8
    b : UInt8
    a : UInt8
  end

  struct Palette
    ncolors : LibC::Int
    colors : Color*
    version : UInt32
    refcount : LibC::Int
  end

  struct PixelFormat
    format : UInt32
    palette : Palette*
    bits_per_pixel : UInt8
    bytes_per_pixel : UInt8
    padding : UInt8[2]
    rmask : UInt32
    gmask : UInt32
    bmask : UInt32
    amask : UInt32
    rloss : UInt8
    gloss : UInt8
    bloss : UInt8
    aloss : UInt8
    rshift : UInt8
    gshift : UInt8
    bshift : UInt8
    ashift : UInt8
    refcount : LibC::Int
    next : PixelFormat*
  end

  fun get_pixel_format_name = SDL_GetPixelFormatName(format : UInt32) : LibC::Char*
  fun pixel_format_enum_to_masks = SDL_PixelFormatEnumToMasks(format : UInt32, bpp : LibC::Int*, rmask : UInt32*, gmask : UInt32*, bmask : UInt32*, amask : UInt32*) : SBool
  fun masks_to_pixel_format_enum = SDL_MasksToPixelFormatEnum(bpp : LibC::Int, rmask : UInt32, gmask : UInt32, bmask : UInt32, amask : UInt32) : UInt32
  fun alloc_format = SDL_AllocFormat(pixel_format : UInt32) : PixelFormat*
  fun free_format = SDL_FreeFormat(format : PixelFormat*) : Void
  fun alloc_palette = SDL_AllocPalette(ncolors : LibC::Int) : Palette*
  fun set_pixel_format_palette = SDL_SetPixelFormatPalette(format : PixelFormat*, palette : Palette*) : LibC::Int
  fun set_palette_colors = SDL_SetPaletteColors(palette : Palette*, colors : Color*, firstcolor : LibC::Int, ncolors : LibC::Int) : LibC::Int
  fun free_palette = SDL_FreePalette(palette : Palette*) : Void
  fun map_rgb = SDL_MapRGB(format : PixelFormat*, r : UInt8, g : UInt8, b : UInt8) : UInt32
  fun map_rgba = SDL_MapRGBA(format : PixelFormat*, r : UInt8, g : UInt8, b : UInt8, a : UInt8) : UInt32
  fun get_rgb = SDL_GetRGB(pixel : UInt32, format : PixelFormat*, r : UInt8*, g : UInt8*, b : UInt8*) : Void
  fun get_rgba = SDL_GetRGBA(pixel : UInt32, format : PixelFormat*, r : UInt8*, g : UInt8*, b : UInt8*, a : UInt8*) : Void
  fun calculate_gamma_ramp = SDL_CalculateGammaRamp(gamma : LibC::Float, ramp : UInt16*) : Void

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

  fun has_intersection = SDL_HasIntersection(a : Rect*, b : Rect*) : SBool
  fun intersect_rect = SDL_IntersectRect(a : Rect*, b : Rect*, result : Rect*) : SBool
  fun union_rect = SDL_UnionRect(a : Rect*, b : Rect*, result : Rect*) : Void
  fun enclose_points = SDL_EnclosePoints(points : Point*, count : LibC::Int, clip : Rect*, result : Rect*) : SBool
  fun intersect_rect_and_line = SDL_IntersectRectAndLine(rect : Rect*, x1 : LibC::Int*, y1 : LibC::Int*, x2 : LibC::Int*, y2 : LibC::Int*) : SBool
  fun has_intersection_f = SDL_HasIntersectionF(a : FRect*, b : FRect*) : SBool
  fun intersect_frect = SDL_IntersectFRect(a : FRect*, b : FRect*, result : FRect*) : SBool
  fun union_frect = SDL_UnionFRect(a : FRect*, b : FRect*, result : FRect*) : Void
  fun enclose_fpoints = SDL_EncloseFPoints(points : FPoint*, count : LibC::Int, clip : FRect*, result : FRect*) : SBool
  fun intersect_frect_and_line = SDL_IntersectFRectAndLine(rect : FRect*, x1 : LibC::Float*, y1 : LibC::Float*, x2 : LibC::Float*, y2 : LibC::Float*) : SBool

  # SDL_render

  alias Renderer = Void
  alias Texture = Void

  enum RendererFlags
    RENDERER_SOFTWARE = 0x00000001
    RENDERER_ACCELERATED = 0x00000002
    RENDERER_PRESENTVSYNC = 0x00000004
    RENDERER_TARGETTEXTURE = 0x00000008
  end

  enum ScaleMode
    SCALEMODENEAREST
    SCALEMODELINEAR
    SCALEMODEBEST
  end

  enum TextureAccess
    TEXTUREACCESS_STATIC
    TEXTUREACCESS_STREAMING
    TEXTUREACCESS_TARGET
  end

  enum TextureModulate
    TEXTUREMODULATE_NONE = 0x00000000
    TEXTUREMODULATE_COLOR = 0x00000001
    TEXTUREMODULATE_ALPHA = 0x00000002
  end

  enum RendererFlip
    FLIP_NONE = 0x00000000
    FLIP_HORIZONTAL = 0x00000001
    FLIP_VERTICAL = 0x00000002
  end

  struct RendererInfo
    name : LibC::Char*
    flags : UInt32
    num_texture_formats : UInt32
    texture_formats : UInt32[16]
    max_texture_width : LibC::Int
    max_texture_height : LibC::Int
  end

  struct Vertex
    position : FPoint
    color : Color
    tex_coord : FPoint
  end

  fun get_num_render_drivers = SDL_GetNumRenderDrivers() : LibC::Int
  fun get_render_driver_info = SDL_GetRenderDriverInfo(index : LibC::Int, info : RendererInfo*) : LibC::Int
  fun create_window_and_renderer = SDL_CreateWindowAndRenderer(width : LibC::Int, height : LibC::Int, window_flags : UInt32, window : Window**, renderer : Renderer**) : LibC::Int
  fun create_renderer = SDL_CreateRenderer(window : Window*, index : LibC::Int, flags : UInt32) : Renderer*
  fun create_software_renderer = SDL_CreateSoftwareRenderer(surface : Surface*) : Renderer*
  fun get_renderer = SDL_GetRenderer(window : Window*) : Renderer*
  fun render_get_window = SDL_RenderGetWindow(renderer : Renderer*) : Window*
  fun get_renderer_info = SDL_GetRendererInfo(renderer : Renderer*, info : RendererInfo*) : LibC::Int
  fun get_renderer_output_size = SDL_GetRendererOutputSize(renderer : Renderer*, w : LibC::Int*, h : LibC::Int*) : LibC::Int
  fun create_texture = SDL_CreateTexture(renderer : Renderer*, format : UInt32, access : LibC::Int, w : LibC::Int, h : LibC::Int) : Texture*
  fun create_texture_from_surface = SDL_CreateTextureFromSurface(renderer : Renderer*, surface : Surface*) : Texture*
  fun query_texture = SDL_QueryTexture(texture : Texture*, format : UInt32*, access : LibC::Int*, w : LibC::Int*, h : LibC::Int*) : LibC::Int
  fun set_texture_color_mod = SDL_SetTextureColorMod(texture : Texture*, r : UInt8, g : UInt8, b : UInt8) : LibC::Int
  fun get_texture_color_mod = SDL_GetTextureColorMod(texture : Texture*, r : UInt8*, g : UInt8*, b : UInt8*) : LibC::Int
  fun set_texture_alpha_mod = SDL_SetTextureAlphaMod(texture : Texture*, alpha : UInt8) : LibC::Int
  fun get_texture_alpha_mod = SDL_GetTextureAlphaMod(texture : Texture*, alpha : UInt8*) : LibC::Int
  fun set_texture_blend_mode = SDL_SetTextureBlendMode(texture : Texture*, blend_mode : BlendMode) : LibC::Int
  fun get_texture_blend_mode = SDL_GetTextureBlendMode(texture : Texture*, blend_mode : BlendMode*) : LibC::Int
  fun set_texture_scale_mode = SDL_SetTextureScaleMode(texture : Texture*, scale_mode : ScaleMode) : LibC::Int
  fun get_texture_scale_mode = SDL_GetTextureScaleMode(texture : Texture*, scale_mode : ScaleMode*) : LibC::Int
  fun set_texture_user_data = SDL_SetTextureUserData(texture : Texture*, userdata : Void*) : LibC::Int
  fun get_texture_user_data = SDL_GetTextureUserData(texture : Texture*) : Void*
  fun update_texture = SDL_UpdateTexture(texture : Texture*, rect : Rect*, pixels : Void*, pitch : LibC::Int) : LibC::Int
  fun update_yuvtexture = SDL_UpdateYUVTexture(texture : Texture*, rect : Rect*, yplane : UInt8*, ypitch : LibC::Int, uplane : UInt8*, upitch : LibC::Int, vplane : UInt8*, vpitch : LibC::Int) : LibC::Int
  fun update_nvtexture = SDL_UpdateNVTexture(texture : Texture*, rect : Rect*, yplane : UInt8*, ypitch : LibC::Int, uvplane : UInt8*, uvpitch : LibC::Int) : LibC::Int
  fun lock_texture = SDL_LockTexture(texture : Texture*, rect : Rect*, pixels : Void**, pitch : LibC::Int*) : LibC::Int
  fun lock_texture_to_surface = SDL_LockTextureToSurface(texture : Texture*, rect : Rect*, surface : Surface**) : LibC::Int
  fun unlock_texture = SDL_UnlockTexture(texture : Texture*) : Void
  fun render_target_supported = SDL_RenderTargetSupported(renderer : Renderer*) : SBool
  fun set_render_target = SDL_SetRenderTarget(renderer : Renderer*, texture : Texture*) : LibC::Int
  fun get_render_target = SDL_GetRenderTarget(renderer : Renderer*) : Texture*
  fun render_set_logical_size = SDL_RenderSetLogicalSize(renderer : Renderer*, w : LibC::Int, h : LibC::Int) : LibC::Int
  fun render_get_logical_size = SDL_RenderGetLogicalSize(renderer : Renderer*, w : LibC::Int*, h : LibC::Int*) : Void
  fun render_set_integer_scale = SDL_RenderSetIntegerScale(renderer : Renderer*, enable : SBool) : LibC::Int
  fun render_get_integer_scale = SDL_RenderGetIntegerScale(renderer : Renderer*) : SBool
  fun render_set_viewport = SDL_RenderSetViewport(renderer : Renderer*, rect : Rect*) : LibC::Int
  fun render_get_viewport = SDL_RenderGetViewport(renderer : Renderer*, rect : Rect*) : Void
  fun render_set_clip_rect = SDL_RenderSetClipRect(renderer : Renderer*, rect : Rect*) : LibC::Int
  fun render_get_clip_rect = SDL_RenderGetClipRect(renderer : Renderer*, rect : Rect*) : Void
  fun render_is_clip_enabled = SDL_RenderIsClipEnabled(renderer : Renderer*) : SBool
  fun render_set_scale = SDL_RenderSetScale(renderer : Renderer*, scale_x : LibC::Float, scale_y : LibC::Float) : LibC::Int
  fun render_get_scale = SDL_RenderGetScale(renderer : Renderer*, scale_x : LibC::Float*, scale_y : LibC::Float*) : Void
  fun render_window_to_logical = SDL_RenderWindowToLogical(renderer : Renderer*, window_x : LibC::Int, window_y : LibC::Int, logical_x : LibC::Float*, logical_y : LibC::Float*) : Void
  fun render_logical_to_window = SDL_RenderLogicalToWindow(renderer : Renderer*, logical_x : LibC::Float, logical_y : LibC::Float, window_x : LibC::Int*, window_y : LibC::Int*) : Void
  fun set_render_draw_color = SDL_SetRenderDrawColor(renderer : Renderer*, r : UInt8, g : UInt8, b : UInt8, a : UInt8) : LibC::Int
  fun get_render_draw_color = SDL_GetRenderDrawColor(renderer : Renderer*, r : UInt8*, g : UInt8*, b : UInt8*, a : UInt8*) : LibC::Int
  fun set_render_draw_blend_mode = SDL_SetRenderDrawBlendMode(renderer : Renderer*, blend_mode : BlendMode) : LibC::Int
  fun get_render_draw_blend_mode = SDL_GetRenderDrawBlendMode(renderer : Renderer*, blend_mode : BlendMode*) : LibC::Int
  fun render_clear = SDL_RenderClear(renderer : Renderer*) : LibC::Int
  fun render_draw_point = SDL_RenderDrawPoint(renderer : Renderer*, x : LibC::Int, y : LibC::Int) : LibC::Int
  fun render_draw_points = SDL_RenderDrawPoints(renderer : Renderer*, points : Point*, count : LibC::Int) : LibC::Int
  fun render_draw_line = SDL_RenderDrawLine(renderer : Renderer*, x1 : LibC::Int, y1 : LibC::Int, x2 : LibC::Int, y2 : LibC::Int) : LibC::Int
  fun render_draw_lines = SDL_RenderDrawLines(renderer : Renderer*, points : Point*, count : LibC::Int) : LibC::Int
  fun render_draw_rect = SDL_RenderDrawRect(renderer : Renderer*, rect : Rect*) : LibC::Int
  fun render_draw_rects = SDL_RenderDrawRects(renderer : Renderer*, rects : Rect*, count : LibC::Int) : LibC::Int
  fun render_fill_rect = SDL_RenderFillRect(renderer : Renderer*, rect : Rect*) : LibC::Int
  fun render_fill_rects = SDL_RenderFillRects(renderer : Renderer*, rects : Rect*, count : LibC::Int) : LibC::Int
  fun render_copy = SDL_RenderCopy(renderer : Renderer*, texture : Texture*, srcrect : Rect*, dstrect : Rect*) : LibC::Int
  fun render_copy_ex = SDL_RenderCopyEx(renderer : Renderer*, texture : Texture*, srcrect : Rect*, dstrect : Rect*, angle : LibC::Double, center : Point*, flip : RendererFlip) : LibC::Int
  fun render_draw_point_f = SDL_RenderDrawPointF(renderer : Renderer*, x : LibC::Float, y : LibC::Float) : LibC::Int
  fun render_draw_points_f = SDL_RenderDrawPointsF(renderer : Renderer*, points : FPoint*, count : LibC::Int) : LibC::Int
  fun render_draw_line_f = SDL_RenderDrawLineF(renderer : Renderer*, x1 : LibC::Float, y1 : LibC::Float, x2 : LibC::Float, y2 : LibC::Float) : LibC::Int
  fun render_draw_lines_f = SDL_RenderDrawLinesF(renderer : Renderer*, points : FPoint*, count : LibC::Int) : LibC::Int
  fun render_draw_rect_f = SDL_RenderDrawRectF(renderer : Renderer*, rect : FRect*) : LibC::Int
  fun render_draw_rects_f = SDL_RenderDrawRectsF(renderer : Renderer*, rects : FRect*, count : LibC::Int) : LibC::Int
  fun render_fill_rect_f = SDL_RenderFillRectF(renderer : Renderer*, rect : FRect*) : LibC::Int
  fun render_fill_rects_f = SDL_RenderFillRectsF(renderer : Renderer*, rects : FRect*, count : LibC::Int) : LibC::Int
  fun render_copy_f = SDL_RenderCopyF(renderer : Renderer*, texture : Texture*, srcrect : Rect*, dstrect : FRect*) : LibC::Int
  fun render_copy_ex_f = SDL_RenderCopyExF(renderer : Renderer*, texture : Texture*, srcrect : Rect*, dstrect : FRect*, angle : LibC::Double, center : FPoint*, flip : RendererFlip) : LibC::Int
  fun render_geometry = SDL_RenderGeometry(renderer : Renderer*, texture : Texture*, vertices : Vertex*, num_vertices : LibC::Int, indices : LibC::Int*, num_indices : LibC::Int) : LibC::Int
  fun render_geometry_raw = SDL_RenderGeometryRaw(renderer : Renderer*, texture : Texture*, xy : LibC::Float*, xy_stride : LibC::Int, color : Color*, color_stride : LibC::Int, uv : LibC::Float*, uv_stride : LibC::Int, num_vertices : LibC::Int, indices : Void*, num_indices : LibC::Int, size_indices : LibC::Int) : LibC::Int
  fun render_read_pixels = SDL_RenderReadPixels(renderer : Renderer*, rect : Rect*, format : UInt32, pixels : Void*, pitch : LibC::Int) : LibC::Int
  fun render_present = SDL_RenderPresent(renderer : Renderer*) : Void
  fun destroy_texture = SDL_DestroyTexture(texture : Texture*) : Void
  fun destroy_renderer = SDL_DestroyRenderer(renderer : Renderer*) : Void
  fun render_flush = SDL_RenderFlush(renderer : Renderer*) : LibC::Int
  fun gl_bind_texture = SDL_GL_BindTexture(texture : Texture*, texw : LibC::Float*, texh : LibC::Float*) : LibC::Int
  fun gl_unbind_texture = SDL_GL_UnbindTexture(texture : Texture*) : LibC::Int
  fun render_get_metal_layer = SDL_RenderGetMetalLayer(renderer : Renderer*) : Void*
  fun render_get_metal_command_encoder = SDL_RenderGetMetalCommandEncoder(renderer : Renderer*) : Void*
  fun render_set_vsync = SDL_RenderSetVSync(renderer : Renderer*, vsync : LibC::Int) : LibC::Int

  # additions/helper_rwops.cr

  type RWops = Void # This works as long as we're dealing with pointers only

  # SDL_rwops

  RWOPS_UNKNOWN = 0
  RWOPS_WINFILE = 1
  RWOPS_STDFILE = 2
  RWOPS_JNIFILE = 3
  RWOPS_MEMORY = 4
  RWOPS_MEMORY_RO = 5
  RW_SEEK_SET = 0
  RW_SEEK_CUR = 1
  RW_SEEK_END = 2

  fun rwfrom_file = SDL_RWFromFile(file : LibC::Char*, mode : LibC::Char*) : RWops*
  fun rwfrom_fp = SDL_RWFromFP(fp : Void*, autoclose : SBool) : RWops*
  fun rwfrom_fp = SDL_RWFromFP(fp : Void*, autoclose : SBool) : RWops*
  fun rwfrom_mem = SDL_RWFromMem(mem : Void*, size : LibC::Int) : RWops*
  fun rwfrom_const_mem = SDL_RWFromConstMem(mem : Void*, size : LibC::Int) : RWops*
  fun alloc_rw = SDL_AllocRW() : RWops*
  fun free_rw = SDL_FreeRW(area : RWops*) : Void
  fun rwsize = SDL_RWsize(context : RWops*) : Int64
  fun rwseek = SDL_RWseek(context : RWops*, offset : Int64, whence : LibC::Int) : Int64
  fun rwtell = SDL_RWtell(context : RWops*) : Int64
  fun rwread = SDL_RWread(context : RWops*, ptr : Void*, size : LibC::SizeT, maxnum : LibC::SizeT) : LibC::SizeT
  fun rwwrite = SDL_RWwrite(context : RWops*, ptr : Void*, size : LibC::SizeT, num : LibC::SizeT) : LibC::SizeT
  fun rwclose = SDL_RWclose(context : RWops*) : LibC::Int
  fun load_file_rw = SDL_LoadFile_RW(src : RWops*, datasize : LibC::SizeT*, freesrc : LibC::Int) : Void*
  fun load_file = SDL_LoadFile(file : LibC::Char*, datasize : LibC::SizeT*) : Void*
  fun read_u8 = SDL_ReadU8(src : RWops*) : UInt8
  fun read_le16 = SDL_ReadLE16(src : RWops*) : UInt16
  fun read_be16 = SDL_ReadBE16(src : RWops*) : UInt16
  fun read_le32 = SDL_ReadLE32(src : RWops*) : UInt32
  fun read_be32 = SDL_ReadBE32(src : RWops*) : UInt32
  fun read_le64 = SDL_ReadLE64(src : RWops*) : UInt64
  fun read_be64 = SDL_ReadBE64(src : RWops*) : UInt64
  fun write_u8 = SDL_WriteU8(dst : RWops*, value : UInt8) : LibC::SizeT
  fun write_le16 = SDL_WriteLE16(dst : RWops*, value : UInt16) : LibC::SizeT
  fun write_be16 = SDL_WriteBE16(dst : RWops*, value : UInt16) : LibC::SizeT
  fun write_le32 = SDL_WriteLE32(dst : RWops*, value : UInt32) : LibC::SizeT
  fun write_be32 = SDL_WriteBE32(dst : RWops*, value : UInt32) : LibC::SizeT
  fun write_le64 = SDL_WriteLE64(dst : RWops*, value : UInt64) : LibC::SizeT
  fun write_be64 = SDL_WriteBE64(dst : RWops*, value : UInt64) : LibC::SizeT

  # SDL_sensor

  STANDARD_GRAVITY = 9.80665

  alias Sensor = Void
  alias SensorID = Int32

  enum SensorType
    SENSOR_INVALID = -1
    SENSOR_UNKNOWN
    SENSOR_ACCEL
    SENSOR_GYRO
  end

  fun lock_sensors = SDL_LockSensors() : Void
  fun unlock_sensors = SDL_UnlockSensors() : Void
  fun num_sensors = SDL_NumSensors() : LibC::Int
  fun sensor_get_device_name = SDL_SensorGetDeviceName(device_index : LibC::Int) : LibC::Char*
  fun sensor_get_device_type = SDL_SensorGetDeviceType(device_index : LibC::Int) : SensorType
  fun sensor_get_device_non_portable_type = SDL_SensorGetDeviceNonPortableType(device_index : LibC::Int) : LibC::Int
  fun sensor_get_device_instance_id = SDL_SensorGetDeviceInstanceID(device_index : LibC::Int) : SensorID
  fun sensor_open = SDL_SensorOpen(device_index : LibC::Int) : Sensor*
  fun sensor_from_instance_id = SDL_SensorFromInstanceID(instance_id : SensorID) : Sensor*
  fun sensor_get_name = SDL_SensorGetName(sensor : Sensor*) : LibC::Char*
  fun sensor_get_type = SDL_SensorGetType(sensor : Sensor*) : SensorType
  fun sensor_get_non_portable_type = SDL_SensorGetNonPortableType(sensor : Sensor*) : LibC::Int
  fun sensor_get_instance_id = SDL_SensorGetInstanceID(sensor : Sensor*) : SensorID
  fun sensor_get_data = SDL_SensorGetData(sensor : Sensor*, data : LibC::Float*, num_values : LibC::Int) : LibC::Int
  fun sensor_close = SDL_SensorClose(sensor : Sensor*) : Void
  fun sensor_update = SDL_SensorUpdate() : Void

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

  NONSHAPEABLE_WINDOW = -1
  INVALID_SHAPE_ARGUMENT = -2
  WINDOW_LACKS_SHAPE = -3

  fun create_shaped_window = SDL_CreateShapedWindow(title : LibC::Char*, x : LibC::UInt, y : LibC::UInt, w : LibC::UInt, h : LibC::UInt, flags : UInt32) : Window*
  fun is_shaped_window = SDL_IsShapedWindow(window : Window*) : SBool
  fun set_window_shape = SDL_SetWindowShape(window : Window*, shape : Surface*, shape_mode : WindowShapeMode*) : LibC::Int
  fun get_shaped_window_mode = SDL_GetShapedWindowMode(window : Window*, shape_mode : WindowShapeMode*) : LibC::Int

  # SDL_surface

  SWSURFACE = 0
  PREALLOC = 0x00000001
  RLEACCEL = 0x00000002
  DONTFREE = 0x00000004
  SIMD_ALIGNED = 0x00000008

  alias BlitMap = Void

  enum YUVCONVERSIONMODE
    YUV_CONVERSION_JPEG
    YUV_CONVERSION_BT601
    YUV_CONVERSION_BT709
    YUV_CONVERSION_AUTOMATIC
  end

  struct Surface
    flags : UInt32
    format : PixelFormat*
    w : LibC::Int
    h : LibC::Int
    pitch : LibC::Int
    pixels : Void*
    userdata : Void*
    locked : LibC::Int
    list_blitmap : Void*
    clip_rect : Rect
    map : BlitMap*
    refcount : LibC::Int
  end

  fun create_rgbsurface = SDL_CreateRGBSurface(flags : UInt32, width : LibC::Int, height : LibC::Int, depth : LibC::Int, rmask : UInt32, gmask : UInt32, bmask : UInt32, amask : UInt32) : Surface*
  fun create_rgbsurface_with_format = SDL_CreateRGBSurfaceWithFormat(flags : UInt32, width : LibC::Int, height : LibC::Int, depth : LibC::Int, format : UInt32) : Surface*
  fun create_rgbsurface_from = SDL_CreateRGBSurfaceFrom(pixels : Void*, width : LibC::Int, height : LibC::Int, depth : LibC::Int, pitch : LibC::Int, rmask : UInt32, gmask : UInt32, bmask : UInt32, amask : UInt32) : Surface*
  fun create_rgbsurface_with_format_from = SDL_CreateRGBSurfaceWithFormatFrom(pixels : Void*, width : LibC::Int, height : LibC::Int, depth : LibC::Int, pitch : LibC::Int, format : UInt32) : Surface*
  fun free_surface = SDL_FreeSurface(surface : Surface*) : Void
  fun set_surface_palette = SDL_SetSurfacePalette(surface : Surface*, palette : Palette*) : LibC::Int
  fun lock_surface = SDL_LockSurface(surface : Surface*) : LibC::Int
  fun unlock_surface = SDL_UnlockSurface(surface : Surface*) : Void
  fun load_bmp_rw = SDL_LoadBMP_RW(src : RWops*, freesrc : LibC::Int) : Surface*
  fun save_bmp_rw = SDL_SaveBMP_RW(surface : Surface*, dst : RWops*, freedst : LibC::Int) : LibC::Int
  fun set_surface_rle = SDL_SetSurfaceRLE(surface : Surface*, flag : LibC::Int) : LibC::Int
  fun has_surface_rle = SDL_HasSurfaceRLE(surface : Surface*) : SBool
  fun set_color_key = SDL_SetColorKey(surface : Surface*, flag : LibC::Int, key : UInt32) : LibC::Int
  fun has_color_key = SDL_HasColorKey(surface : Surface*) : SBool
  fun get_color_key = SDL_GetColorKey(surface : Surface*, key : UInt32*) : LibC::Int
  fun set_surface_color_mod = SDL_SetSurfaceColorMod(surface : Surface*, r : UInt8, g : UInt8, b : UInt8) : LibC::Int
  fun get_surface_color_mod = SDL_GetSurfaceColorMod(surface : Surface*, r : UInt8*, g : UInt8*, b : UInt8*) : LibC::Int
  fun set_surface_alpha_mod = SDL_SetSurfaceAlphaMod(surface : Surface*, alpha : UInt8) : LibC::Int
  fun get_surface_alpha_mod = SDL_GetSurfaceAlphaMod(surface : Surface*, alpha : UInt8*) : LibC::Int
  fun set_surface_blend_mode = SDL_SetSurfaceBlendMode(surface : Surface*, blend_mode : BlendMode) : LibC::Int
  fun get_surface_blend_mode = SDL_GetSurfaceBlendMode(surface : Surface*, blend_mode : BlendMode*) : LibC::Int
  fun set_clip_rect = SDL_SetClipRect(surface : Surface*, rect : Rect*) : SBool
  fun get_clip_rect = SDL_GetClipRect(surface : Surface*, rect : Rect*) : Void
  fun duplicate_surface = SDL_DuplicateSurface(surface : Surface*) : Surface*
  fun convert_surface = SDL_ConvertSurface(src : Surface*, fmt : PixelFormat*, flags : UInt32) : Surface*
  fun convert_surface_format = SDL_ConvertSurfaceFormat(src : Surface*, pixel_format : UInt32, flags : UInt32) : Surface*
  fun convert_pixels = SDL_ConvertPixels(width : LibC::Int, height : LibC::Int, src_format : UInt32, src : Void*, src_pitch : LibC::Int, dst_format : UInt32, dst : Void*, dst_pitch : LibC::Int) : LibC::Int
  fun premultiply_alpha = SDL_PremultiplyAlpha(width : LibC::Int, height : LibC::Int, src_format : UInt32, src : Void*, src_pitch : LibC::Int, dst_format : UInt32, dst : Void*, dst_pitch : LibC::Int) : LibC::Int
  fun fill_rect = SDL_FillRect(dst : Surface*, rect : Rect*, color : UInt32) : LibC::Int
  fun fill_rects = SDL_FillRects(dst : Surface*, rects : Rect*, count : LibC::Int, color : UInt32) : LibC::Int
  fun upper_blit = SDL_UpperBlit(src : Surface*, srcrect : Rect*, dst : Surface*, dstrect : Rect*) : LibC::Int
  fun lower_blit = SDL_LowerBlit(src : Surface*, srcrect : Rect*, dst : Surface*, dstrect : Rect*) : LibC::Int
  fun soft_stretch = SDL_SoftStretch(src : Surface*, srcrect : Rect*, dst : Surface*, dstrect : Rect*) : LibC::Int
  fun soft_stretch_linear = SDL_SoftStretchLinear(src : Surface*, srcrect : Rect*, dst : Surface*, dstrect : Rect*) : LibC::Int
  fun upper_blit_scaled = SDL_UpperBlitScaled(src : Surface*, srcrect : Rect*, dst : Surface*, dstrect : Rect*) : LibC::Int
  fun lower_blit_scaled = SDL_LowerBlitScaled(src : Surface*, srcrect : Rect*, dst : Surface*, dstrect : Rect*) : LibC::Int
  fun set_yuvconversion_mode = SDL_SetYUVConversionMode(mode : YUVCONVERSIONMODE) : Void
  fun get_yuvconversion_mode = SDL_GetYUVConversionMode() : YUVCONVERSIONMODE
  fun get_yuvconversion_mode_for_resolution = SDL_GetYUVConversionModeForResolution(width : LibC::Int, height : LibC::Int) : YUVCONVERSIONMODE

  # SDL_touch

  TOUCH_MOUSEID = ((Uint32)-1)
  MOUSE_TOUCHID = ((Sint64)-1)

  alias TouchID = Int64
  alias FingerID = Int64

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

  fun get_num_touch_devices = SDL_GetNumTouchDevices() : LibC::Int
  fun get_touch_device = SDL_GetTouchDevice(index : LibC::Int) : TouchID
  fun get_touch_name = SDL_GetTouchName(index : LibC::Int) : LibC::Char*
  fun get_touch_device_type = SDL_GetTouchDeviceType(touch_id : TouchID) : TouchDeviceType
  fun get_num_touch_fingers = SDL_GetNumTouchFingers(touch_id : TouchID) : LibC::Int
  fun get_touch_finger = SDL_GetTouchFinger(touch_id : TouchID, index : LibC::Int) : Finger*

  # additions/helper_video.cr

  # (SDL_Window* win, const SDL_Point* area, void* data)
  alias HitTest = (Window*, Point*, Void*) -> HitTestResult

  # SDL_video

  WINDOWPOS_UNDEFINED_MASK = 0x1FFF0000
  WINDOWPOS_UNDEFINED = (LibSDL::WINDOWPOS_UNDEFINED_MASK | 0)
  WINDOWPOS_CENTERED_MASK = 0x2FFF0000
  WINDOWPOS_CENTERED = (LibSDL::WINDOWPOS_CENTERED_MASK | 0)

  alias Window = Void
  alias GLContext = Void*

  enum WindowFlags
    WINDOW_FULLSCREEN = 0x00000001
    WINDOW_OPENGL = 0x00000002
    WINDOW_SHOWN = 0x00000004
    WINDOW_HIDDEN = 0x00000008
    WINDOW_BORDERLESS = 0x00000010
    WINDOW_RESIZABLE = 0x00000020
    WINDOW_MINIMIZED = 0x00000040
    WINDOW_MAXIMIZED = 0x00000080
    WINDOW_MOUSE_GRABBED = 0x00000100
    WINDOW_INPUT_FOCUS = 0x00000200
    WINDOW_MOUSE_FOCUS = 0x00000400
    WINDOW_FULLSCREEN_DESKTOP = (WINDOW_FULLSCREEN | 0x00001000)
    WINDOW_FOREIGN = 0x00000800
    WINDOW_ALLOW_HIGHDPI = 0x00002000
    WINDOW_MOUSE_CAPTURE = 0x00004000
    WINDOW_ALWAYS_ON_TOP = 0x00008000
    WINDOW_SKIP_TASKBAR = 0x00010000
    WINDOW_UTILITY = 0x00020000
    WINDOW_TOOLTIP = 0x00040000
    WINDOW_POPUP_MENU = 0x00080000
    WINDOW_KEYBOARD_GRABBED = 0x00100000
    WINDOW_VULKAN = 0x10000000
    WINDOW_METAL = 0x20000000
    WINDOW_INPUT_GRABBED = WINDOW_MOUSE_GRABBED
  end

  enum WindowEventID
    WINDOWEVENT_NONE
    WINDOWEVENT_SHOWN
    WINDOWEVENT_HIDDEN
    WINDOWEVENT_EXPOSED
    WINDOWEVENT_MOVED
    WINDOWEVENT_RESIZED
    WINDOWEVENT_SIZE_CHANGED
    WINDOWEVENT_MINIMIZED
    WINDOWEVENT_MAXIMIZED
    WINDOWEVENT_RESTORED
    WINDOWEVENT_ENTER
    WINDOWEVENT_LEAVE
    WINDOWEVENT_FOCUS_GAINED
    WINDOWEVENT_FOCUS_LOST
    WINDOWEVENT_CLOSE
    WINDOWEVENT_TAKE_FOCUS
    WINDOWEVENT_HIT_TEST
    WINDOWEVENT_ICCPROF_CHANGED
    WINDOWEVENT_DISPLAY_CHANGED
  end

  enum DisplayEventID
    DISPLAYEVENT_NONE
    DISPLAYEVENT_ORIENTATION
    DISPLAYEVENT_CONNECTED
    DISPLAYEVENT_DISCONNECTED
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

  enum GLattr
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
    GL_CONTEXT_EGL
    GL_CONTEXT_FLAGS
    GL_CONTEXT_PROFILE_MASK
    GL_SHARE_WITH_CURRENT_CONTEXT
    GL_FRAMEBUFFER_SRGB_CAPABLE
    GL_CONTEXT_RELEASE_BEHAVIOR
    GL_CONTEXT_RESET_NOTIFICATION
    GL_CONTEXT_NO_ERROR
    GL_FLOATBUFFERS
  end

  enum GLprofile
    GL_CONTEXT_PROFILE_CORE = 0x0001
    GL_CONTEXT_PROFILE_COMPATIBILITY = 0x0002
    GL_CONTEXT_PROFILE_ES = 0x0004
  end

  enum GLcontextFlag
    GL_CONTEXT_DEBUG_FLAG = 0x0001
    GL_CONTEXT_FORWARD_COMPATIBLE_FLAG = 0x0002
    GL_CONTEXT_ROBUST_ACCESS_FLAG = 0x0004
    GL_CONTEXT_RESET_ISOLATION_FLAG = 0x0008
  end

  enum GLcontextReleaseFlag
    GL_CONTEXT_RELEASE_BEHAVIOR_NONE = 0x0000
    GL_CONTEXT_RELEASE_BEHAVIOR_FLUSH = 0x0001
  end

  enum GLContextResetNotification
    GL_CONTEXT_RESET_NO_NOTIFICATION = 0x0000
    GL_CONTEXT_RESET_LOSE_CONTEXT = 0x0001
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
    format : UInt32
    w : LibC::Int
    h : LibC::Int
    refresh_rate : LibC::Int
    driverdata : Void*
  end

  fun get_num_video_drivers = SDL_GetNumVideoDrivers() : LibC::Int
  fun get_video_driver = SDL_GetVideoDriver(index : LibC::Int) : LibC::Char*
  fun video_init = SDL_VideoInit(driver_name : LibC::Char*) : LibC::Int
  fun video_quit = SDL_VideoQuit() : Void
  fun get_current_video_driver = SDL_GetCurrentVideoDriver() : LibC::Char*
  fun get_num_video_displays = SDL_GetNumVideoDisplays() : LibC::Int
  fun get_display_name = SDL_GetDisplayName(display_index : LibC::Int) : LibC::Char*
  fun get_display_bounds = SDL_GetDisplayBounds(display_index : LibC::Int, rect : Rect*) : LibC::Int
  fun get_display_usable_bounds = SDL_GetDisplayUsableBounds(display_index : LibC::Int, rect : Rect*) : LibC::Int
  fun get_display_dpi = SDL_GetDisplayDPI(display_index : LibC::Int, ddpi : LibC::Float*, hdpi : LibC::Float*, vdpi : LibC::Float*) : LibC::Int
  fun get_display_orientation = SDL_GetDisplayOrientation(display_index : LibC::Int) : DisplayOrientation
  fun get_num_display_modes = SDL_GetNumDisplayModes(display_index : LibC::Int) : LibC::Int
  fun get_display_mode = SDL_GetDisplayMode(display_index : LibC::Int, mode_index : LibC::Int, mode : DisplayMode*) : LibC::Int
  fun get_desktop_display_mode = SDL_GetDesktopDisplayMode(display_index : LibC::Int, mode : DisplayMode*) : LibC::Int
  fun get_current_display_mode = SDL_GetCurrentDisplayMode(display_index : LibC::Int, mode : DisplayMode*) : LibC::Int
  fun get_closest_display_mode = SDL_GetClosestDisplayMode(display_index : LibC::Int, mode : DisplayMode*, closest : DisplayMode*) : DisplayMode*
  fun get_point_display_index = SDL_GetPointDisplayIndex(point : Point*) : LibC::Int
  fun get_rect_display_index = SDL_GetRectDisplayIndex(rect : Rect*) : LibC::Int
  fun get_window_display_index = SDL_GetWindowDisplayIndex(window : Window*) : LibC::Int
  fun set_window_display_mode = SDL_SetWindowDisplayMode(window : Window*, mode : DisplayMode*) : LibC::Int
  fun get_window_display_mode = SDL_GetWindowDisplayMode(window : Window*, mode : DisplayMode*) : LibC::Int
  fun get_window_iccprofile = SDL_GetWindowICCProfile(window : Window*, size : LibC::SizeT*) : Void*
  fun get_window_pixel_format = SDL_GetWindowPixelFormat(window : Window*) : UInt32
  fun create_window = SDL_CreateWindow(title : LibC::Char*, x : LibC::Int, y : LibC::Int, w : LibC::Int, h : LibC::Int, flags : UInt32) : Window*
  fun create_window_from = SDL_CreateWindowFrom(data : Void*) : Window*
  fun get_window_id = SDL_GetWindowID(window : Window*) : UInt32
  fun get_window_from_id = SDL_GetWindowFromID(id : UInt32) : Window*
  fun get_window_flags = SDL_GetWindowFlags(window : Window*) : UInt32
  fun set_window_title = SDL_SetWindowTitle(window : Window*, title : LibC::Char*) : Void
  fun get_window_title = SDL_GetWindowTitle(window : Window*) : LibC::Char*
  fun set_window_icon = SDL_SetWindowIcon(window : Window*, icon : Surface*) : Void
  fun set_window_data = SDL_SetWindowData(window : Window*, name : LibC::Char*, userdata : Void*) : Void*
  fun get_window_data = SDL_GetWindowData(window : Window*, name : LibC::Char*) : Void*
  fun set_window_position = SDL_SetWindowPosition(window : Window*, x : LibC::Int, y : LibC::Int) : Void
  fun get_window_position = SDL_GetWindowPosition(window : Window*, x : LibC::Int*, y : LibC::Int*) : Void
  fun set_window_size = SDL_SetWindowSize(window : Window*, w : LibC::Int, h : LibC::Int) : Void
  fun get_window_size = SDL_GetWindowSize(window : Window*, w : LibC::Int*, h : LibC::Int*) : Void
  fun get_window_borders_size = SDL_GetWindowBordersSize(window : Window*, top : LibC::Int*, left : LibC::Int*, bottom : LibC::Int*, right : LibC::Int*) : LibC::Int
  fun get_window_size_in_pixels = SDL_GetWindowSizeInPixels(window : Window*, w : LibC::Int*, h : LibC::Int*) : Void
  fun set_window_minimum_size = SDL_SetWindowMinimumSize(window : Window*, min_w : LibC::Int, min_h : LibC::Int) : Void
  fun get_window_minimum_size = SDL_GetWindowMinimumSize(window : Window*, w : LibC::Int*, h : LibC::Int*) : Void
  fun set_window_maximum_size = SDL_SetWindowMaximumSize(window : Window*, max_w : LibC::Int, max_h : LibC::Int) : Void
  fun get_window_maximum_size = SDL_GetWindowMaximumSize(window : Window*, w : LibC::Int*, h : LibC::Int*) : Void
  fun set_window_bordered = SDL_SetWindowBordered(window : Window*, bordered : SBool) : Void
  fun set_window_resizable = SDL_SetWindowResizable(window : Window*, resizable : SBool) : Void
  fun set_window_always_on_top = SDL_SetWindowAlwaysOnTop(window : Window*, on_top : SBool) : Void
  fun show_window = SDL_ShowWindow(window : Window*) : Void
  fun hide_window = SDL_HideWindow(window : Window*) : Void
  fun raise_window = SDL_RaiseWindow(window : Window*) : Void
  fun maximize_window = SDL_MaximizeWindow(window : Window*) : Void
  fun minimize_window = SDL_MinimizeWindow(window : Window*) : Void
  fun restore_window = SDL_RestoreWindow(window : Window*) : Void
  fun set_window_fullscreen = SDL_SetWindowFullscreen(window : Window*, flags : UInt32) : LibC::Int
  fun get_window_surface = SDL_GetWindowSurface(window : Window*) : Surface*
  fun update_window_surface = SDL_UpdateWindowSurface(window : Window*) : LibC::Int
  fun update_window_surface_rects = SDL_UpdateWindowSurfaceRects(window : Window*, rects : Rect*, numrects : LibC::Int) : LibC::Int
  fun set_window_grab = SDL_SetWindowGrab(window : Window*, grabbed : SBool) : Void
  fun set_window_keyboard_grab = SDL_SetWindowKeyboardGrab(window : Window*, grabbed : SBool) : Void
  fun set_window_mouse_grab = SDL_SetWindowMouseGrab(window : Window*, grabbed : SBool) : Void
  fun get_window_grab = SDL_GetWindowGrab(window : Window*) : SBool
  fun get_window_keyboard_grab = SDL_GetWindowKeyboardGrab(window : Window*) : SBool
  fun get_window_mouse_grab = SDL_GetWindowMouseGrab(window : Window*) : SBool
  fun get_grabbed_window = SDL_GetGrabbedWindow() : Window*
  fun set_window_mouse_rect = SDL_SetWindowMouseRect(window : Window*, rect : Rect*) : LibC::Int
  fun get_window_mouse_rect = SDL_GetWindowMouseRect(window : Window*) : Rect*
  fun set_window_brightness = SDL_SetWindowBrightness(window : Window*, brightness : LibC::Float) : LibC::Int
  fun get_window_brightness = SDL_GetWindowBrightness(window : Window*) : LibC::Float
  fun set_window_opacity = SDL_SetWindowOpacity(window : Window*, opacity : LibC::Float) : LibC::Int
  fun get_window_opacity = SDL_GetWindowOpacity(window : Window*, out_opacity : LibC::Float*) : LibC::Int
  fun set_window_modal_for = SDL_SetWindowModalFor(modal_window : Window*, parent_window : Window*) : LibC::Int
  fun set_window_input_focus = SDL_SetWindowInputFocus(window : Window*) : LibC::Int
  fun set_window_gamma_ramp = SDL_SetWindowGammaRamp(window : Window*, red : UInt16*, green : UInt16*, blue : UInt16*) : LibC::Int
  fun get_window_gamma_ramp = SDL_GetWindowGammaRamp(window : Window*, red : UInt16*, green : UInt16*, blue : UInt16*) : LibC::Int
  fun set_window_hit_test = SDL_SetWindowHitTest(window : Window*, callback : HitTest, callback_data : Void*) : LibC::Int
  fun flash_window = SDL_FlashWindow(window : Window*, operation : FlashOperation) : LibC::Int
  fun destroy_window = SDL_DestroyWindow(window : Window*) : Void
  fun is_screen_saver_enabled = SDL_IsScreenSaverEnabled() : SBool
  fun enable_screen_saver = SDL_EnableScreenSaver() : Void
  fun disable_screen_saver = SDL_DisableScreenSaver() : Void
  fun gl_load_library = SDL_GL_LoadLibrary(path : LibC::Char*) : LibC::Int
  fun gl_get_proc_address = SDL_GL_GetProcAddress(proc : LibC::Char*) : Void*
  fun gl_unload_library = SDL_GL_UnloadLibrary() : Void
  fun gl_extension_supported = SDL_GL_ExtensionSupported(extension : LibC::Char*) : SBool
  fun gl_reset_attributes = SDL_GL_ResetAttributes() : Void
  fun gl_set_attribute = SDL_GL_SetAttribute(attr : GLattr, value : LibC::Int) : LibC::Int
  fun gl_get_attribute = SDL_GL_GetAttribute(attr : GLattr, value : LibC::Int*) : LibC::Int
  fun gl_create_context = SDL_GL_CreateContext(window : Window*) : GLContext
  fun gl_make_current = SDL_GL_MakeCurrent(window : Window*, context : GLContext) : LibC::Int
  fun gl_get_current_window = SDL_GL_GetCurrentWindow() : Window*
  fun gl_get_current_context = SDL_GL_GetCurrentContext() : GLContext
  fun gl_get_drawable_size = SDL_GL_GetDrawableSize(window : Window*, w : LibC::Int*, h : LibC::Int*) : Void
  fun gl_set_swap_interval = SDL_GL_SetSwapInterval(interval : LibC::Int) : LibC::Int
  fun gl_get_swap_interval = SDL_GL_GetSwapInterval() : LibC::Int
  fun gl_swap_window = SDL_GL_SwapWindow(window : Window*) : Void
  fun gl_delete_context = SDL_GL_DeleteContext(context : GLContext) : Void

  # SDL_image

  IMAGE_MAJOR_VERSION = 2
  IMAGE_MINOR_VERSION = 7
  IMAGE_PATCHLEVEL = 0
  IMAGE_COMPILEDVERSION = (((IMAGE_MAJOR_VERSION)*1000 + (IMAGE_MINOR_VERSION)*100 + (IMAGE_PATCHLEVEL)))

  enum IMGInitFlags
    IMG_INIT_JPG = 0x00000001
    IMG_INIT_PNG = 0x00000002
    IMG_INIT_TIF = 0x00000004
    IMG_INIT_WEBP = 0x00000008
    IMG_INIT_JXL = 0x00000010
    IMG_INIT_AVIF = 0x00000020
  end

  struct IMGAnimation
    w : LibC::Int
    h : LibC::Int
    count : LibC::Int
    frames : Surface**
    delays : LibC::Int*
  end

  fun img_linked_version = IMG_Linked_Version() : Version*
  fun img_init = IMG_Init(flags : LibC::Int) : LibC::Int
  fun img_quit = IMG_Quit() : Void
  fun img_load_typed_rw = IMG_LoadTyped_RW(src : RWops*, freesrc : LibC::Int, type : LibC::Char*) : Surface*
  fun img_load = IMG_Load(file : LibC::Char*) : Surface*
  fun img_load_rw = IMG_Load_RW(src : RWops*, freesrc : LibC::Int) : Surface*
  fun img_load_texture = IMG_LoadTexture(renderer : Renderer*, file : LibC::Char*) : Texture*
  fun img_load_texture_rw = IMG_LoadTexture_RW(renderer : Renderer*, src : RWops*, freesrc : LibC::Int) : Texture*
  fun img_load_texture_typed_rw = IMG_LoadTextureTyped_RW(renderer : Renderer*, src : RWops*, freesrc : LibC::Int, type : LibC::Char*) : Texture*
  fun img_is_avif = IMG_isAVIF(src : RWops*) : LibC::Int
  fun img_is_ico = IMG_isICO(src : RWops*) : LibC::Int
  fun img_is_cur = IMG_isCUR(src : RWops*) : LibC::Int
  fun img_is_bmp = IMG_isBMP(src : RWops*) : LibC::Int
  fun img_is_gif = IMG_isGIF(src : RWops*) : LibC::Int
  fun img_is_jpg = IMG_isJPG(src : RWops*) : LibC::Int
  fun img_is_jxl = IMG_isJXL(src : RWops*) : LibC::Int
  fun img_is_lbm = IMG_isLBM(src : RWops*) : LibC::Int
  fun img_is_pcx = IMG_isPCX(src : RWops*) : LibC::Int
  fun img_is_png = IMG_isPNG(src : RWops*) : LibC::Int
  fun img_is_pnm = IMG_isPNM(src : RWops*) : LibC::Int
  fun img_is_svg = IMG_isSVG(src : RWops*) : LibC::Int
  fun img_is_qoi = IMG_isQOI(src : RWops*) : LibC::Int
  fun img_is_tif = IMG_isTIF(src : RWops*) : LibC::Int
  fun img_is_xcf = IMG_isXCF(src : RWops*) : LibC::Int
  fun img_is_xpm = IMG_isXPM(src : RWops*) : LibC::Int
  fun img_is_xv = IMG_isXV(src : RWops*) : LibC::Int
  fun img_is_webp = IMG_isWEBP(src : RWops*) : LibC::Int
  fun img_load_avif_rw = IMG_LoadAVIF_RW(src : RWops*) : Surface*
  fun img_load_ico_rw = IMG_LoadICO_RW(src : RWops*) : Surface*
  fun img_load_cur_rw = IMG_LoadCUR_RW(src : RWops*) : Surface*
  fun img_load_bmp_rw = IMG_LoadBMP_RW(src : RWops*) : Surface*
  fun img_load_gif_rw = IMG_LoadGIF_RW(src : RWops*) : Surface*
  fun img_load_jpg_rw = IMG_LoadJPG_RW(src : RWops*) : Surface*
  fun img_load_jxl_rw = IMG_LoadJXL_RW(src : RWops*) : Surface*
  fun img_load_lbm_rw = IMG_LoadLBM_RW(src : RWops*) : Surface*
  fun img_load_pcx_rw = IMG_LoadPCX_RW(src : RWops*) : Surface*
  fun img_load_png_rw = IMG_LoadPNG_RW(src : RWops*) : Surface*
  fun img_load_pnm_rw = IMG_LoadPNM_RW(src : RWops*) : Surface*
  fun img_load_svg_rw = IMG_LoadSVG_RW(src : RWops*) : Surface*
  fun img_load_qoi_rw = IMG_LoadQOI_RW(src : RWops*) : Surface*
  fun img_load_tga_rw = IMG_LoadTGA_RW(src : RWops*) : Surface*
  fun img_load_tif_rw = IMG_LoadTIF_RW(src : RWops*) : Surface*
  fun img_load_xcf_rw = IMG_LoadXCF_RW(src : RWops*) : Surface*
  fun img_load_xpm_rw = IMG_LoadXPM_RW(src : RWops*) : Surface*
  fun img_load_xv_rw = IMG_LoadXV_RW(src : RWops*) : Surface*
  fun img_load_webp_rw = IMG_LoadWEBP_RW(src : RWops*) : Surface*
  fun img_load_sized_svg_rw = IMG_LoadSizedSVG_RW(src : RWops*, width : LibC::Int, height : LibC::Int) : Surface*
  fun img_read_xpmfrom_array = IMG_ReadXPMFromArray(xpm : LibC::Char**) : Surface*
  fun img_read_xpmfrom_array_to_rgb888 = IMG_ReadXPMFromArrayToRGB888(xpm : LibC::Char**) : Surface*
  fun img_save_png = IMG_SavePNG(surface : Surface*, file : LibC::Char*) : LibC::Int
  fun img_save_png_rw = IMG_SavePNG_RW(surface : Surface*, dst : RWops*, freedst : LibC::Int) : LibC::Int
  fun img_save_jpg = IMG_SaveJPG(surface : Surface*, file : LibC::Char*, quality : LibC::Int) : LibC::Int
  fun img_save_jpg_rw = IMG_SaveJPG_RW(surface : Surface*, dst : RWops*, freedst : LibC::Int, quality : LibC::Int) : LibC::Int
  fun img_load_animation = IMG_LoadAnimation(file : LibC::Char*) : IMGAnimation*
  fun img_load_animation_rw = IMG_LoadAnimation_RW(src : RWops*, freesrc : LibC::Int) : IMGAnimation*
  fun img_load_animation_typed_rw = IMG_LoadAnimationTyped_RW(src : RWops*, freesrc : LibC::Int, type : LibC::Char*) : IMGAnimation*
  fun img_free_animation = IMG_FreeAnimation(anim : IMGAnimation*) : Void
  fun img_load_gifanimation_rw = IMG_LoadGIFAnimation_RW(src : RWops*) : IMGAnimation*

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

  # SDL_ttf

  TTF_MAJOR_VERSION = 2
  TTF_MINOR_VERSION = 21
  TTF_PATCHLEVEL = 0
  TTF_COMPILEDVERSION = (((TTF_MAJOR_VERSION)*1000 + (TTF_MINOR_VERSION)*100 + (TTF_PATCHLEVEL)))
  UNICODE_BOM_NATIVE = 0xFEFF
  UNICODE_BOM_SWAPPED = 0xFFFE
  TTF_STYLE_NORMAL = 0x00
  TTF_STYLE_BOLD = 0x01
  TTF_STYLE_ITALIC = 0x02
  TTF_STYLE_UNDERLINE = 0x04
  TTF_STYLE_STRIKETHROUGH = 0x08
  TTF_HINTING_NORMAL = 0
  TTF_HINTING_LIGHT = 1
  TTF_HINTING_MONO = 2
  TTF_HINTING_NONE = 3
  TTF_HINTING_LIGHT_SUBPIXEL = 4
  TTF_WRAPPED_ALIGN_LEFT = 0
  TTF_WRAPPED_ALIGN_CENTER = 1
  TTF_WRAPPED_ALIGN_RIGHT = 2

  alias TTFFont = Void

  enum TTFDirection
    TTF_DIRECTION_LTR = 0
    TTF_DIRECTION_RTL
    TTF_DIRECTION_TTB
    TTF_DIRECTION_BTT
  end

  fun ttf_linked_version = TTF_Linked_Version() : Version*
  fun ttf_get_free_type_version = TTF_GetFreeTypeVersion(major : LibC::Int*, minor : LibC::Int*, patch : LibC::Int*) : Void
  fun ttf_get_harf_buzz_version = TTF_GetHarfBuzzVersion(major : LibC::Int*, minor : LibC::Int*, patch : LibC::Int*) : Void
  fun ttf_byte_swapped_unicode = TTF_ByteSwappedUNICODE(swapped : SBool) : Void
  fun ttf_init = TTF_Init() : LibC::Int
  fun ttf_open_font = TTF_OpenFont(file : LibC::Char*, ptsize : LibC::Int) : TTFFont*
  fun ttf_open_font_index = TTF_OpenFontIndex(file : LibC::Char*, ptsize : LibC::Int, index : LibC::Long) : TTFFont*
  fun ttf_open_font_rw = TTF_OpenFontRW(src : RWops*, freesrc : LibC::Int, ptsize : LibC::Int) : TTFFont*
  fun ttf_open_font_index_rw = TTF_OpenFontIndexRW(src : RWops*, freesrc : LibC::Int, ptsize : LibC::Int, index : LibC::Long) : TTFFont*
  fun ttf_open_font_dpi = TTF_OpenFontDPI(file : LibC::Char*, ptsize : LibC::Int, hdpi : LibC::UInt, vdpi : LibC::UInt) : TTFFont*
  fun ttf_open_font_index_dpi = TTF_OpenFontIndexDPI(file : LibC::Char*, ptsize : LibC::Int, index : LibC::Long, hdpi : LibC::UInt, vdpi : LibC::UInt) : TTFFont*
  fun ttf_open_font_dpirw = TTF_OpenFontDPIRW(src : RWops*, freesrc : LibC::Int, ptsize : LibC::Int, hdpi : LibC::UInt, vdpi : LibC::UInt) : TTFFont*
  fun ttf_open_font_index_dpirw = TTF_OpenFontIndexDPIRW(src : RWops*, freesrc : LibC::Int, ptsize : LibC::Int, index : LibC::Long, hdpi : LibC::UInt, vdpi : LibC::UInt) : TTFFont*
  fun ttf_set_font_size = TTF_SetFontSize(font : TTFFont*, ptsize : LibC::Int) : LibC::Int
  fun ttf_set_font_size_dpi = TTF_SetFontSizeDPI(font : TTFFont*, ptsize : LibC::Int, hdpi : LibC::UInt, vdpi : LibC::UInt) : LibC::Int
  fun ttf_get_font_style = TTF_GetFontStyle(font : TTFFont*) : LibC::Int
  fun ttf_set_font_style = TTF_SetFontStyle(font : TTFFont*, style : LibC::Int) : Void
  fun ttf_get_font_outline = TTF_GetFontOutline(font : TTFFont*) : LibC::Int
  fun ttf_set_font_outline = TTF_SetFontOutline(font : TTFFont*, outline : LibC::Int) : Void
  fun ttf_get_font_hinting = TTF_GetFontHinting(font : TTFFont*) : LibC::Int
  fun ttf_set_font_hinting = TTF_SetFontHinting(font : TTFFont*, hinting : LibC::Int) : Void
  fun ttf_get_font_wrapped_align = TTF_GetFontWrappedAlign(font : TTFFont*) : LibC::Int
  fun ttf_set_font_wrapped_align = TTF_SetFontWrappedAlign(font : TTFFont*, align : LibC::Int) : Void
  fun ttf_font_height = TTF_FontHeight(font : TTFFont*) : LibC::Int
  fun ttf_font_ascent = TTF_FontAscent(font : TTFFont*) : LibC::Int
  fun ttf_font_descent = TTF_FontDescent(font : TTFFont*) : LibC::Int
  fun ttf_font_line_skip = TTF_FontLineSkip(font : TTFFont*) : LibC::Int
  fun ttf_get_font_kerning = TTF_GetFontKerning(font : TTFFont*) : LibC::Int
  fun ttf_set_font_kerning = TTF_SetFontKerning(font : TTFFont*, allowed : LibC::Int) : Void
  fun ttf_font_faces = TTF_FontFaces(font : TTFFont*) : LibC::Long
  fun ttf_font_face_is_fixed_width = TTF_FontFaceIsFixedWidth(font : TTFFont*) : LibC::Int
  fun ttf_font_face_family_name = TTF_FontFaceFamilyName(font : TTFFont*) : LibC::Char*
  fun ttf_font_face_style_name = TTF_FontFaceStyleName(font : TTFFont*) : LibC::Char*
  fun ttf_glyph_is_provided = TTF_GlyphIsProvided(font : TTFFont*, ch : UInt16) : LibC::Int
  fun ttf_glyph_is_provided32 = TTF_GlyphIsProvided32(font : TTFFont*, ch : UInt32) : LibC::Int
  fun ttf_glyph_metrics = TTF_GlyphMetrics(font : TTFFont*, ch : UInt16, minx : LibC::Int*, maxx : LibC::Int*, miny : LibC::Int*, maxy : LibC::Int*, advance : LibC::Int*) : LibC::Int
  fun ttf_glyph_metrics32 = TTF_GlyphMetrics32(font : TTFFont*, ch : UInt32, minx : LibC::Int*, maxx : LibC::Int*, miny : LibC::Int*, maxy : LibC::Int*, advance : LibC::Int*) : LibC::Int
  fun ttf_size_text = TTF_SizeText(font : TTFFont*, text : LibC::Char*, w : LibC::Int*, h : LibC::Int*) : LibC::Int
  fun ttf_size_utf8 = TTF_SizeUTF8(font : TTFFont*, text : LibC::Char*, w : LibC::Int*, h : LibC::Int*) : LibC::Int
  fun ttf_size_unicode = TTF_SizeUNICODE(font : TTFFont*, text : UInt16*, w : LibC::Int*, h : LibC::Int*) : LibC::Int
  fun ttf_measure_text = TTF_MeasureText(font : TTFFont*, text : LibC::Char*, measure_width : LibC::Int, extent : LibC::Int*, count : LibC::Int*) : LibC::Int
  fun ttf_measure_utf8 = TTF_MeasureUTF8(font : TTFFont*, text : LibC::Char*, measure_width : LibC::Int, extent : LibC::Int*, count : LibC::Int*) : LibC::Int
  fun ttf_measure_unicode = TTF_MeasureUNICODE(font : TTFFont*, text : UInt16*, measure_width : LibC::Int, extent : LibC::Int*, count : LibC::Int*) : LibC::Int
  fun ttf_render_text_solid = TTF_RenderText_Solid(font : TTFFont*, text : LibC::Char*, fg : Color) : Surface*
  fun ttf_render_utf8_solid = TTF_RenderUTF8_Solid(font : TTFFont*, text : LibC::Char*, fg : Color) : Surface*
  fun ttf_render_unicode_solid = TTF_RenderUNICODE_Solid(font : TTFFont*, text : UInt16*, fg : Color) : Surface*
  fun ttf_render_text_solid_wrapped = TTF_RenderText_Solid_Wrapped(font : TTFFont*, text : LibC::Char*, fg : Color, wrap_length : UInt32) : Surface*
  fun ttf_render_utf8_solid_wrapped = TTF_RenderUTF8_Solid_Wrapped(font : TTFFont*, text : LibC::Char*, fg : Color, wrap_length : UInt32) : Surface*
  fun ttf_render_unicode_solid_wrapped = TTF_RenderUNICODE_Solid_Wrapped(font : TTFFont*, text : UInt16*, fg : Color, wrap_length : UInt32) : Surface*
  fun ttf_render_glyph_solid = TTF_RenderGlyph_Solid(font : TTFFont*, ch : UInt16, fg : Color) : Surface*
  fun ttf_render_glyph32_solid = TTF_RenderGlyph32_Solid(font : TTFFont*, ch : UInt32, fg : Color) : Surface*
  fun ttf_render_text_shaded = TTF_RenderText_Shaded(font : TTFFont*, text : LibC::Char*, fg : Color, bg : Color) : Surface*
  fun ttf_render_utf8_shaded = TTF_RenderUTF8_Shaded(font : TTFFont*, text : LibC::Char*, fg : Color, bg : Color) : Surface*
  fun ttf_render_unicode_shaded = TTF_RenderUNICODE_Shaded(font : TTFFont*, text : UInt16*, fg : Color, bg : Color) : Surface*
  fun ttf_render_text_shaded_wrapped = TTF_RenderText_Shaded_Wrapped(font : TTFFont*, text : LibC::Char*, fg : Color, bg : Color, wrap_length : UInt32) : Surface*
  fun ttf_render_utf8_shaded_wrapped = TTF_RenderUTF8_Shaded_Wrapped(font : TTFFont*, text : LibC::Char*, fg : Color, bg : Color, wrap_length : UInt32) : Surface*
  fun ttf_render_unicode_shaded_wrapped = TTF_RenderUNICODE_Shaded_Wrapped(font : TTFFont*, text : UInt16*, fg : Color, bg : Color, wrap_length : UInt32) : Surface*
  fun ttf_render_glyph_shaded = TTF_RenderGlyph_Shaded(font : TTFFont*, ch : UInt16, fg : Color, bg : Color) : Surface*
  fun ttf_render_glyph32_shaded = TTF_RenderGlyph32_Shaded(font : TTFFont*, ch : UInt32, fg : Color, bg : Color) : Surface*
  fun ttf_render_text_blended = TTF_RenderText_Blended(font : TTFFont*, text : LibC::Char*, fg : Color) : Surface*
  fun ttf_render_utf8_blended = TTF_RenderUTF8_Blended(font : TTFFont*, text : LibC::Char*, fg : Color) : Surface*
  fun ttf_render_unicode_blended = TTF_RenderUNICODE_Blended(font : TTFFont*, text : UInt16*, fg : Color) : Surface*
  fun ttf_render_text_blended_wrapped = TTF_RenderText_Blended_Wrapped(font : TTFFont*, text : LibC::Char*, fg : Color, wrap_length : UInt32) : Surface*
  fun ttf_render_utf8_blended_wrapped = TTF_RenderUTF8_Blended_Wrapped(font : TTFFont*, text : LibC::Char*, fg : Color, wrap_length : UInt32) : Surface*
  fun ttf_render_unicode_blended_wrapped = TTF_RenderUNICODE_Blended_Wrapped(font : TTFFont*, text : UInt16*, fg : Color, wrap_length : UInt32) : Surface*
  fun ttf_render_glyph_blended = TTF_RenderGlyph_Blended(font : TTFFont*, ch : UInt16, fg : Color) : Surface*
  fun ttf_render_glyph32_blended = TTF_RenderGlyph32_Blended(font : TTFFont*, ch : UInt32, fg : Color) : Surface*
  fun ttf_render_text_lcd = TTF_RenderText_LCD(font : TTFFont*, text : LibC::Char*, fg : Color, bg : Color) : Surface*
  fun ttf_render_utf8_lcd = TTF_RenderUTF8_LCD(font : TTFFont*, text : LibC::Char*, fg : Color, bg : Color) : Surface*
  fun ttf_render_unicode_lcd = TTF_RenderUNICODE_LCD(font : TTFFont*, text : UInt16*, fg : Color, bg : Color) : Surface*
  fun ttf_render_text_lcd_wrapped = TTF_RenderText_LCD_Wrapped(font : TTFFont*, text : LibC::Char*, fg : Color, bg : Color, wrap_length : UInt32) : Surface*
  fun ttf_render_utf8_lcd_wrapped = TTF_RenderUTF8_LCD_Wrapped(font : TTFFont*, text : LibC::Char*, fg : Color, bg : Color, wrap_length : UInt32) : Surface*
  fun ttf_render_unicode_lcd_wrapped = TTF_RenderUNICODE_LCD_Wrapped(font : TTFFont*, text : UInt16*, fg : Color, bg : Color, wrap_length : UInt32) : Surface*
  fun ttf_render_glyph_lcd = TTF_RenderGlyph_LCD(font : TTFFont*, ch : UInt16, fg : Color, bg : Color) : Surface*
  fun ttf_render_glyph32_lcd = TTF_RenderGlyph32_LCD(font : TTFFont*, ch : UInt32, fg : Color, bg : Color) : Surface*
  fun ttf_close_font = TTF_CloseFont(font : TTFFont*) : Void
  fun ttf_quit = TTF_Quit() : Void
  fun ttf_was_init = TTF_WasInit() : LibC::Int
  fun ttf_get_font_kerning_size_glyphs = TTF_GetFontKerningSizeGlyphs(font : TTFFont*, previous_ch : UInt16, ch : UInt16) : LibC::Int
  fun ttf_get_font_kerning_size_glyphs32 = TTF_GetFontKerningSizeGlyphs32(font : TTFFont*, previous_ch : UInt32, ch : UInt32) : LibC::Int
  fun ttf_set_font_sdf = TTF_SetFontSDF(font : TTFFont*, on_off : SBool) : LibC::Int
  fun ttf_get_font_sdf = TTF_GetFontSDF(font : TTFFont*) : SBool
  fun ttf_set_font_direction = TTF_SetFontDirection(font : TTFFont*, direction : TTFDirection) : LibC::Int
  fun ttf_set_font_script_name = TTF_SetFontScriptName(font : TTFFont*, script : LibC::Char*) : LibC::Int

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

  # SDL_image

  def self.image_version(x)
    (x).value.major = LibSDL::IMAGE_MAJOR_VERSION
    (x).value.minor = LibSDL::IMAGE_MINOR_VERSION
    (x).value.patch = LibSDL::IMAGE_PATCHLEVEL
  end

  def self.image_version_atleast
    ((LibSDL::IMAGE_MAJOR_VERSION >= x) && (LibSDL::IMAGE_MAJOR_VERSION > x || LibSDL::IMAGE_MINOR_VERSION >= y) && (LibSDL::IMAGE_MAJOR_VERSION > x || LibSDL::IMAGE_MINOR_VERSION > y || LibSDL::IMAGE_PATCHLEVEL >= z))
  end

  def self.img_set_error(*args)
    LibSDL.set_error(*args)
  end

  def self.img_get_error
    LibSDL.get_error
  end

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

  # SDL_ttf

  def self.ttf_version(x)
    (x).value.major = LibSDL::TTF_MAJOR_VERSION
    (x).value.minor = LibSDL::TTF_MINOR_VERSION
    (x).value.patch = LibSDL::TTF_PATCHLEVEL
  end

  def self.ttf_version_atleast
    ((LibSDL::TTF_MAJOR_VERSION >= x) && (LibSDL::TTF_MAJOR_VERSION > x || LibSDL::TTF_MINOR_VERSION >= y) && (LibSDL::TTF_MAJOR_VERSION > x || LibSDL::TTF_MINOR_VERSION > y || LibSDL::TTF_PATCHLEVEL >= z))
  end

  def self.ttf_render_text(font, text, fg, bg)
    LibSDL.ttf_render_text_shaded(font, text, fg, bg)
  end

  def self.ttf_render_utf8(font, text, fg, bg)
    LibSDL.ttf_render_utf8_shaded(font, text, fg, bg)
  end

  def self.ttf_render_unicode(font, text, fg, bg)
    LibSDL.ttf_render_unicode_shaded(font, text, fg, bg)
  end

  def self.ttf_set_error(*args)
    LibSDL.set_error(*args)
  end
  
  def self.ttf_get_error
    LibSDL.get_error
  end
end
