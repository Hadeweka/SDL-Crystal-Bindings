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