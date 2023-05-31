#version 450
#extension GL_ARB_separate_shader_objects : enable

layout ( std140, set = 0, binding = 0 ) uniform UniformBufferObject
{
    mat4 mView;
} ubo;

layout( location = 0 ) in vec3 inPosition;
//layout( location = 1 ) in vec3 inNormal;
//layout( location = 2 ) in vec3 inColor;

//layout( location = 0 ) out vec3 outNormal;
//layout( location = 1 ) out vec3 outColor;

void main()
{
    gl_Position = ubo.mView * vec4( inPosition, 1.0f );
}