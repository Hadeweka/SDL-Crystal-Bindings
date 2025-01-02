  struct Surface
    flags : SurfaceFlags
    format : PixelFormat
    w : LibC::Int
    h : LibC::Int
    pitch : LibC::Int
    pixels : Void*
    refcount : LibC::Int
    reserverd : Void*
  end
