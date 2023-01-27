// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Get_Control_Input(input){
		ret=0;
switch(input)
{

	case controls.left_click:
	if mouse_check_button_released(mb_left)
	ret=1;
	break;
	case controls.right_click:
	if mouse_check_button_released(mb_right)
	ret=1;
	break;
}
return ret;
}