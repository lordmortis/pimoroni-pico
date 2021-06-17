include(drivers/st7789/st7789.cmake)
include(libraries/pico_graphics/pico_graphics.cmake)

set(LIB_NAME breakout_colourlcd320x240)
add_library(${LIB_NAME} INTERFACE)

target_sources(${LIB_NAME} INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/${LIB_NAME}.cpp
)

target_include_directories(${LIB_NAME} INTERFACE ${CMAKE_CURRENT_LIST_DIR})

# Pull in pico libraries that we need
target_link_libraries(${LIB_NAME} INTERFACE pico_stdlib st7789 pico_graphics)