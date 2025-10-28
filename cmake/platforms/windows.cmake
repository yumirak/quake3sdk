# Windows specific settings

if(NOT WIN32)
    return()
endif()

list(APPEND COMMON_LIBRARIES
    ws2_32 # Windows Sockets 2
    winmm  # timeBeginPeriod/timeEndPeriod
    psapi  # EnumProcesses
)

if(MINGW)
    list(APPEND COMMON_LIBRARIES mingw32)
endif()
