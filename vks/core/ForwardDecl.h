/**
 * ForwardDecl.h
 *
 * @file	ForwardDecl.h
 * @author	Angelo Carly
 * @date	10/04/2023
 *
 * Copyright (c) 2023 Hybrid Software Development. All rights reserved.
 */

#ifndef VKS_CORE_FORWARDDECL_H
#define VKS_CORE_FORWARDDECL_H

#include <memory>

namespace vks
{
    class Image;
    using ImagePtr = std::shared_ptr< Image >;;
}

#endif