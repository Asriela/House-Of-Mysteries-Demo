//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;


float wave(float x, float amount) {  
  return (sin(x * amount)+1.0) * 0.5;
}

void main() {
  vec4 colour = texture2D(gm_BaseTexture, v_vTexcoord);
  gl_FragColor.r = wave(colour.r, 15.0);
  gl_FragColor.g = wave(colour.g, 15.0);
  gl_FragColor.b = wave(colour.b, 15.0);
  gl_FragColor.a = 1.0;
}
