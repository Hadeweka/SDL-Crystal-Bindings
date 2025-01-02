  # (void* userdata, const char* mime_type, size_t* size)
  alias ClipboardDataCallback = (Void*, LibC::Char*, LibC::SizeT*) -> Void*
  # (void* userdata)
  alias ClipboardCleanupCallback = (Void*) -> Void
