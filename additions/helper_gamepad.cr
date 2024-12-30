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
