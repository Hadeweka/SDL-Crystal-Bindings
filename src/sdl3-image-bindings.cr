@[Link("SDL3_image")]
lib LibSDL
  # SDL_image

  IMAGE_MAJOR_VERSION = 3
  IMAGE_MINOR_VERSION = 4
  IMAGE_MICRO_VERSION = 4
  IMAGE_VERSION = (((IMAGE_MAJOR_VERSION)*1000000 + (IMAGE_MINOR_VERSION)*1000 + (IMAGE_MICRO_VERSION)))
  IMG_PROP_ANIMATION_ENCODER_CREATE_FILENAME_STRING = "SDL_image.animation_encoder.create.filename"
  IMG_PROP_ANIMATION_ENCODER_CREATE_IOSTREAM_POINTER = "SDL_image.animation_encoder.create.iostream"
  IMG_PROP_ANIMATION_ENCODER_CREATE_IOSTREAM_AUTOCLOSE_BOOLEAN = "SDL_image.animation_encoder.create.iostream.autoclose"
  IMG_PROP_ANIMATION_ENCODER_CREATE_TYPE_STRING = "SDL_image.animation_encoder.create.type"
  IMG_PROP_ANIMATION_ENCODER_CREATE_QUALITY_NUMBER = "SDL_image.animation_encoder.create.quality"
  IMG_PROP_ANIMATION_ENCODER_CREATE_TIMEBASE_NUMERATOR_NUMBER = "SDL_image.animation_encoder.create.timebase.numerator"
  IMG_PROP_ANIMATION_ENCODER_CREATE_TIMEBASE_DENOMINATOR_NUMBER = "SDL_image.animation_encoder.create.timebase.denominator"
  IMG_PROP_ANIMATION_ENCODER_CREATE_AVIF_MAX_THREADS_NUMBER = "SDL_image.animation_encoder.create.avif.max_threads"
  IMG_PROP_ANIMATION_ENCODER_CREATE_AVIF_KEYFRAME_INTERVAL_NUMBER = "SDL_image.animation_encoder.create.avif.keyframe_interval"
  IMG_PROP_ANIMATION_ENCODER_CREATE_GIF_USE_LUT_BOOLEAN = "SDL_image.animation_encoder.create.gif.use_lut"
  IMG_PROP_ANIMATION_DECODER_CREATE_FILENAME_STRING = "SDL_image.animation_decoder.create.filename"
  IMG_PROP_ANIMATION_DECODER_CREATE_IOSTREAM_POINTER = "SDL_image.animation_decoder.create.iostream"
  IMG_PROP_ANIMATION_DECODER_CREATE_IOSTREAM_AUTOCLOSE_BOOLEAN = "SDL_image.animation_decoder.create.iostream.autoclose"
  IMG_PROP_ANIMATION_DECODER_CREATE_TYPE_STRING = "SDL_image.animation_decoder.create.type"
  IMG_PROP_ANIMATION_DECODER_CREATE_TIMEBASE_NUMERATOR_NUMBER = "SDL_image.animation_decoder.create.timebase.numerator"
  IMG_PROP_ANIMATION_DECODER_CREATE_TIMEBASE_DENOMINATOR_NUMBER = "SDL_image.animation_decoder.create.timebase.denominator"
  IMG_PROP_ANIMATION_DECODER_CREATE_AVIF_MAX_THREADS_NUMBER = "SDL_image.animation_decoder.create.avif.max_threads"
  IMG_PROP_ANIMATION_DECODER_CREATE_AVIF_ALLOW_INCREMENTAL_BOOLEAN = "SDL_image.animation_decoder.create.avif.allow_incremental"
  IMG_PROP_ANIMATION_DECODER_CREATE_AVIF_ALLOW_PROGRESSIVE_BOOLEAN = "SDL_image.animation_decoder.create.avif.allow_progressive"
  IMG_PROP_ANIMATION_DECODER_CREATE_GIF_TRANSPARENT_COLOR_INDEX_NUMBER = "SDL_image.animation_encoder.create.gif.transparent_color_index"
  IMG_PROP_ANIMATION_DECODER_CREATE_GIF_NUM_COLORS_NUMBER = "SDL_image.animation_encoder.create.gif.num_colors"
  IMG_PROP_METADATA_IGNORE_PROPS_BOOLEAN = "SDL_image.metadata.ignore_props"
  IMG_PROP_METADATA_DESCRIPTION_STRING = "SDL_image.metadata.description"
  IMG_PROP_METADATA_COPYRIGHT_STRING = "SDL_image.metadata.copyright"
  IMG_PROP_METADATA_TITLE_STRING = "SDL_image.metadata.title"
  IMG_PROP_METADATA_AUTHOR_STRING = "SDL_image.metadata.author"
  IMG_PROP_METADATA_CREATION_TIME_STRING = "SDL_image.metadata.creation_time"
  IMG_PROP_METADATA_FRAME_COUNT_NUMBER = "SDL_image.metadata.frame_count"
  IMG_PROP_METADATA_LOOP_COUNT_NUMBER = "SDL_image.metadata.loop_count"

  type IMGAnimationEncoder = Void
  type IMGAnimationDecoder = Void

  enum IMGAnimationDecoderStatus
    INVALID = -1
    OK
    FAILED
    COMPLETE
  end

  struct IMGAnimation
    w : LibC::Int
    h : LibC::Int
    count : LibC::Int
    frames : Surface**
    delays : LibC::Int*
  end

  fun img_version = IMG_Version() : LibC::Int
  fun img_load = IMG_Load(file : LibC::Char*) : Surface*
  fun img_load_io = IMG_Load_IO(src : IOStream*, closeio : CBool) : Surface*
  fun img_load_typed_io = IMG_LoadTyped_IO(src : IOStream*, closeio : CBool, type : LibC::Char*) : Surface*
  fun img_load_texture = IMG_LoadTexture(renderer : Renderer*, file : LibC::Char*) : Texture*
  fun img_load_texture_io = IMG_LoadTexture_IO(renderer : Renderer*, src : IOStream*, closeio : CBool) : Texture*
  fun img_load_texture_typed_io = IMG_LoadTextureTyped_IO(renderer : Renderer*, src : IOStream*, closeio : CBool, type : LibC::Char*) : Texture*
  fun img_load_gputexture = IMG_LoadGPUTexture(device : GPUDevice*, copy_pass : GPUCopyPass*, file : LibC::Char*, width : LibC::Int*, height : LibC::Int*) : GPUTexture*
  fun img_load_gputexture_io = IMG_LoadGPUTexture_IO(device : GPUDevice*, copy_pass : GPUCopyPass*, src : IOStream*, closeio : CBool, width : LibC::Int*, height : LibC::Int*) : GPUTexture*
  fun img_load_gputexture_typed_io = IMG_LoadGPUTextureTyped_IO(device : GPUDevice*, copy_pass : GPUCopyPass*, src : IOStream*, closeio : CBool, type : LibC::Char*, width : LibC::Int*, height : LibC::Int*) : GPUTexture*
  fun img_get_clipboard_image = IMG_GetClipboardImage() : Surface*
  fun img_is_ani = IMG_isANI(src : IOStream*) : CBool
  fun img_is_avif = IMG_isAVIF(src : IOStream*) : CBool
  fun img_is_cur = IMG_isCUR(src : IOStream*) : CBool
  fun img_is_bmp = IMG_isBMP(src : IOStream*) : CBool
  fun img_is_gif = IMG_isGIF(src : IOStream*) : CBool
  fun img_is_ico = IMG_isICO(src : IOStream*) : CBool
  fun img_is_jpg = IMG_isJPG(src : IOStream*) : CBool
  fun img_is_jxl = IMG_isJXL(src : IOStream*) : CBool
  fun img_is_lbm = IMG_isLBM(src : IOStream*) : CBool
  fun img_is_pcx = IMG_isPCX(src : IOStream*) : CBool
  fun img_is_png = IMG_isPNG(src : IOStream*) : CBool
  fun img_is_pnm = IMG_isPNM(src : IOStream*) : CBool
  fun img_is_qoi = IMG_isQOI(src : IOStream*) : CBool
  fun img_is_svg = IMG_isSVG(src : IOStream*) : CBool
  fun img_is_tif = IMG_isTIF(src : IOStream*) : CBool
  fun img_is_webp = IMG_isWEBP(src : IOStream*) : CBool
  fun img_is_xcf = IMG_isXCF(src : IOStream*) : CBool
  fun img_is_xpm = IMG_isXPM(src : IOStream*) : CBool
  fun img_is_xv = IMG_isXV(src : IOStream*) : CBool
  fun img_load_avif_io = IMG_LoadAVIF_IO(src : IOStream*) : Surface*
  fun img_load_bmp_io = IMG_LoadBMP_IO(src : IOStream*) : Surface*
  fun img_load_cur_io = IMG_LoadCUR_IO(src : IOStream*) : Surface*
  fun img_load_gif_io = IMG_LoadGIF_IO(src : IOStream*) : Surface*
  fun img_load_ico_io = IMG_LoadICO_IO(src : IOStream*) : Surface*
  fun img_load_jpg_io = IMG_LoadJPG_IO(src : IOStream*) : Surface*
  fun img_load_jxl_io = IMG_LoadJXL_IO(src : IOStream*) : Surface*
  fun img_load_lbm_io = IMG_LoadLBM_IO(src : IOStream*) : Surface*
  fun img_load_pcx_io = IMG_LoadPCX_IO(src : IOStream*) : Surface*
  fun img_load_png_io = IMG_LoadPNG_IO(src : IOStream*) : Surface*
  fun img_load_pnm_io = IMG_LoadPNM_IO(src : IOStream*) : Surface*
  fun img_load_svg_io = IMG_LoadSVG_IO(src : IOStream*) : Surface*
  fun img_load_sized_svg_io = IMG_LoadSizedSVG_IO(src : IOStream*, width : LibC::Int, height : LibC::Int) : Surface*
  fun img_load_qoi_io = IMG_LoadQOI_IO(src : IOStream*) : Surface*
  fun img_load_tga_io = IMG_LoadTGA_IO(src : IOStream*) : Surface*
  fun img_load_tif_io = IMG_LoadTIF_IO(src : IOStream*) : Surface*
  fun img_load_webp_io = IMG_LoadWEBP_IO(src : IOStream*) : Surface*
  fun img_load_xcf_io = IMG_LoadXCF_IO(src : IOStream*) : Surface*
  fun img_load_xpm_io = IMG_LoadXPM_IO(src : IOStream*) : Surface*
  fun img_load_xv_io = IMG_LoadXV_IO(src : IOStream*) : Surface*
  fun img_read_xpmfrom_array = IMG_ReadXPMFromArray(xpm : LibC::Char**) : Surface*
  fun img_read_xpmfrom_array_to_rgb888 = IMG_ReadXPMFromArrayToRGB888(xpm : LibC::Char**) : Surface*
  fun img_save = IMG_Save(surface : Surface*, file : LibC::Char*) : CBool
  fun img_save_typed_io = IMG_SaveTyped_IO(surface : Surface*, dst : IOStream*, closeio : CBool, type : LibC::Char*) : CBool
  fun img_save_avif = IMG_SaveAVIF(surface : Surface*, file : LibC::Char*, quality : LibC::Int) : CBool
  fun img_save_avif_io = IMG_SaveAVIF_IO(surface : Surface*, dst : IOStream*, closeio : CBool, quality : LibC::Int) : CBool
  fun img_save_bmp = IMG_SaveBMP(surface : Surface*, file : LibC::Char*) : CBool
  fun img_save_bmp_io = IMG_SaveBMP_IO(surface : Surface*, dst : IOStream*, closeio : CBool) : CBool
  fun img_save_cur = IMG_SaveCUR(surface : Surface*, file : LibC::Char*) : CBool
  fun img_save_cur_io = IMG_SaveCUR_IO(surface : Surface*, dst : IOStream*, closeio : CBool) : CBool
  fun img_save_gif = IMG_SaveGIF(surface : Surface*, file : LibC::Char*) : CBool
  fun img_save_gif_io = IMG_SaveGIF_IO(surface : Surface*, dst : IOStream*, closeio : CBool) : CBool
  fun img_save_ico = IMG_SaveICO(surface : Surface*, file : LibC::Char*) : CBool
  fun img_save_ico_io = IMG_SaveICO_IO(surface : Surface*, dst : IOStream*, closeio : CBool) : CBool
  fun img_save_jpg = IMG_SaveJPG(surface : Surface*, file : LibC::Char*, quality : LibC::Int) : CBool
  fun img_save_jpg_io = IMG_SaveJPG_IO(surface : Surface*, dst : IOStream*, closeio : CBool, quality : LibC::Int) : CBool
  fun img_save_png = IMG_SavePNG(surface : Surface*, file : LibC::Char*) : CBool
  fun img_save_png_io = IMG_SavePNG_IO(surface : Surface*, dst : IOStream*, closeio : CBool) : CBool
  fun img_save_tga = IMG_SaveTGA(surface : Surface*, file : LibC::Char*) : CBool
  fun img_save_tga_io = IMG_SaveTGA_IO(surface : Surface*, dst : IOStream*, closeio : CBool) : CBool
  fun img_save_webp = IMG_SaveWEBP(surface : Surface*, file : LibC::Char*, quality : LibC::Float) : CBool
  fun img_save_webp_io = IMG_SaveWEBP_IO(surface : Surface*, dst : IOStream*, closeio : CBool, quality : LibC::Float) : CBool
  fun img_load_animation = IMG_LoadAnimation(file : LibC::Char*) : IMGAnimation*
  fun img_load_animation_io = IMG_LoadAnimation_IO(src : IOStream*, closeio : CBool) : IMGAnimation*
  fun img_load_animation_typed_io = IMG_LoadAnimationTyped_IO(src : IOStream*, closeio : CBool, type : LibC::Char*) : IMGAnimation*
  fun img_load_anianimation_io = IMG_LoadANIAnimation_IO(src : IOStream*) : IMGAnimation*
  fun img_load_apnganimation_io = IMG_LoadAPNGAnimation_IO(src : IOStream*) : IMGAnimation*
  fun img_load_avifanimation_io = IMG_LoadAVIFAnimation_IO(src : IOStream*) : IMGAnimation*
  fun img_load_gifanimation_io = IMG_LoadGIFAnimation_IO(src : IOStream*) : IMGAnimation*
  fun img_load_webpanimation_io = IMG_LoadWEBPAnimation_IO(src : IOStream*) : IMGAnimation*
  fun img_save_animation = IMG_SaveAnimation(anim : IMGAnimation*, file : LibC::Char*) : CBool
  fun img_save_animation_typed_io = IMG_SaveAnimationTyped_IO(anim : IMGAnimation*, dst : IOStream*, closeio : CBool, type : LibC::Char*) : CBool
  fun img_save_anianimation_io = IMG_SaveANIAnimation_IO(anim : IMGAnimation*, dst : IOStream*, closeio : CBool) : CBool
  fun img_save_apnganimation_io = IMG_SaveAPNGAnimation_IO(anim : IMGAnimation*, dst : IOStream*, closeio : CBool) : CBool
  fun img_save_avifanimation_io = IMG_SaveAVIFAnimation_IO(anim : IMGAnimation*, dst : IOStream*, closeio : CBool, quality : LibC::Int) : CBool
  fun img_save_gifanimation_io = IMG_SaveGIFAnimation_IO(anim : IMGAnimation*, dst : IOStream*, closeio : CBool) : CBool
  fun img_save_webpanimation_io = IMG_SaveWEBPAnimation_IO(anim : IMGAnimation*, dst : IOStream*, closeio : CBool, quality : LibC::Int) : CBool
  fun img_create_animated_cursor = IMG_CreateAnimatedCursor(anim : IMGAnimation*, hot_x : LibC::Int, hot_y : LibC::Int) : Cursor*
  fun img_free_animation = IMG_FreeAnimation(anim : IMGAnimation*) : Void
  fun img_create_animation_encoder = IMG_CreateAnimationEncoder(file : LibC::Char*) : IMGAnimationEncoder*
  fun img_create_animation_encoder_io = IMG_CreateAnimationEncoder_IO(dst : IOStream*, closeio : CBool, type : LibC::Char*) : IMGAnimationEncoder*
  fun img_create_animation_encoder_with_properties = IMG_CreateAnimationEncoderWithProperties(props : PropertiesID) : IMGAnimationEncoder*
  fun img_add_animation_encoder_frame = IMG_AddAnimationEncoderFrame(encoder : IMGAnimationEncoder*, surface : Surface*, duration : UInt64) : CBool
  fun img_close_animation_encoder = IMG_CloseAnimationEncoder(encoder : IMGAnimationEncoder*) : CBool
  fun img_create_animation_decoder = IMG_CreateAnimationDecoder(file : LibC::Char*) : IMGAnimationDecoder*
  fun img_create_animation_decoder_io = IMG_CreateAnimationDecoder_IO(src : IOStream*, closeio : CBool, type : LibC::Char*) : IMGAnimationDecoder*
  fun img_create_animation_decoder_with_properties = IMG_CreateAnimationDecoderWithProperties(props : PropertiesID) : IMGAnimationDecoder*
  fun img_get_animation_decoder_properties = IMG_GetAnimationDecoderProperties(decoder : IMGAnimationDecoder*) : PropertiesID
  fun img_get_animation_decoder_frame = IMG_GetAnimationDecoderFrame(decoder : IMGAnimationDecoder*, frame : Surface**, duration : UInt64*) : CBool
  fun img_get_animation_decoder_status = IMG_GetAnimationDecoderStatus(decoder : IMGAnimationDecoder*) : IMGAnimationDecoderStatus
  fun img_reset_animation_decoder = IMG_ResetAnimationDecoder(decoder : IMGAnimationDecoder*) : CBool
  fun img_close_animation_decoder = IMG_CloseAnimationDecoder(decoder : IMGAnimationDecoder*) : CBool

end

module LibSDLMacro
  # SDL_image

  macro image_version_atleast(x, y, z)
    (LibSDL::IMAGE_MAJOR_VERSION >= {{x}}) && (LibSDL::IMAGE_MAJOR_VERSION > {{x}} || LibSDL::IMAGE_MINOR_VERSION >= {{y}}) && (LibSDL::IMAGE_MAJOR_VERSION > {{x}} || LibSDL::IMAGE_MINOR_VERSION > {{y}} || LibSDL::IMAGE_PATCHLEVEL >= {{z}})
  end
end
