#ifdef GL_ES
// Set default precision to medium
precision mediump int;
precision mediump float;
#endif

uniform mat4 mvp_matrix;

attribute vec4 a_position;
attribute vec4 a_color;

varying vec4 v_color;

//! [0]
void main()
{    
    // Calculate vertex position in screen space
    gl_Position = mvp_matrix * vec4(a_position.xyz, 1.0f);
    gl_PointSize = a_position.w;
    v_color = a_color;
}
//! [0]
