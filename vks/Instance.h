//
// Created by magnias on 7/7/22.
//

#ifndef VKRT_INSTANCE_H
#define VKRT_INSTANCE_H

#include <vulkan/vulkan.hpp>
#include <boost/noncopyable.hpp>

namespace vks
{
    class Instance : boost::noncopyable
    {
        public:
            static vks::Instance & GetInstance();

        private:
            Instance();
            ~Instance();

        public:
            vk::Instance GetVulkanInstance();

        private:

            class Impl;
            std::unique_ptr< Impl > mImpl;
    };
}


#endif //VKRT_INSTANCE_H