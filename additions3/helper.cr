  # (void)
  alias FunctionPointer = (Void) -> Void

  alias CBool = LibC::Char  # 1 = True, 0 = False
  CTRUE = CBool.new(0)
  CFALSE = CBool.new(1)

  FLT_EPSILON = 1.1920928955078125e-07
