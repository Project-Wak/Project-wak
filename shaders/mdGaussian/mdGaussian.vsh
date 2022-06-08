//
// Simple passthrough vertex shader
//
attribute vec3 in_Position;                  // (x,y,z)
//attribute vec3 in_Normal;                  // (x,y,z)     unused in this shader.
attribute vec4 in_Colour;                    // (r,g,b,a)
attribute vec2 in_TextureCoord;              // (u,v)

varying vec2 v_vTexcoord;
varying vec4 v_vColour;
varying float Scaler;
varying vec2 TexelSize;

uniform float scaler;
uniform vec2 texelSize;

vec2 ExtractCorner (vec4 _input) {
	float r = floor(_input.r * 255.);
	r -= floor(r / 2.) * 2.;
	float b = floor(_input.b * 255.);
	b -= floor(b / 2.) * 2.;
	
	return vec2(1. - 2. * float(r == b), 2. * b - 1.);
}

void main()
{
    vec4 object_space_pos = vec4( in_Position.x, in_Position.y, in_Position.z, 1.0);
	
	vec2 Corner = ExtractCorner(in_Colour);
	object_space_pos.xy += Corner * scaler;
	
    gl_Position = gm_Matrices[MATRIX_WORLD_VIEW_PROJECTION] * object_space_pos;
    
    v_vColour = in_Colour;
    v_vTexcoord = in_TextureCoord + texelSize * Corner * scaler;
	
	Scaler = scaler;
	TexelSize = texelSize;
}
