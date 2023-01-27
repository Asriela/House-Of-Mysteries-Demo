if(deltaT < 360.0){
    deltaT = deltaT+ 0.05;
}
else
    deltaT = 0;
    
    
if(keyboard_check_released(ord("A"))){
    if(shader < 7){
        shader = shader + 1;
    }
    else{
        shader = 0;
    }
    
}
if(keyboard_check_released(vk_left)){
 if(shader > 0){
        shader = shader - 1;
    }
    else{
        shader = 7;
    }
}

