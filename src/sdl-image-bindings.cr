@[Link("SDL2_image")]
lib LibSDL
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

end

module LibSDLMacro
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
end
