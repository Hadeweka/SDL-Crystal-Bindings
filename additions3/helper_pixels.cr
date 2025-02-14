  enum PixelFormat
    UNKNOWN = 0
    INDEX1LSB = 0x11100100
    INDEX1MSB = 0x11200100
    INDEX2LSB = 0x1c100200
    INDEX2MSB = 0x1c200200
    INDEX4LSB = 0x12100400
    INDEX4MSB = 0x12200400
    INDEX8 = 0x13000801
    RGB332 = 0x14110801
    XRGB4444 = 0x15120c02
    XBGR4444 = 0x15520c02
    XRGB1555 = 0x15130f02
    XBGR1555 = 0x15530f02
    ARGB4444 = 0x15321002
    RGBA4444 = 0x15421002
    ABGR4444 = 0x15721002
    BGRA4444 = 0x15821002
    ARGB1555 = 0x15331002
    RGBA5551 = 0x15441002
    ABGR1555 = 0x15731002
    BGRA5551 = 0x15841002
    RGB565 = 0x15151002
    BGR565 = 0x15551002
    RGB24 = 0x17101803
    BGR24 = 0x17401803
    XRGB8888 = 0x16161804
    RGBX8888 = 0x16261804
    XBGR8888 = 0x16561804
    BGRX8888 = 0x16661804
    ARGB8888 = 0x16362004
    RGBA8888 = 0x16462004
    ABGR8888 = 0x16762004
    BGRA8888 = 0x16862004
    XRGB2101010 = 0x16172004
    XBGR2101010 = 0x16572004
    ARGB2101010 = 0x16372004
    ABGR2101010 = 0x16772004
    RGB48 = 0x18103006
    BGR48 = 0x18403006
    RGBA64 = 0x18204008
    ARGB64 = 0x18304008
    BGRA64 = 0x18504008
    ABGR64 = 0x18604008
    RGB48_FLOAT = 0x1a103006
    BGR48_FLOAT = 0x1a403006
    RGBA64_FLOAT = 0x1a204008
    ARGB64_FLOAT = 0x1a304008
    BGRA64_FLOAT = 0x1a504008
    ABGR64_FLOAT = 0x1a604008
    RGB96_FLOAT = 0x1b10600c
    BGR96_FLOAT = 0x1b40600c
    RGBA128_FLOAT = 0x1b208010
    ARGB128_FLOAT = 0x1b308010
    BGRA128_FLOAT = 0x1b508010
    ABGR128_FLOAT = 0x1b608010
    YV12 = 0x32315659
    IYUV = 0x56555949
    YUY2 = 0x32595559
    UYVY = 0x59565955
    YVYU = 0x55595659
    NV12 = 0x3231564e
    NV21 = 0x3132564e
    P010 = 0x30313050
    EXTERNAL_OES = 0x2053454f
    # NOTE: The following definitions ONLY hold for little endian - if you are using big endian (why), please open an issue report
    RGBA32 = ABGR8888
    ARGB32 = BGRA8888
    BGRA32 = ARGB8888
    ABGR32 = RGBA8888
    RGBX32 = XBGR8888
    XRGB32 = BGRX8888
    BGRX32 = XRGB8888
    XBGR32 = RGBX8888
  end
