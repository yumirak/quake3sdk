# MSVC compiler specific settings

if(NOT CMAKE_C_COMPILER_ID STREQUAL "MSVC")
    return()
endif()

# Baseline warnings
add_compile_options("$<$<COMPILE_LANGUAGE:C>:/W4>")

# C4267: 'var' : conversion from 'size_t' to 'type', possible loss of data
# There are way too many of these to realistically deal with them
add_compile_options("$<$<COMPILE_LANGUAGE:C>:/wd4267>")

# C4206: nonstandard extension used: translation unit is empty
add_compile_options("$<$<COMPILE_LANGUAGE:C>:/wd4206>")

# C4324: 'struct': structure was padded due to alignment specifier
add_compile_options("$<$<COMPILE_LANGUAGE:C>:/wd4324>")

# C4200: nonstandard extension used: zero-sized array in struct/union
add_compile_options("$<$<COMPILE_LANGUAGE:C>:/wd4200>")

# MSVC doesn't understand __inline__, which libjpeg uses
add_compile_definitions(__inline__=inline)

# It's unlikely that we'll move to the _s variants, so stop the warning
add_compile_definitions(_CRT_SECURE_NO_WARNINGS)

# The sockets platform abstraction layer necessarily uses deprecated APIs
add_compile_definitions(_WINSOCK_DEPRECATED_NO_WARNINGS)
