set(
    HEADER_FILES
        Display.h
        Drawable.h
        ForwardDecl.h
        LayerPresenter.h
        Presentable.h
        Presenter.h
        RenderEnvironment.h
        TestPresenter.h
)

set(
    SOURCE_FILES
        Source/Display.cpp
        Source/LayerPresenter.cpp
        Source/RenderEnvironment.cpp
        Source/TestPresenter.cpp
        Source/Presenter.cpp)

set(
    GLSL_SOURCE_FILES
        shaders/FrameIdentification.frag
        shaders/CompositeFrames.frag
        shaders/Texture.frag
        shaders/ScreenRect.vert
)

add_library(
    VkrtGraphics SHARED
        ${SOURCE_FILES}
        ${HEADER_FILES}
)

target_include_directories( VkrtGraphics PUBLIC ${PROJECT_ROOT_DIR} )

set_property( TARGET VkrtGraphics PROPERTY CXX_STANDARD 17 )

## Project libraries
target_link_libraries(
    VkrtGraphics PUBLIC
        VkrtCore
        VksAssets
        VksRender
        VksCore
        Imgui
)

### Shaders

if(LINUX)
    set( GLSL_VALIDATOR "/usr/bin/glslangValidator" )
else()
    set( GLSL_VALIDATOR "/usr/local/bin/glslangValidator" )
endif()

foreach( GLSL ${GLSL_SOURCE_FILES} )
    get_filename_component( FILE_NAME ${GLSL} NAME )
    set(
        SPIRV
            "${SHADER_DIR}/${FILE_NAME}.spv"
    )
    message( ${SPIRV} )
    add_custom_command(
            OUTPUT ${SPIRV}
            COMMAND ${CMAKE_COMMAND} -E make_directory "${SHADER_DIR}"
            COMMAND ${GLSL_VALIDATOR} --target-env vulkan1.0 -V ${PROJECT_ROOT_DIR}/vkrt/graphics/${GLSL} -o ${SPIRV}
            DEPENDS ${GLSL} )
    list( APPEND SPIRV_BINARY_FILES ${SPIRV} )
endforeach( GLSL )

add_custom_target(
    Shaders
        DEPENDS ${SPIRV_BINARY_FILES}
)

add_dependencies( VkrtGraphics Shaders )

### External dependencies

# Vulkan
find_package( Vulkan REQUIRED )
target_link_libraries( VkrtGraphics PUBLIC Vulkan::Vulkan )
set( ENV{VK_ICD_FILENAMES} "${SRC_DIR}/../lib/VulkanSDK/macOS/etc/vulkan/icd.d/MoltenVK_icd.json" )
set( ENV{VULKAN_SDK} "${SRC_DIR}/../lib/VulkanSDK/macOS/" )

# GLFW
find_package( glfw3 3.3 REQUIRED )
target_link_libraries( VkrtGraphics PUBLIC glfw )

# glad
target_include_directories( VkrtGraphics PUBLIC "${GLAD_DIR}/include" )
target_link_libraries( VkrtGraphics PUBLIC "glad" "${CMAKE_DL_LIBS}" )

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

# vma
if(LINUX)
    set( VMA_HPP "${LIB_DIR}/VulkanMemoryAllocator-Hpp/linux/include" )
else()
    set( VMA_HPP "${LIB_DIR}/VulkanMemoryAllocator-Hpp/mac/include" )
endif()
include_directories( ${VMA_HPP} )

# spdlog
find_package( spdlog REQUIRED )
target_link_libraries( VkrtGraphics PUBLIC spdlog::spdlog )

# lodepng
target_include_directories( "lodepng" PUBLIC "${LODEPNG_DIR}" )
target_link_libraries( VkrtGraphics PUBLIC "lodepng" )
