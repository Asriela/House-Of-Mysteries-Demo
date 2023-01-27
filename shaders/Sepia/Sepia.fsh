//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
   gl_FragColor = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );

    float BnW = ( gl_FragColor.r + gl_FragColor.g +gl_FragColor.b) / 3.0;
    
    //playing with the three numbers here will give the tint.
    vec4 sepiaCol = vec4(BnW * vec3(1.2,1.0,0.8), 1.0);
    
    gl_FragColor = sepiaCol;
}

