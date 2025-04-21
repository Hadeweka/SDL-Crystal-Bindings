@[Link("SDL3_image")]
lib LibSDL
  # SDL_image

  IMAGE_MAJOR_VERSION = 3
  IMAGE_MINOR_VERSION = 3
  IMAGE_MICRO_VERSION = 0
  IMAGE_VERSION = (((IMAGE_MAJOR_VERSION)*1000000 + (IMAGE_MINOR_VERSION)*1000 + (IMAGE_MICRO_VERSION)))

  struct IMGAnimation
    w : LibC::Int
    h : LibC::Int
    count : LibC::Int
    frames : Surface**
    delays : LibC::Int*
  end

  fun img_version = IMG_Version() : LibC::Int
  fun img_load_typed_io = IMG_LoadTyped_IO(src : IOStream*, closeio : CBool, type : LibC::Char*) : Surface*
  fun img_load = IMG_Load(file : LibC::Char*) : Surface*
  fun img_load_io = IMG_Load_IO(src : IOStream*, closeio : CBool) : Surface*
  fun img_load_texture = IMG_LoadTexture(renderer : Renderer*, file : LibC::Char*) : Texture*
  fun img_load_texture_io = IMG_LoadTexture_IO(renderer : Renderer*, src : IOStream*, closeio : CBool) : Texture*
  fun img_load_texture_typed_io = IMG_LoadTextureTyped_IO(renderer : Renderer*, src : IOStream*, closeio : CBool, type : LibC::Char*) : Texture*
  fun img_is_avif = IMG_isAVIF(src : IOStream*) : CBool
  fun img_is_ico = IMG_isICO(src : IOStream*) : CBool
  fun img_is_cur = IMG_isCUR(src : IOStream*) : CBool
  fun img_is_bmp = IMG_isBMP(src : IOStream*) : CBool
  fun img_is_gif = IMG_isGIF(src : IOStream*) : CBool
  fun img_is_jpg = IMG_isJPG(src : IOStream*) : CBool
  fun img_is_jxl = IMG_isJXL(src : IOStream*) : CBool
  fun img_is_lbm = IMG_isLBM(src : IOStream*) : CBool
  fun img_is_pcx = IMG_isPCX(src : IOStream*) : CBool
  fun img_is_png = IMG_isPNG(src : IOStream*) : CBool
  fun img_is_pnm = IMG_isPNM(src : IOStream*) : CBool
  fun img_is_svg = IMG_isSVG(src : IOStream*) : CBool
  fun img_is_qoi = IMG_isQOI(src : IOStream*) : CBool
  fun img_is_tif = IMG_isTIF(src : IOStream*) : CBool
  fun img_is_xcf = IMG_isXCF(src : IOStream*) : CBool
  fun img_is_xpm = IMG_isXPM(src : IOStream*) : CBool
  fun img_is_xv = IMG_isXV(src : IOStream*) : CBool
  fun img_is_webp = IMG_isWEBP(src : IOStream*) : CBool
  fun img_load_avif_io = IMG_LoadAVIF_IO(src : IOStream*) : Surface*
  fun img_load_ico_io = IMG_LoadICO_IO(src : IOStream*) : Surface*
  fun img_load_cur_io = IMG_LoadCUR_IO(src : IOStream*) : Surface*
  fun img_load_bmp_io = IMG_LoadBMP_IO(src : IOStream*) : Surface*
  fun img_load_gif_io = IMG_LoadGIF_IO(src : IOStream*) : Surface*
  fun img_load_jpg_io = IMG_LoadJPG_IO(src : IOStream*) : Surface*
  fun img_load_jxl_io = IMG_LoadJXL_IO(src : IOStream*) : Surface*
  fun img_load_lbm_io = IMG_LoadLBM_IO(src : IOStream*) : Surface*
  fun img_load_pcx_io = IMG_LoadPCX_IO(src : IOStream*) : Surface*
  fun img_load_png_io = IMG_LoadPNG_IO(src : IOStream*) : Surface*
  fun img_load_pnm_io = IMG_LoadPNM_IO(src : IOStream*) : Surface*
  fun img_load_svg_io = IMG_LoadSVG_IO(src : IOStream*) : Surface*
  fun img_load_qoi_io = IMG_LoadQOI_IO(src : IOStream*) : Surface*
  fun img_load_tga_io = IMG_LoadTGA_IO(src : IOStream*) : Surface*
  fun img_load_tif_io = IMG_LoadTIF_IO(src : IOStream*) : Surface*
  fun img_load_xcf_io = IMG_LoadXCF_IO(src : IOStream*) : Surface*
  fun img_load_xpm_io = IMG_LoadXPM_IO(src : IOStream*) : Surface*
  fun img_load_xv_io = IMG_LoadXV_IO(src : IOStream*) : Surface*
  fun img_load_webp_io = IMG_LoadWEBP_IO(src : IOStream*) : Surface*
  fun img_load_sized_svg_io = IMG_LoadSizedSVG_IO(src : IOStream*, width : LibC::Int, height : LibC::Int) : Surface*
  fun img_read_xpmfrom_array = IMG_ReadXPMFromArray(xpm : LibC::Char**) : Surface*
  fun img_read_xpmfrom_array_to_rgb888 = IMG_ReadXPMFromArrayToRGB888(xpm : LibC::Char**) : Surface*
  fun img_save_avif = IMG_SaveAVIF(surface : Surface*, file : LibC::Char*, quality : LibC::Int) : CBool
  fun img_save_avif_io = IMG_SaveAVIF_IO(surface : Surface*, dst : IOStream*, closeio : CBool, quality : LibC::Int) : CBool
  fun img_save_png = IMG_SavePNG(surface : Surface*, file : LibC::Char*) : CBool
  fun img_save_png_io = IMG_SavePNG_IO(surface : Surface*, dst : IOStream*, closeio : CBool) : CBool
  fun img_save_jpg = IMG_SaveJPG(surface : Surface*, file : LibC::Char*, quality : LibC::Int) : CBool
  fun img_save_jpg_io = IMG_SaveJPG_IO(surface : Surface*, dst : IOStream*, closeio : CBool, quality : LibC::Int) : CBool
  fun img_load_animation = IMG_LoadAnimation(file : LibC::Char*) : IMGAnimation*
  fun img_load_animation_io = IMG_LoadAnimation_IO(src : IOStream*, closeio : CBool) : IMGAnimation*
  fun img_load_animation_typed_io = IMG_LoadAnimationTyped_IO(src : IOStream*, closeio : CBool, type : LibC::Char*) : IMGAnimation*
  fun img_free_animation = IMG_FreeAnimation(anim : IMGAnimation*) : Void
  fun img_load_gifanimation_io = IMG_LoadGIFAnimation_IO(src : IOStream*) : IMGAnimation*
  fun img_load_webpanimation_io = IMG_LoadWEBPAnimation_IO(src : IOStream*) : IMGAnimation*

end

module LibSDLMacro
  # SDL_image

  macro image_version_atleast(x, y, z)
    (LibSDL::IMAGE_MAJOR_VERSION >= {{x}}) && (LibSDL::IMAGE_MAJOR_VERSION > {{x}} || LibSDL::IMAGE_MINOR_VERSION >= {{y}}) && (LibSDL::IMAGE_MAJOR_VERSION > {{x}} || LibSDL::IMAGE_MINOR_VERSION > {{y}} || LibSDL::IMAGE_PATCHLEVEL >= {{z}})
  end
end
