//
// Created by Angelo Carly on 18/12/2022.
//

#ifndef VKRT_LINEPIPELINE_H
#define VKRT_LINEPIPELINE_H

#include "vks/core/Buffer.h"
#include "vks/render/ForwardDecl.h"
#include "vks/render/Pipeline.h"

#include <vulkan/vulkan.hpp>
#include <glm/mat4x4.hpp>
#include <memory>

namespace vkrt
{
    class LinePipeline
    {
        public:
            LinePipeline( vks::DevicePtr inDevice, vks::RenderPassPtr inRenderPass );
            ~LinePipeline();

        public:
            void UpdatePipelineUniforms( glm::mat4 inCamera );
            void Bind( vk::CommandBuffer inCommandBuffer );

        private:
            class Impl;
            std::unique_ptr< Impl > mImpl;
    };
}


#endif //VKRT_LINEPIPELINE_H
