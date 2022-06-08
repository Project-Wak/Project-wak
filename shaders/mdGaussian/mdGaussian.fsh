//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

varying float Scaler;
varying vec2 TexelSize;

uniform vec2 uvLT;
uniform vec2 uvRB;
uniform float v;

float Gaussian(vec2 _POS) {
	float pi = 3.141592;
	
	//You can change 'v' value(2-8 recommended)
	//float v = 4.;
	
	float L = length(_POS);
	
	return exp(-.5 * pow(L / v, 2.)) / (v * pow(2. * pi, .5));
}

void main()
{
	vec2 uv = v_vTexcoord;
	
	float W = 0.;
	
	float R = clamp(Scaler, 1., 15.);
	float _R = R * 2. + 1.;
	
	vec4 COL = vec4(.0);
	vec4 COL2 = vec4(.0);
	
	for (float i = 0.; i < _R * _R; i++) {
		if (i >= 1024.) break;
		
		vec2 _UV = uv + vec2(-R + floor(i / _R), -R + i - floor(i / _R) * _R) * TexelSize;
		float G = Gaussian(abs(_UV - uv) / TexelSize); //'abs(_UV - uv) / TexelSize'
		W += G;
		
		if (clamp(_UV, uvLT, uvRB) == _UV) {
			COL += texture2D(gm_BaseTexture, _UV) * G;
			COL2 += texture2D(gm_BaseTexture, _UV);
		}
	}
	
	COL /= W;
	COL2 /= _R * _R;
    
	gl_FragColor = COL;
}
