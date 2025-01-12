set(
    HEADER_FILES
        Engine.h
)

set(
    SOURCE_FILES
        Source/Engine.cpp
)

add_library(
    VkrtEngine
        ${SOURCE_FILES}
        ${HEADER_FILES}
)

target_include_directories( VkrtEngine PUBLIC ${PROJECT_ROOT_DIR} )

set_property( TARGET VkrtEngine PROPERTY CXX_STANDARD 20 )

## Project libraries
target_link_libraries(
    VkrtEngine PUBLIC
        VkrtCore
        VkrtGraphics
        VkrtGui
        VksAssets
        VksCore
        VksRender
        Imgui
)

### Resources
set(
    RESOURCES
        teapot.obj
        bunny.obj
        mine.obj
        image.png
        fonts/Roboto-Regular.ttf
        fonts/DroidSans.ttf
        fonts/Hack-Regular.ttf
)
add_custom_command(
        TARGET VkrtEngine POST_BUILD
        COMMAND ${CMAKE_COMMAND} -E make_directory "${RESOURCES_DIR}"
)
foreach( RESOURCE ${RESOURCES} )
    add_custom_command(
            TARGET VkrtEngine POST_BUILD
            COMMAND ${CMAKE_COMMAND} -E copy
            ${CMAKE_SOURCE_DIR}/resources/${RESOURCE}
            ${RESOURCES_DIR}/${RESOURCE}
    )
endforeach( RESOURCE )

### External dependencies

# Vulkan
find_package( Vulkan REQUIRED )
target_link_libraries( VkrtEngine PUBLIC Vulkan::Vulkan )
set( ENV{VK_ICD_FILENAMES} "${SRC_DIR}/../lib/VulkanSDK/macOS/etc/vulkan/icd.d/MoltenVK_icd.json" )
set( ENV{VULKAN_SDK} "${SRC_DIR}/../lib/VulkanSDK/macOS/" )

# GLFW
find_package( glfw3 3.3 REQUIRED )
target_link_libraries( VkrtEngine PUBLIC glfw )

# glad
target_include_directories( VkrtEngine PUBLIC "${GLAD_DIR}/include" )
target_link_libraries( VkrtEngine PUBLIC "glad" "${CMAKE_DL_LIBS}" )

# glm
find_package( glm REQUIRED )
include_directories( ${GLM_INCLUDE_DIRS} )
link_directories( ${GLM_LIBRARY_DIRS} )
add_definitions( ${GLM_DEFINITIONS} )

# stb
set( STB_DIR "${LIB_DIR}/stb" )
include_directories( ${STB_DIR} )

# vma
set( VMA "${LIB_DIR}/VulkanMemoryAllocator/include" )
include_directories( ${VMA} )

# zep
target_include_directories(
    VkrtEngine
        PUBLIC
        ${LIB_DIR}/zep/include
)
add_definitions(-DZEP_SINGLE_HEADER=1)
# Set this to get the default file system
add_definitions(-DZEP_FEATURE_CPP_FILE_SYSTEM)

# vma
if(LINUX)
    set( VMA_HPP "${LIB_DIR}/VulkanMemoryAllocator-Hpp/linux/include" )
else()
    set( VMA_HPP "${LIB_DIR}/VulkanMemoryAllocator-Hpp/mac/include" )
endif()
include_directories( ${VMA_HPP} )

# spdlog
find_package( spdlog REQUIRED )
target_link_libraries( VkrtEngine PUBLIC spdlog::spdlog )

# lodepng
target_include_directories( "lodepng" PUBLIC "${LODEPNG_DIR}" )
target_link_libraries( VkrtEngine PUBLIC "lodepng" )
