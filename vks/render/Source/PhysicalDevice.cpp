//
// Created by Angelo Carly on 21/11/2022.
//

#include "vks/render/PhysicalDevice.h"

#include "vks/render/ForwardDecl.h"
#include "vks/render/Utils.h"
#include "vks/render/Instance.h"

#include <spdlog/spdlog.h>
#include <vulkan/vulkan.hpp>
#include <vulkan/vulkan_beta.h>

namespace
{
    bool
    CheckExtensionSupport( vk::PhysicalDevice inDevice, std::vector< const char * > inRequiredExtensions )
    {
        std::vector< vk::ExtensionProperties > theExtensions = inDevice.enumerateDeviceExtensionProperties();
        for( const char * theRequiredExtension : inRequiredExtensions )
        {
            bool hasExtension = false;
            for( vk::ExtensionProperties theExtension : theExtensions )
            {
                if( strcmp( theExtension.extensionName, theRequiredExtension ) == 0 )
                {
                    hasExtension = true;
                    break;
                }
            }

            if( !hasExtension ) return false;
        }

        return true;
    }

    vks::QueueFamilyIndices FindQueueFamilyIndices( vk::PhysicalDevice inDevice )
    {
        vks::QueueFamilyIndices theQueueFamilyIndices {};

        int index = 0;
        for( vk::QueueFamilyProperties theQueueFamilyProperty: inDevice.getQueueFamilyProperties() )
        {
            if( theQueueFamilyProperty.queueFlags & vk::QueueFlagBits::eGraphics )
            {
                theQueueFamilyIndices.graphicsFamilyIndex = index;
            }

            index++;
        }

        return theQueueFamilyIndices;
    }
}

// =====================================================================================================================

class vks::PhysicalDevice::Impl
{
    public:
        Impl( vks::Instance & inInstance );
        ~Impl();

        void InitializeVulkanDevice();

    public:
        vks::Instance & mInstance;
        vk::PhysicalDevice mPhysicalDevice;
};

vks::PhysicalDevice::Impl::Impl( vks::Instance & inInstance )
:
    mInstance( inInstance )
{
    InitializeVulkanDevice();
}

vks::PhysicalDevice::Impl::~Impl()
{
}

void
vks::PhysicalDevice::Impl::InitializeVulkanDevice()
{
    spdlog::get( "vulkan" )->debug( "Initializing physical device:" );

    std::vector< vk::PhysicalDevice > thePotentialDevices = mInstance.GetVkInstance().enumeratePhysicalDevices();
    for( vk::PhysicalDevice thePotentialDevice: thePotentialDevices )
    {
        auto theExtensions = GetRequiredExtensions();
        if(
            CheckExtensionSupport( thePotentialDevice, theExtensions )
            && ::FindQueueFamilyIndices( thePotentialDevice ).IsComplete() )
        {
            mPhysicalDevice = thePotentialDevice;
            return;
        }
    }

    spdlog::get( "vulkan" )->error( "Could not find a suitable physical device." );
    std::exit( 1 );
}

// =====================================================================================================================

vks::PhysicalDevice::PhysicalDevice( vks::Instance & inInstance )
:
mImpl( new Impl( inInstance ) )
{
}

vks::PhysicalDevice::~PhysicalDevice()
{
    // Physical device is implicitly destroyed when destroying the instance
}

vk::PhysicalDevice
vks::PhysicalDevice::GetVkPhysicalDevice()
{
    return mImpl->mPhysicalDevice;
}

vks::QueueFamilyIndices
vks::PhysicalDevice::FindQueueFamilyIndices()
{
    return ::FindQueueFamilyIndices( mImpl->mPhysicalDevice );
}

std::vector< const char * >
vks::PhysicalDevice::GetRequiredExtensions()
{
    static std::vector< const char * > theExtensions;

    theExtensions.push_back( VK_KHR_SWAPCHAIN_EXTENSION_NAME );
    theExtensions.push_back( VK_KHR_PUSH_DESCRIPTOR_EXTENSION_NAME );

    if( vks::Utils::IsTargetApple() )
    {
        // Allow using a subset of the vulkan api
        theExtensions.push_back( VK_KHR_PORTABILITY_SUBSET_EXTENSION_NAME );
    }

    return theExtensions;
}
