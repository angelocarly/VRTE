
        if [ ! $(uname) == "Darwin" ]; then
            echo "This script should be run on macOS ONLY."
            echo "It is meant to uninstall the Vulkan SDK on macOS."
            exit 1
        fi
        
        echo >> /tmp/VULKAN_UNINSTALL.log
        date >> /tmp/VULKAN_UNINSTALL.log
        
            echo "Removing /usr/local/bin/dxc" | tee -a /tmp/VULKAN_UNINSTALL.log
            rm -rf /usr/local/bin/dxc
            
            echo "Removing /usr/local/bin/spirv-val" | tee -a /tmp/VULKAN_UNINSTALL.log
            rm -rf /usr/local/bin/spirv-val
            
            echo "Removing /usr/local/bin/spirv-cross" | tee -a /tmp/VULKAN_UNINSTALL.log
            rm -rf /usr/local/bin/spirv-cross
            
            echo "Removing /usr/local/bin/spirv-remap" | tee -a /tmp/VULKAN_UNINSTALL.log
            rm -rf /usr/local/bin/spirv-remap
            
            echo "Removing /usr/local/bin/spirv-dis" | tee -a /tmp/VULKAN_UNINSTALL.log
            rm -rf /usr/local/bin/spirv-dis
            
            echo "Removing /usr/local/bin/glslc" | tee -a /tmp/VULKAN_UNINSTALL.log
            rm -rf /usr/local/bin/glslc
            
            echo "Removing /usr/local/bin/spirv-lint" | tee -a /tmp/VULKAN_UNINSTALL.log
            rm -rf /usr/local/bin/spirv-lint
            
            echo "Removing /usr/local/bin/spirv-opt" | tee -a /tmp/VULKAN_UNINSTALL.log
            rm -rf /usr/local/bin/spirv-opt
            
            echo "Removing /usr/local/bin/vkvia" | tee -a /tmp/VULKAN_UNINSTALL.log
            rm -rf /usr/local/bin/vkvia
            
            echo "Removing /usr/local/bin/spirv-reflect" | tee -a /tmp/VULKAN_UNINSTALL.log
            rm -rf /usr/local/bin/spirv-reflect
            
            echo "Removing /usr/local/bin/spirv-reflect-pp" | tee -a /tmp/VULKAN_UNINSTALL.log
            rm -rf /usr/local/bin/spirv-reflect-pp
            
            echo "Removing /usr/local/bin/spirv-cfg" | tee -a /tmp/VULKAN_UNINSTALL.log
            rm -rf /usr/local/bin/spirv-cfg
            
            echo "Removing /usr/local/bin/spirv-lesspipe.sh" | tee -a /tmp/VULKAN_UNINSTALL.log
            rm -rf /usr/local/bin/spirv-lesspipe.sh
            
            echo "Removing /usr/local/bin/spirv-reduce" | tee -a /tmp/VULKAN_UNINSTALL.log
            rm -rf /usr/local/bin/spirv-reduce
            
            echo "Removing /usr/local/bin/dxc-3.7" | tee -a /tmp/VULKAN_UNINSTALL.log
            rm -rf /usr/local/bin/dxc-3.7
            
            echo "Removing /usr/local/bin/spirv-link" | tee -a /tmp/VULKAN_UNINSTALL.log
            rm -rf /usr/local/bin/spirv-link
            
            echo "Removing /usr/local/bin/vulkaninfo" | tee -a /tmp/VULKAN_UNINSTALL.log
            rm -rf /usr/local/bin/vulkaninfo
            
            echo "Removing /usr/local/bin/glslangValidator" | tee -a /tmp/VULKAN_UNINSTALL.log
            rm -rf /usr/local/bin/glslangValidator
            
            echo "Removing /usr/local/bin/MoltenVKShaderConverter" | tee -a /tmp/VULKAN_UNINSTALL.log
            rm -rf /usr/local/bin/MoltenVKShaderConverter
            
            echo "Removing /usr/local/bin/spirv-as" | tee -a /tmp/VULKAN_UNINSTALL.log
            rm -rf /usr/local/bin/spirv-as
            
            echo "Removing /usr/local/lib/libspirv-cross-util.a" | tee -a /tmp/VULKAN_UNINSTALL.log
            rm -rf /usr/local/lib/libspirv-cross-util.a
            
            echo "Removing /usr/local/lib/libspirv-cross-c-shared.dylib" | tee -a /tmp/VULKAN_UNINSTALL.log
            rm -rf /usr/local/lib/libspirv-cross-c-shared.dylib
            
            echo "Removing /usr/local/lib/libMachineIndependent.a" | tee -a /tmp/VULKAN_UNINSTALL.log
            rm -rf /usr/local/lib/libMachineIndependent.a
            
            echo "Removing /usr/local/lib/libshaderc_shared.dylib" | tee -a /tmp/VULKAN_UNINSTALL.log
            rm -rf /usr/local/lib/libshaderc_shared.dylib
            
            echo "Removing /usr/local/lib/libSPIRV-Tools-diff.a" | tee -a /tmp/VULKAN_UNINSTALL.log
            rm -rf /usr/local/lib/libSPIRV-Tools-diff.a
            
            echo "Removing /usr/local/lib/libdxcompiler.dylib" | tee -a /tmp/VULKAN_UNINSTALL.log
            rm -rf /usr/local/lib/libdxcompiler.dylib
            
            echo "Removing /usr/local/lib/libSPIRV-Tools-lint.a" | tee -a /tmp/VULKAN_UNINSTALL.log
            rm -rf /usr/local/lib/libSPIRV-Tools-lint.a
            
            echo "Removing /usr/local/lib/libOGLCompiler.a" | tee -a /tmp/VULKAN_UNINSTALL.log
            rm -rf /usr/local/lib/libOGLCompiler.a
            
            echo "Removing /usr/local/lib/libVkLayer_khronos_validation.dylib" | tee -a /tmp/VULKAN_UNINSTALL.log
            rm -rf /usr/local/lib/libVkLayer_khronos_validation.dylib
            
            echo "Removing /usr/local/lib/libVkLayer_api_dump.dylib" | tee -a /tmp/VULKAN_UNINSTALL.log
            rm -rf /usr/local/lib/libVkLayer_api_dump.dylib
            
            echo "Removing /usr/local/lib/libvulkan.1.3.239.dylib" | tee -a /tmp/VULKAN_UNINSTALL.log
            rm -rf /usr/local/lib/libvulkan.1.3.239.dylib
            
            echo "Removing /usr/local/lib/libVkLayer_khronos_profiles.dylib" | tee -a /tmp/VULKAN_UNINSTALL.log
            rm -rf /usr/local/lib/libVkLayer_khronos_profiles.dylib
            
            echo "Removing /usr/local/lib/libvulkan.dylib" | tee -a /tmp/VULKAN_UNINSTALL.log
            rm -rf /usr/local/lib/libvulkan.dylib
            
            echo "Removing /usr/local/lib/libSPIRV-Tools-link.a" | tee -a /tmp/VULKAN_UNINSTALL.log
            rm -rf /usr/local/lib/libSPIRV-Tools-link.a
            
            echo "Removing /usr/local/lib/libspirv-cross-glsl.a" | tee -a /tmp/VULKAN_UNINSTALL.log
            rm -rf /usr/local/lib/libspirv-cross-glsl.a
            
            echo "Removing /usr/local/lib/libglslang-default-resource-limits.a" | tee -a /tmp/VULKAN_UNINSTALL.log
            rm -rf /usr/local/lib/libglslang-default-resource-limits.a
            
            echo "Removing /usr/local/lib/libSPIRV-Tools-shared.dylib" | tee -a /tmp/VULKAN_UNINSTALL.log
            rm -rf /usr/local/lib/libSPIRV-Tools-shared.dylib
            
            echo "Removing /usr/local/lib/libHLSL.a" | tee -a /tmp/VULKAN_UNINSTALL.log
            rm -rf /usr/local/lib/libHLSL.a
            
            echo "Removing /usr/local/lib/libspirv-cross-reflect.a" | tee -a /tmp/VULKAN_UNINSTALL.log
            rm -rf /usr/local/lib/libspirv-cross-reflect.a
            
            echo "Removing /usr/local/lib/libVkLayer_khronos_synchronization2.dylib" | tee -a /tmp/VULKAN_UNINSTALL.log
            rm -rf /usr/local/lib/libVkLayer_khronos_synchronization2.dylib
            
            echo "Removing /usr/local/lib/libSPIRV-Tools.a" | tee -a /tmp/VULKAN_UNINSTALL.log
            rm -rf /usr/local/lib/libSPIRV-Tools.a
            
            echo "Removing /usr/local/lib/libshaderc_combined.a" | tee -a /tmp/VULKAN_UNINSTALL.log
            rm -rf /usr/local/lib/libshaderc_combined.a
            
            echo "Removing /usr/local/lib/libdxcompiler.3.7.dylib" | tee -a /tmp/VULKAN_UNINSTALL.log
            rm -rf /usr/local/lib/libdxcompiler.3.7.dylib
            
            echo "Removing /usr/local/lib/libspirv-cross-c.a" | tee -a /tmp/VULKAN_UNINSTALL.log
            rm -rf /usr/local/lib/libspirv-cross-c.a
            
            echo "Removing /usr/local/lib/libshaderc.a" | tee -a /tmp/VULKAN_UNINSTALL.log
            rm -rf /usr/local/lib/libshaderc.a
            
            echo "Removing /usr/local/lib/libSPIRV-Tools-reduce.a" | tee -a /tmp/VULKAN_UNINSTALL.log
            rm -rf /usr/local/lib/libSPIRV-Tools-reduce.a
            
            echo "Removing /usr/local/lib/libMoltenVK.dylib" | tee -a /tmp/VULKAN_UNINSTALL.log
            rm -rf /usr/local/lib/libMoltenVK.dylib
            
            echo "Removing /usr/local/lib/libspirv-cross-cpp.a" | tee -a /tmp/VULKAN_UNINSTALL.log
            rm -rf /usr/local/lib/libspirv-cross-cpp.a
            
            echo "Removing /usr/local/lib/libOSDependent.a" | tee -a /tmp/VULKAN_UNINSTALL.log
            rm -rf /usr/local/lib/libOSDependent.a
            
            echo "Removing /usr/local/lib/libshaderc_shared.1.dylib" | tee -a /tmp/VULKAN_UNINSTALL.log
            rm -rf /usr/local/lib/libshaderc_shared.1.dylib
            
            echo "Removing /usr/local/lib/libSPIRV-Tools-opt.a" | tee -a /tmp/VULKAN_UNINSTALL.log
            rm -rf /usr/local/lib/libSPIRV-Tools-opt.a
            
            echo "Removing /usr/local/lib/libGenericCodeGen.a" | tee -a /tmp/VULKAN_UNINSTALL.log
            rm -rf /usr/local/lib/libGenericCodeGen.a
            
            echo "Removing /usr/local/lib/libspirv-cross-core.a" | tee -a /tmp/VULKAN_UNINSTALL.log
            rm -rf /usr/local/lib/libspirv-cross-core.a
            
            echo "Removing /usr/local/lib/libspirv-cross-msl.a" | tee -a /tmp/VULKAN_UNINSTALL.log
            rm -rf /usr/local/lib/libspirv-cross-msl.a
            
            echo "Removing /usr/local/lib/libspirv-cross-hlsl.a" | tee -a /tmp/VULKAN_UNINSTALL.log
            rm -rf /usr/local/lib/libspirv-cross-hlsl.a
            
            echo "Removing /usr/local/lib/libspirv-cross-c-shared.0.dylib" | tee -a /tmp/VULKAN_UNINSTALL.log
            rm -rf /usr/local/lib/libspirv-cross-c-shared.0.dylib
            
            echo "Removing /usr/local/lib/libshaderc_util.a" | tee -a /tmp/VULKAN_UNINSTALL.log
            rm -rf /usr/local/lib/libshaderc_util.a
            
            echo "Removing /usr/local/lib/libspirv-cross-c-shared.0.54.0.dylib" | tee -a /tmp/VULKAN_UNINSTALL.log
            rm -rf /usr/local/lib/libspirv-cross-c-shared.0.54.0.dylib
            
            echo "Removing /usr/local/lib/libSPVRemapper.a" | tee -a /tmp/VULKAN_UNINSTALL.log
            rm -rf /usr/local/lib/libSPVRemapper.a
            
            echo "Removing /usr/local/lib/libvulkan.1.dylib" | tee -a /tmp/VULKAN_UNINSTALL.log
            rm -rf /usr/local/lib/libvulkan.1.dylib
            
            echo "Removing /usr/local/lib/libSPIRV.a" | tee -a /tmp/VULKAN_UNINSTALL.log
            rm -rf /usr/local/lib/libSPIRV.a
            
            echo "Removing /usr/local/lib/libglslang.a" | tee -a /tmp/VULKAN_UNINSTALL.log
            rm -rf /usr/local/lib/libglslang.a
            
            echo "Removing /usr/local/include/dxc" | tee -a /tmp/VULKAN_UNINSTALL.log
            rm -rf /usr/local/include/dxc
            
            echo "Removing /usr/local/include/shaderc" | tee -a /tmp/VULKAN_UNINSTALL.log
            rm -rf /usr/local/include/shaderc
            
            echo "Removing /usr/local/include/spirv-tools" | tee -a /tmp/VULKAN_UNINSTALL.log
            rm -rf /usr/local/include/spirv-tools
            
            echo "Removing /usr/local/include/spirv_cross" | tee -a /tmp/VULKAN_UNINSTALL.log
            rm -rf /usr/local/include/spirv_cross
            
            echo "Removing /usr/local/include/glslang" | tee -a /tmp/VULKAN_UNINSTALL.log
            rm -rf /usr/local/include/glslang
            
            echo "Removing /usr/local/include/vk_video" | tee -a /tmp/VULKAN_UNINSTALL.log
            rm -rf /usr/local/include/vk_video
            
            echo "Removing /usr/local/include/vulkan" | tee -a /tmp/VULKAN_UNINSTALL.log
            rm -rf /usr/local/include/vulkan
            
            echo "Removing /usr/local/lib/cmake/vulkan/SPIRV-Tools-tools" | tee -a /tmp/VULKAN_UNINSTALL.log
            rm -rf /usr/local/lib/cmake/vulkan/SPIRV-Tools-tools
            
            echo "Removing /usr/local/lib/cmake/vulkan/SPIRV-Tools" | tee -a /tmp/VULKAN_UNINSTALL.log
            rm -rf /usr/local/lib/cmake/vulkan/SPIRV-Tools
            
            echo "Removing /usr/local/lib/cmake/vulkan/HLSLTargets.cmake" | tee -a /tmp/VULKAN_UNINSTALL.log
            rm -rf /usr/local/lib/cmake/vulkan/HLSLTargets.cmake
            
            echo "Removing /usr/local/lib/cmake/vulkan/glslang-default-resource-limitsTargets.cmake" | tee -a /tmp/VULKAN_UNINSTALL.log
            rm -rf /usr/local/lib/cmake/vulkan/glslang-default-resource-limitsTargets.cmake
            
            echo "Removing /usr/local/lib/cmake/vulkan/SPIRV-Tools-link" | tee -a /tmp/VULKAN_UNINSTALL.log
            rm -rf /usr/local/lib/cmake/vulkan/SPIRV-Tools-link
            
            echo "Removing /usr/local/lib/cmake/vulkan/OSDependentTargets.cmake" | tee -a /tmp/VULKAN_UNINSTALL.log
            rm -rf /usr/local/lib/cmake/vulkan/OSDependentTargets.cmake
            
            echo "Removing /usr/local/lib/cmake/vulkan/glslangTargets.cmake" | tee -a /tmp/VULKAN_UNINSTALL.log
            rm -rf /usr/local/lib/cmake/vulkan/glslangTargets.cmake
            
            echo "Removing /usr/local/lib/cmake/vulkan/SPIRV-Tools-opt" | tee -a /tmp/VULKAN_UNINSTALL.log
            rm -rf /usr/local/lib/cmake/vulkan/SPIRV-Tools-opt
            
            echo "Removing /usr/local/lib/cmake/vulkan/glslang" | tee -a /tmp/VULKAN_UNINSTALL.log
            rm -rf /usr/local/lib/cmake/vulkan/glslang
            
            echo "Removing /usr/local/lib/cmake/vulkan/spirv-remapTargets.cmake" | tee -a /tmp/VULKAN_UNINSTALL.log
            rm -rf /usr/local/lib/cmake/vulkan/spirv-remapTargets.cmake
            
            echo "Removing /usr/local/lib/cmake/vulkan/SPIRV-Tools-diff" | tee -a /tmp/VULKAN_UNINSTALL.log
            rm -rf /usr/local/lib/cmake/vulkan/SPIRV-Tools-diff
            
            echo "Removing /usr/local/lib/cmake/vulkan/OGLCompilerTargets.cmake" | tee -a /tmp/VULKAN_UNINSTALL.log
            rm -rf /usr/local/lib/cmake/vulkan/OGLCompilerTargets.cmake
            
            echo "Removing /usr/local/lib/cmake/vulkan/SPIRV-Tools-reduce" | tee -a /tmp/VULKAN_UNINSTALL.log
            rm -rf /usr/local/lib/cmake/vulkan/SPIRV-Tools-reduce
            
            echo "Removing /usr/local/lib/cmake/vulkan/SPIRV-Tools-lint" | tee -a /tmp/VULKAN_UNINSTALL.log
            rm -rf /usr/local/lib/cmake/vulkan/SPIRV-Tools-lint
            
            echo "Removing /usr/local/lib/cmake/vulkan/glslangValidatorTargets.cmake" | tee -a /tmp/VULKAN_UNINSTALL.log
            rm -rf /usr/local/lib/cmake/vulkan/glslangValidatorTargets.cmake
            
            echo "Removing /usr/local/lib/cmake/vulkan/SPIRVTargets.cmake" | tee -a /tmp/VULKAN_UNINSTALL.log
            rm -rf /usr/local/lib/cmake/vulkan/SPIRVTargets.cmake
            
            echo "Removing /usr/local/lib/cmake/vulkan/SPVRemapperTargets.cmake" | tee -a /tmp/VULKAN_UNINSTALL.log
            rm -rf /usr/local/lib/cmake/vulkan/SPVRemapperTargets.cmake
            
            echo "Removing /usr/local/lib/pkgconfig/SPIRV-Tools.pc" | tee -a /tmp/VULKAN_UNINSTALL.log
            rm -rf /usr/local/lib/pkgconfig/SPIRV-Tools.pc
            
            echo "Removing /usr/local/lib/pkgconfig/spirv-cross-c-shared.pc" | tee -a /tmp/VULKAN_UNINSTALL.log
            rm -rf /usr/local/lib/pkgconfig/spirv-cross-c-shared.pc
            
            echo "Removing /usr/local/lib/pkgconfig/SPIRV-Tools-shared.pc" | tee -a /tmp/VULKAN_UNINSTALL.log
            rm -rf /usr/local/lib/pkgconfig/SPIRV-Tools-shared.pc
            
            echo "Removing /usr/local/lib/pkgconfig/vulkan.pc" | tee -a /tmp/VULKAN_UNINSTALL.log
            rm -rf /usr/local/lib/pkgconfig/vulkan.pc
            
            echo "Removing /usr/local/lib/pkgconfig/shaderc.pc" | tee -a /tmp/VULKAN_UNINSTALL.log
            rm -rf /usr/local/lib/pkgconfig/shaderc.pc
            
            echo "Removing /usr/local/share/vulkan" | tee -a /tmp/VULKAN_UNINSTALL.log
            rm -rf /usr/local/share/vulkan
            
            echo "Removing /Applications/vulkanCapsViewer.app" | tee -a /tmp/VULKAN_UNINSTALL.log
            rm -rf /Applications/vulkanCapsViewer.app
            
            echo "Removing /Applications/vkconfig.app" | tee -a /tmp/VULKAN_UNINSTALL.log
            rm -rf /Applications/vkconfig.app
            
            echo "Removing /Applications/vkcubepp.app" | tee -a /tmp/VULKAN_UNINSTALL.log
            rm -rf /Applications/vkcubepp.app
            
            echo "Removing /Applications/vkcube.app" | tee -a /tmp/VULKAN_UNINSTALL.log
            rm -rf /Applications/vkcube.app
            