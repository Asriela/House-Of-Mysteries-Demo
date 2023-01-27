if(shader =0){
    shader_set(ColourDistortion);
}
switch shader{
    case 0:
        shader_set(ColourDistortion);
        break;
    case 1:
        shader_set(BlackAndWhite);
        break;
    case 2:
        shader_set(InvertColours);
        break;
    case 3:
        shader_set(Sepia);
        break;
    case 4:
        shader_set(EdgeDetection);
        break;
    case 5:
        shader_set(ColourDistortion);
        break;
    case 6:
        shader_set(FishEye);
        shader_set_uniform_f(shader_get_uniform(FishEye,"apertureAngle"), 220);
        shader_set_uniform_f(shader_get_uniform(FishEye,"lensSize"), 1.0);    
        break;
    case 7:
        shader_set(ColourDistortion);
        shader_set_uniform_f(shader_get_uniform(OuterBlur,"maxBlurStrength"), 90.0);
        shader_set_uniform_f(shader_get_uniform(OuterBlur,"resolution"), 1024);
        shader_set_uniform_f(shader_get_uniform(OuterBlur,"radius"), 0.5);
        shader_set_uniform_f(shader_get_uniform(OuterBlur,"dir"), 0.15);
        break;
}

 //FishEye
/*

*/

 //OuterBlur
/*

*/


draw_surface(application_surface,0,0);
shader_reset();

/* */
/*  */
