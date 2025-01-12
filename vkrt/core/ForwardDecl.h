//
// Created by Angelo Carly on 29/12/2022.
//

#ifndef VKRT_FORWARDDECL_H
#define VKRT_FORWARDDECL_H

#include <memory>

namespace vkrt
{
    class Camera;
    typedef std::shared_ptr< vkrt::Camera > CameraPtr;

    class InputState;
    typedef std::shared_ptr< vkrt::InputState > InputStatePtr;
}

#endif //VKRT_FORWARDDECL_H
