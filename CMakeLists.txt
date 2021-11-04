
cmake_minimum_required (VERSION 2.6)
project (Selena)

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11 -Wall -g")


file(GLOB scc_SRC
    "source/*.cpp"
)

file(GLOB driver_SRC
    "driver/*.cpp"
)

add_executable(nsctrcc ${driver_SRC} ${scc_SRC})
target_include_directories (nsctrcc PUBLIC include)
install(TARGETS selenacc DESTINATION $ENV{DEVKITARM}/bin)
