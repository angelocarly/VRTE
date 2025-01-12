#version 450
#extension GL_ARB_separate_shader_objects : enable

layout( location = 0 ) in vec2 inUV;

layout( location = 0 ) out vec4 outColor;

layout(push_constant) uniform PushConstants {
    int frameIndex;
} pcs;

void main()
{
    vec3 col = vec3( 0 );
    if( pcs.frameIndex == 0 )
    {
        col = vec3( 1, 0, 0 );
    }
    else if( pcs.frameIndex == 1 )
    {
        col = vec3( 0, 1, 0 );
    }
    else if( pcs.frameIndex == 2 )
    {
        col = vec3( 0, 0, 1 );
    }
    else if( pcs.frameIndex == 3 )
    {
        col = vec3( 1, 0, 1 ); // burple
    }
    else if( pcs.frameIndex == 4 )
    {
        col = vec3( 0, 1, 1 ); // turq
    }
    else if( pcs.frameIndex == 5 )
    {
        col = vec3( 1, 1, 0 ); // yellow
    }
    else if( pcs.frameIndex == 6 )
    {
        col = vec3( 1, 1, 1 ); // white
    }

    col = vec3( inUV, 0.0f );

    outColor = vec4( col, 1.0f );
}
