if(CYGWIN)
  set(google_libs_shared_prefix "cyg")
  set(google_libs_shared_suffix "dll")
  set(google_libs_static_prefix "lib")
  set(google_libs_static_suffix "dll.a")
elseif(MINGW)
  set(google_libs_shared_prefix "lib")
  set(google_libs_shared_suffix "dll")
  set(google_libs_static_prefix "lib")
  set(google_libs_static_suffix "dll.a")
elseif(APPLE)
  set(google_libs_shared_prefix "lib")
  set(google_libs_shared_suffix "dylib")
  set(google_libs_static_prefix "lib")
  set(google_libs_static_suffix "dll.a")
elseif(WIN32)
  set(google_libs_shared_prefix "")
  set(google_libs_shared_suffix "dll")
  set(google_libs_static_prefix "")
  set(google_libs_static_suffix "lib")
else()
  set(google_libs_shared_prefix "lib")
  set(google_libs_shared_suffix "so")
  set(google_libs_static_prefix "lib")
  set(google_libs_static_suffix "a")
endif()

if(CYGWIN)
  set(google_libs_cxx_flags "-std=gnu++11")
else()
  set(google_libs_cxx_flags "-std=c++11")
endif()
