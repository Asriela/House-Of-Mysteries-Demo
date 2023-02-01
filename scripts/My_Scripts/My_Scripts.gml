// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sm(val){
show_message(val)
}

function ss(){
	show_message("m")
}
function st(val){
	return string(val)
}

function rr(val1,val2){
	return random_range(val1,val2)
}
function Button_Pressed(center_x,center_y,length,width,sprite,text,front_color,back_color,on_variable,check_for,single_press_effect,button_press_type,button_index,button_shape,on_off)
{
	Button_Was_Pressed=0
	draw_set_halign(fa_center)
	draw_set_valign(fa_center)
	var selected=0;
	var ret=noone;
	if on_variable!=0
	if on_variable=check_for
	selected=1

var actual_selected=0
	if point_in_rectangle(device_mouse_x_to_gui(0),device_mouse_y_to_gui(0),center_x-length/2,center_y-width/2,center_x+length/2,center_y+width/2){
		Over_Button_Id=button_index
		//sm(Over_Button_Id)
	actual_selected=1;
		selected=actual_selected
	Over_Gui=1;
	}

		draw_set_color(front_color)
			if sprite=0 || on_off=1{
		if (button_shape=shape.square || button_shape=0 ) &&  !(sprite!=0 && on_off=1){
			if front_color!=-1
			
			
	draw_rectangle(center_x-length/2,center_y-width/2,center_x+length/2,center_y+width/2,1-selected)
		}
	else{
		var t_selected=selected
		if (sprite!=0 && on_off=1)
		var t_selected=0
				if (sprite!=0 && on_off=1 && selected) || sprite=0
	draw_circle(center_x,center_y,length/2,1-t_selected)
	
	}
			}
			if sprite{
				var default_scale=1
				if on_off=4
				var default_scale=3
				
				var spr_scale=default_scale
				var col=back_color
				if selected || on_variable=check_for{
				var spr_scale=default_scale*1.2
				var col=front_color
				}
				
			draw_sprite_ext(sprite,button_shape,center_x,center_y,spr_scale,spr_scale,0,col,1)
			}
	if selected=1
		draw_set_color(back_color)
		else
			draw_set_color(front_color)
	draw_text(center_x,center_y,text)
	
	
	if Has_Pressed_Button_This_Step=0 && Get_Control_Input(button_press_type) && actual_selected{
		Button_Was_Pressed=1
		Has_Pressed_Button_This_Step=1
		Clicked=1
			if single_press_effect=0
			{

			ret=check_for;
			}
else
ret=1
if sprite=0
				if on_off{
				ret=!on_variable


				}
				
	}
	else
	if single_press_effect=0
	ret=on_variable
	
	return ret;
}