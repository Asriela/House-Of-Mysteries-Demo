/// @description Insert description here
// You can write your code in this editor

draw_set_color(c_lime)
if Visualize[? vis.move_to_point] && exists(state_target)
draw_circle(state_target.x,state_target.y,2,0)
	
if is_player || is_tourist exit

if ds_list_size(conversation_list)>0{
	
	if started_sentance=0{
		started_sentance=1
		var struct=conversation_list[|0]
		the_speaker=struct.speaker
		with(the_speaker){
		speech_life=1
		say_word=struct.icon1
		say_word2=struct.icon2
		the_listener=struct.listener
				var direc=point_direction(x,y,the_listener.x,the_listener.y)
		if direc<90 || direc>270
	speech_flip=-1
	else
	speech_flip=1
		}
		speech_timer=15
	}

	
				speech_timer-=0.1
			if speech_timer<=0 
			the_speaker.speech_life=0
			if speech_timer<=0 
			if the_speaker.speech_scale=0{
				ds_list_delete(conversation_list,0)
			started_sentance=0
			}
	
}
else
{
	
	started_sentance=0;
	the_speaker=noone
	var nearest=npc_mask.my_closest;
if nearest!=noone && nearest!=npc_mask && ds_list_size(nearest.conversation_list)=0
if point_distance(x,y,nearest.x,nearest.y)<70 && my_current_event[? my_event.event]!=event.has_no_room
&&  nearest.my_current_event[? my_event.event]!=event.has_no_room
{
	if social_tension<4
	social_tension+=0.01
	
	if id>nearest
	{
	im_lead_talker=1
		nearest.im_lead_talker=0
	}


	

	if social_tension>3 && say_word=noone
	{
		say_word=choose(sWord_Agree,sWord_Disagree)
		say_word2=choose(sWord_Bed,sWord_Cup,sWord_Music)

	}
	if social_tension>3 && nearest.say_word=noone
	{	
			nearest.say_word=choose(sWord_Agree,sWord_Disagree)
		nearest.say_word2=choose(sWord_Bed,sWord_Cup,sWord_Music)
	}
	var direc=point_direction(x,y,nearest.x,nearest.y)
		if direc<90 || direc>270
	speech_flip=-1
	else
	speech_flip=1
}
else{
if social_tension>0
social_tension-=0.03
if social_tension<0
{
	speech_life=0
}

}

if say_word!=noone
{
	
		
	if im_lead_talker
	{
		if speech_switch{
			speech_life=1
			nearest.speech_life=0
		}
		else
		{
			speech_life=0
			nearest.speech_life=1
		}
			
			speech_timer-=0.1
			if speech_timer<=0{
			speech_timer=choose(5,20,10,15,10)
			speech_switch=!speech_switch
			}
			
	}
	

	
}
}



if has_quest!=noone
{
	draw_sprite(sQuest,0,x,y-24)
}

	Speak()
	
	if Visualize[? vis.needs]=1{

	var temp_scale=0.25;
	if need_satisfied[? need.eat]!=undefined
	if need_satisfied[? need.eat]<=0
	{
		draw_sprite_ext(sGUI_Needs,0,x-10,y+4,temp_scale,temp_scale,0,c_white,1)
	}
	if need_satisfied[? need.sleep]!=undefined
	if need_satisfied[? need.sleep]<=0
	{
		draw_sprite_ext(sGUI_Needs,1,x-10,y+4,temp_scale,temp_scale,0,c_white,1)
	}
	if need_satisfied[? need.social]!=undefined
	if need_satisfied[? need.social]<=0
	{
		draw_sprite_ext(sGUI_Needs,2,x-10,y+4,temp_scale,temp_scale,0,c_white,1)
	}
}


if show_character_dev_menu=char_dev_menu.emotions{
  var temp_emotions_list=ds_list_create();
  
  ds_list_add(temp_emotions_list,sE_Fine)
    ds_list_add(temp_emotions_list,sE_Crying)
	var list_size=ds_list_size(temp_emotions_list)
	var section_size=360/list_size;
	var t_dir=-30;
	for(var e=0; e<list_size;e++)
	{
		 t_dir+=12
		var t_x=x-20//x+lengthdir_x(20,t_dir);
		var t_y=y+t_dir//y+lengthdir_x(20,t_dir);
		if Mouse_In_Rectangle(t_x,t_y,10,10) && mouse_check_button_pressed(mb_left)
		my_emotion=temp_emotions_list[| e]
		draw_sprite_ext(temp_emotions_list[| e],0,t_x,t_y,0.3,0.3,0,c_aqua,0.9)
	}
}






	animation_ended=0
	if last_image_index>image_index
animation_ended=1
last_image_index=image_index

if Visualize[? vis.animation]=1{
	var text=st(animation_name)+" \n index: "+st(image_index)+"|"+st(image_number);
	draw_set_color(c_black)
	var width=string_width(text)
	var height=string_height(text)
	draw_set_halign(fa_center)
	draw_set_valign(fa_center)
	draw_rectangle(x-width/2,y-height/2,x+width/2,y+height/2,0)
	if animation_ended=1{

	draw_set_color(c_red)
	}
	else
	draw_set_color(c_white)
	draw_set_font(f_tiny)
draw_text(x,y,text)

}
