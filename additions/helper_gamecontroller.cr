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