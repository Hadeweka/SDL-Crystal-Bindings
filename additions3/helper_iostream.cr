  struct IOStreamInterface
    version : UInt32
    size : (Void*) -> Int64 # (void* userdata)
    seek : (Void*, Int64, IOWhence) -> Int64  # (void* userdata, Sint64 offset, SDL_IOWhence whence)
    read : (Void*, Void*, LibC::SizeT, IOStatus*) -> LibC::SizeT # (void* userdata, void* ptr, size_t size, SDL_IOStatus* status)
    write : (Void*, Void*, LibC::SizeT, IOStatus*) -> LibC::SizeT # (void* userdata, const void* ptr, size_t size, SDL_IOStatus* status)
    flush : (Void*, IOStatus*) -> LibC::Char  # (void* userdata, SDL_IOStatus* status)
    close : (Void*) -> LibC::Char  # (void* userdata)
  end
