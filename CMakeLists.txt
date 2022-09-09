
cmake_minimum_required (VERSION 3.1)

project( nslcc LANGUAGES C CXX )

set(CMAKE_CXX_STANDARD_LIBRARIES "-static-libgcc -static-libstdc++ ${CMAKE_CXX_STANDARD_LIBRARIES}")

set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} -Wl,-Bstatic,--whole-archive -Wl,--no-whole-archive -Wl,--no-as-needed -ldl")

if( MSVC )
    SET( CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} /ENTRY:mainCRTStartup" )
endif()

file(GLOB scc_SRC
    "source/*.cpp"
)

file(GLOB driver_SRC
    "driver/*.cpp"
)

add_executable(nslcc WIN32 ${driver_SRC} ${scc_SRC})
target_include_directories (nslcc PUBLIC include)
install(TARGETS nslcc DESTINATION $ENV{DEVKITARM}/bin)

if( MSVC )
    if(${CMAKE_VERSION} VERSION_LESS "3.6.0") 
        message( "\n\t[ WARNING ]\n\n\tCMake version lower than 3.6.\n\n\t - Please update CMake and rerun; OR\n\t - Manually set 'nslcc' as StartUp Project in Visual Studio.\n" )
    else()
        set_property( DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR} PROPERTY VS_STARTUP_PROJECT nslcc )
    endif()
endif()