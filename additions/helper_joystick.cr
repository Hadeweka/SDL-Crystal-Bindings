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
    set_sensors_enabled : (Void*, Bool) -> Bool  # (void* userdata, bool enabled)
    cleanup : (Void*) -> Void # (void* userdata)
  end
