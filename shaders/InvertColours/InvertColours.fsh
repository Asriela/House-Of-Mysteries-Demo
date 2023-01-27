//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;



void main()
{
    vec4 colour = texture2D(gm_BaseTexture, v_vTexcoord.st); 
    gl_FragColor = vec4(1.0 - colour.r, 1.0 - colour.g, 1.0 - colour.b, colour.a);;
}

