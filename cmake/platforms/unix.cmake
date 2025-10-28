# Unix specific settings (this includes macOS and emscripten)

if(NOT UNIX)
    return()
endif()

list(APPEND COMMON_LIBRARIES
    dl  # Dynamic loader
    m   # Math library
)
