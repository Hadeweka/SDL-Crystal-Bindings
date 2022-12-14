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