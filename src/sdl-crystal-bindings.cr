@[Link("SDL2")]
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

  # additions/helper_types.cr_

  enum SBool
    SDL_FALSE = 0
    SDL_TRUE = 1
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

  type AudioStream = Void
  type AudioFormat = UInt16
  type AudioDeviceID = UInt32

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

  # additions/helper_audio.cr_

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
    BLENDMODE_INVALID = 0x7FFFFFF
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

  # additions/helper_event.cr_

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

  type SysWMmsg = Void

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
    POLLSENTINEL = 0x700
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
    text : Char[TEXTEDITINGEVENT_TEXT_SIZE]
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
    text : Char[TEXTINPUTEVENT_TEXT_SIZE]
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

  # additions/helper_gamecontroller.cr_

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

  type GameController = Void

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

  type GestureID = Int64

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

  type Haptic = Void

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

  # additions/helper_haptic.cr_

  union HapticEffect
    type : UInt16
    constant : HapticConstant
    periodic : HapticPeriodic
    condition : HapticCondition
    ramp : HapticRamp
    leftright : HapticLeftRight
    custom : HapticCustom
  end

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

  type Joystick = Void
  type JoystickGUID = GUID
  type JoystickID = Int32

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

  # additions/helper_joystick.cr_

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

  SDLK_SCANCODE_MASK = (1 << 30)

  type Keycode = Int32

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
    K_a = 97
    K_b = 98
    K_c = 99
    K_d = 100
    K_e = 101
    K_f = 102
    K_g = 103
    K_h = 104
    K_i = 105
    K_j = 106
    K_k = 107
    K_l = 108
    K_m = 109
    K_n = 110
    K_o = 111
    K_p = 112
    K_q = 113
    K_r = 114
    K_s = 115
    K_t = 116
    K_u = 117
    K_v = 118
    K_w = 119
    K_x = 120
    K_y = 121
    K_z = 122
    K_CAPSLOCK = Scancode::SCANCODE_CAPSLOCK
    K_F1 = Scancode::SCANCODE_F1
    K_F2 = Scancode::SCANCODE_F2
    K_F3 = Scancode::SCANCODE_F3
    K_F4 = Scancode::SCANCODE_F4
    K_F5 = Scancode::SCANCODE_F5
    K_F6 = Scancode::SCANCODE_F6
    K_F7 = Scancode::SCANCODE_F7
    K_F8 = Scancode::SCANCODE_F8
    K_F9 = Scancode::SCANCODE_F9
    K_F10 = Scancode::SCANCODE_F10
    K_F11 = Scancode::SCANCODE_F11
    K_F12 = Scancode::SCANCODE_F12
    K_PRINTSCREEN = Scancode::SCANCODE_PRINTSCREEN
    K_SCROLLLOCK = Scancode::SCANCODE_SCROLLLOCK
    K_PAUSE = Scancode::SCANCODE_PAUSE
    K_INSERT = Scancode::SCANCODE_INSERT
    K_HOME = Scancode::SCANCODE_HOME
    K_PAGEUP = Scancode::SCANCODE_PAGEUP
    K_DELETE = 92
    K_END = Scancode::SCANCODE_END
    K_PAGEDOWN = Scancode::SCANCODE_PAGEDOWN
    K_RIGHT = Scancode::SCANCODE_RIGHT
    K_LEFT = Scancode::SCANCODE_LEFT
    K_DOWN = Scancode::SCANCODE_DOWN
    K_UP = Scancode::SCANCODE_UP
    K_NUMLOCKCLEAR = Scancode::SCANCODE_NUMLOCKCLEAR
    K_KP_DIVIDE = Scancode::SCANCODE_KP_DIVIDE
    K_KP_MULTIPLY = Scancode::SCANCODE_KP_MULTIPLY
    K_KP_MINUS = Scancode::SCANCODE_KP_MINUS
    K_KP_PLUS = Scancode::SCANCODE_KP_PLUS
    K_KP_ENTER = Scancode::SCANCODE_KP_ENTER
    K_KP_1 = Scancode::SCANCODE_KP_1
    K_KP_2 = Scancode::SCANCODE_KP_2
    K_KP_3 = Scancode::SCANCODE_KP_3
    K_KP_4 = Scancode::SCANCODE_KP_4
    K_KP_5 = Scancode::SCANCODE_KP_5
    K_KP_6 = Scancode::SCANCODE_KP_6
    K_KP_7 = Scancode::SCANCODE_KP_7
    K_KP_8 = Scancode::SCANCODE_KP_8
    K_KP_9 = Scancode::SCANCODE_KP_9
    K_KP_0 = Scancode::SCANCODE_KP_0
    K_KP_PERIOD = Scancode::SCANCODE_KP_PERIOD
    K_APPLICATION = Scancode::SCANCODE_APPLICATION
    K_POWER = Scancode::SCANCODE_POWER
    K_KP_EQUALS = Scancode::SCANCODE_KP_EQUALS
    K_F13 = Scancode::SCANCODE_F13
    K_F14 = Scancode::SCANCODE_F14
    K_F15 = Scancode::SCANCODE_F15
    K_F16 = Scancode::SCANCODE_F16
    K_F17 = Scancode::SCANCODE_F17
    K_F18 = Scancode::SCANCODE_F18
    K_F19 = Scancode::SCANCODE_F19
    K_F20 = Scancode::SCANCODE_F20
    K_F21 = Scancode::SCANCODE_F21
    K_F22 = Scancode::SCANCODE_F22
    K_F23 = Scancode::SCANCODE_F23
    K_F24 = Scancode::SCANCODE_F24
    K_EXECUTE = Scancode::SCANCODE_EXECUTE
    K_HELP = Scancode::SCANCODE_HELP
    K_MENU = Scancode::SCANCODE_MENU
    K_SELECT = Scancode::SCANCODE_SELECT
    K_STOP = Scancode::SCANCODE_STOP
    K_AGAIN = Scancode::SCANCODE_AGAIN
    K_UNDO = Scancode::SCANCODE_UNDO
    K_CUT = Scancode::SCANCODE_CUT
    K_COPY = Scancode::SCANCODE_COPY
    K_PASTE = Scancode::SCANCODE_PASTE
    K_FIND = Scancode::SCANCODE_FIND
    K_MUTE = Scancode::SCANCODE_MUTE
    K_VOLUMEUP = Scancode::SCANCODE_VOLUMEUP
    K_VOLUMEDOWN = Scancode::SCANCODE_VOLUMEDOWN
    K_KP_COMMA = Scancode::SCANCODE_KP_COMMA
    K_KP_EQUALSAS400 = Scancode::SCANCODE_KP_EQUALSAS400
    K_ALTERASE = Scancode::SCANCODE_ALTERASE
    K_SYSREQ = Scancode::SCANCODE_SYSREQ
    K_CANCEL = Scancode::SCANCODE_CANCEL
    K_CLEAR = Scancode::SCANCODE_CLEAR
    K_PRIOR = Scancode::SCANCODE_PRIOR
    K_RETURN2 = Scancode::SCANCODE_RETURN2
    K_SEPARATOR = Scancode::SCANCODE_SEPARATOR
    K_OUT = Scancode::SCANCODE_OUT
    K_OPER = Scancode::SCANCODE_OPER
    K_CLEARAGAIN = Scancode::SCANCODE_CLEARAGAIN
    K_CRSEL = Scancode::SCANCODE_CRSEL
    K_EXSEL = Scancode::SCANCODE_EXSEL
    K_KP_00 = Scancode::SCANCODE_KP_00
    K_KP_000 = Scancode::SCANCODE_KP_000
    K_THOUSANDSSEPARATOR = Scancode::SCANCODE_THOUSANDSSEPARATOR
    K_DECIMALSEPARATOR = Scancode::SCANCODE_DECIMALSEPARATOR
    K_CURRENCYUNIT = Scancode::SCANCODE_CURRENCYUNIT
    K_CURRENCYSUBUNIT = Scancode::SCANCODE_CURRENCYSUBUNIT
    K_KP_LEFTPAREN = Scancode::SCANCODE_KP_LEFTPAREN
    K_KP_RIGHTPAREN = Scancode::SCANCODE_KP_RIGHTPAREN
    K_KP_LEFTBRACE = Scancode::SCANCODE_KP_LEFTBRACE
    K_KP_RIGHTBRACE = Scancode::SCANCODE_KP_RIGHTBRACE
    K_KP_TAB = Scancode::SCANCODE_KP_TAB
    K_KP_BACKSPACE = Scancode::SCANCODE_KP_BACKSPACE
    K_KP_A = Scancode::SCANCODE_KP_A
    K_KP_B = Scancode::SCANCODE_KP_B
    K_KP_C = Scancode::SCANCODE_KP_C
    K_KP_D = Scancode::SCANCODE_KP_D
    K_KP_E = Scancode::SCANCODE_KP_E
    K_KP_F = Scancode::SCANCODE_KP_F
    K_KP_XOR = Scancode::SCANCODE_KP_XOR
    K_KP_POWER = Scancode::SCANCODE_KP_POWER
    K_KP_PERCENT = Scancode::SCANCODE_KP_PERCENT
    K_KP_LESS = Scancode::SCANCODE_KP_LESS
    K_KP_GREATER = Scancode::SCANCODE_KP_GREATER
    K_KP_AMPERSAND = Scancode::SCANCODE_KP_AMPERSAND
    K_KP_DBLAMPERSAND = Scancode::SCANCODE_KP_DBLAMPERSAND
    K_KP_VERTICALBAR = Scancode::SCANCODE_KP_VERTICALBAR
    K_KP_DBLVERTICALBAR = Scancode::SCANCODE_KP_DBLVERTICALBAR
    K_KP_COLON = Scancode::SCANCODE_KP_COLON
    K_KP_HASH = Scancode::SCANCODE_KP_HASH
    K_KP_SPACE = Scancode::SCANCODE_KP_SPACE
    K_KP_AT = Scancode::SCANCODE_KP_AT
    K_KP_EXCLAM = Scancode::SCANCODE_KP_EXCLAM
    K_KP_MEMSTORE = Scancode::SCANCODE_KP_MEMSTORE
    K_KP_MEMRECALL = Scancode::SCANCODE_KP_MEMRECALL
    K_KP_MEMCLEAR = Scancode::SCANCODE_KP_MEMCLEAR
    K_KP_MEMADD = Scancode::SCANCODE_KP_MEMADD
    K_KP_MEMSUBTRACT = Scancode::SCANCODE_KP_MEMSUBTRACT
    K_KP_MEMMULTIPLY = Scancode::SCANCODE_KP_MEMMULTIPLY
    K_KP_MEMDIVIDE = Scancode::SCANCODE_KP_MEMDIVIDE
    K_KP_PLUSMINUS = Scancode::SCANCODE_KP_PLUSMINUS
    K_KP_CLEAR = Scancode::SCANCODE_KP_CLEAR
    K_KP_CLEARENTRY = Scancode::SCANCODE_KP_CLEARENTRY
    K_KP_BINARY = Scancode::SCANCODE_KP_BINARY
    K_KP_OCTAL = Scancode::SCANCODE_KP_OCTAL
    K_KP_DECIMAL = Scancode::SCANCODE_KP_DECIMAL
    K_KP_HEXADECIMAL = Scancode::SCANCODE_KP_HEXADECIMAL
    K_LCTRL = Scancode::SCANCODE_LCTRL
    K_LSHIFT = Scancode::SCANCODE_LSHIFT
    K_LALT = Scancode::SCANCODE_LALT
    K_LGUI = Scancode::SCANCODE_LGUI
    K_RCTRL = Scancode::SCANCODE_RCTRL
    K_RSHIFT = Scancode::SCANCODE_RSHIFT
    K_RALT = Scancode::SCANCODE_RALT
    K_RGUI = Scancode::SCANCODE_RGUI
    K_MODE = Scancode::SCANCODE_MODE
    K_AUDIONEXT = Scancode::SCANCODE_AUDIONEXT
    K_AUDIOPREV = Scancode::SCANCODE_AUDIOPREV
    K_AUDIOSTOP = Scancode::SCANCODE_AUDIOSTOP
    K_AUDIOPLAY = Scancode::SCANCODE_AUDIOPLAY
    K_AUDIOMUTE = Scancode::SCANCODE_AUDIOMUTE
    K_MEDIASELECT = Scancode::SCANCODE_MEDIASELECT
    K_WWW = Scancode::SCANCODE_WWW
    K_MAIL = Scancode::SCANCODE_MAIL
    K_CALCULATOR = Scancode::SCANCODE_CALCULATOR
    K_COMPUTER = Scancode::SCANCODE_COMPUTER
    K_AC_SEARCH = Scancode::SCANCODE_AC_SEARCH
    K_AC_HOME = Scancode::SCANCODE_AC_HOME
    K_AC_BACK = Scancode::SCANCODE_AC_BACK
    K_AC_FORWARD = Scancode::SCANCODE_AC_FORWARD
    K_AC_STOP = Scancode::SCANCODE_AC_STOP
    K_AC_REFRESH = Scancode::SCANCODE_AC_REFRESH
    K_AC_BOOKMARKS = Scancode::SCANCODE_AC_BOOKMARKS
    K_BRIGHTNESSDOWN = Scancode::SCANCODE_BRIGHTNESSDOWN
    K_BRIGHTNESSUP = Scancode::SCANCODE_BRIGHTNESSUP
    K_DISPLAYSWITCH = Scancode::SCANCODE_DISPLAYSWITCH
    K_KBDILLUMTOGGLE = Scancode::SCANCODE_KBDILLUMTOGGLE
    K_KBDILLUMDOWN = Scancode::SCANCODE_KBDILLUMDOWN
    K_KBDILLUMUP = Scancode::SCANCODE_KBDILLUMUP
    K_EJECT = Scancode::SCANCODE_EJECT
    K_SLEEP = Scancode::SCANCODE_SLEEP
    K_APP1 = Scancode::SCANCODE_APP1
    K_APP2 = Scancode::SCANCODE_APP2
    K_AUDIOREWIND = Scancode::SCANCODE_AUDIOREWIND
    K_AUDIOFASTFORWARD = Scancode::SCANCODE_AUDIOFASTFORWARD
    K_SOFTLEFT = Scancode::SCANCODE_SOFTLEFT
    K_SOFTRIGHT = Scancode::SCANCODE_SOFTRIGHT
    K_CALL = Scancode::SCANCODE_CALL
    K_ENDCALL = Scancode::SCANCODE_ENDCALL
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

  type Cursor = Void

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

  # additions/helper_pixels.cr_

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

  type Renderer = Void
  type Texture = Void

  enum RendererFlags
    RENDERER_SOFTWARE = 0x00000001
    RENDERER_ACCELERATED = 0x00000002
    RENDERER_PRESENTVSYNC = 0x00000004
    RENDERER_TARGETTEXTURE = 0x00000008
  end

  enum ScaleMode
    ScaleModeNearest
    ScaleModeLinear
    ScaleModeBest
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

  # additions/helper_rwops.cr_

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

  type Sensor = Void
  type SensorID = Int32

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

  # additions/helper_shape.cr_

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

  type BlitMap = Void

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

  type TouchID = Int64
  type FingerID = Int64

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

  # additions/helper_video.cr_

  # (SDL_Window* win, const SDL_Point* area, void* data)
  alias HitTest = (Window*, Point*, Void*) -> HitTestResult

  # SDL_video

  WINDOWPOS_UNDEFINED_MASK = 0x1FF0000
  WINDOWPOS_UNDEFINED = WINDOWPOS_UNDEFINED_DISPLAY(0)
  WINDOWPOS_CENTERED_MASK = 0x2FF0000
  WINDOWPOS_CENTERED = WINDOWPOS_CENTERED_DISPLAY(0)

  type Window = Void
  type GLContext = Void*

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

end

module LibSDLMacro
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

  # TODO

  def self.load_bmp(file)
    LibSDL.load_bmp_rw(LibSDL.rwfrom_file(file, "rb"), 1)
  end
end
