/// @description Insert description here
// You can write your code in this editor
last_y=0
on_stairs=noone
animation_name="no animation"
stairs_y=0
floor_i_am_on=1
avoid_this_object=mAvoid_0
can_draw=1
nearest_stairs=noone
moving_to_stairs=0
is_tourist=0
mess_type=""
mess_rate=0
last_image_index=0
mess_timer=0
last_x=x
near_cash_register=0
near_tourist=0
noise_resistance=1
nearest_bag=noone
word_timer=0
need_satisfied=ds_map_create()
state_variable_off_timer_list_time=ds_list_create()
state_variable_off_timer_list_name=ds_list_create()
action_animation=noone
perform_quest=0
has_quest=noone
conversation_list=ds_list_create()
the_speaker=noone
tu_count=0
im_lead_talker=0
my_height=0
busy_sleeping=0
speech_timer=0
speech_switch=0
p_path = -1;
speech_scale=0
speech_life=1
	speech_flip=1
show_tip=""
did_move=0
say_word2=noone
say_word=noone
get_ingredient=0
at_table=0;
is_furniture=0
using_object=noone
facing_direction="Down"
temp_state_variables_map=ds_map_create()
sleeping=-1
inside=0
leave=0
animate=0
event_slot=1
my_mood=60
alarm[5]=2
was_reviewed_today=0
instruction_map=ds_map_create()
my_emotion=sE_Fine
added_to_leave_list=0
image_speed=0.2
interacting_with=noone
nearest_interaction=noone
		alarm[2]=60
		current_event=""
		last_event=""
		quest_phase=0
my_type=char.forest_nymph
Character_Define(0.2,"Player")
Player_View_Direction=90
is_moving=0
chosen_reaction=""
path_start_x=0
path_start_y=0
move_speed=10
guest_id=char.none
if Dev_Help[? dev_help.guest_speed]>0
char_speed=1*Dev_Help[? dev_help.guest_speed]
AI_Local_Vars()
alarm[0]=2
vspd=0
lead=instance_create_depth(x,y,0,oChar_Lead)
lead.path=path_add()
lead.owner=id
hspd=0
carrying_item=noone
my_bedroom=noone
started_convo=0
my_grid_x=0
my_grid_y=0
social_tension=0
my_current_event=ds_map_create()
my_current_event[? my_event.event]=event.has_no_room
my_current_event[? my_event.room]=0
backpack_map=ds_map_create()
backpack_map[? ingredient.worm]=3
speech_scale=0
speech_life=0
show_character_dev_menu=noone
	Log_Observed_Character=id

function Speak()
{
/*	if social_tension<=0
	{
		speech_life=0
		say_word=noone
		say_word2=0
		speech_scale=0
	}*/
	
	if speech_life>0 || speech_scale>0{

if speech_scale<1 && speech_life>0{
	speech_scale+=0.2
	
	if speech_scale>1
	speech_scale=1
	}
	



	draw_sprite_ext(sSpeechbubble,0,x,y+(-20)-10,speech_scale*speech_flip,speech_scale,0,c_white,1)
	if speech_scale>=1{
		if speech_flip
		temp_x=(20)
		else
		temp_x=-(20+22)
		if say_word!=noone
	draw_sprite_ext(say_word,0,x+temp_x,y-39-13,speech_scale,speech_scale,0,c_white,1)
	if say_word2!=noone{
				if speech_flip
temp_x=(20+22*speech_flip)
else
temp_x=-(20+22)+20
	draw_sprite_ext(say_word2,0,x+temp_x,y-39-13,speech_scale,speech_scale,0,c_white,1)	
	}
	}
		if speech_life<=0
		{
			speech_scale-=0.2
							say_word=noone
				say_word2=noone
				Satisfy_Need(need.social)
			if speech_scale<0
			{


				speech_scale=0
				
			}
		}
	}
}

Set_Variable(state_var.carrying_item,noone)

  function Get_Gui_X_Y(){
  var cl = camera_get_view_x(view_camera[0])
        var ct = camera_get_view_y(view_camera[0])
       
        var off_x = x - cl // x is the normal x position
        var off_y = y - ct // y is the normal y position
       
        // convert to gui
        var off_x_percent = off_x / camera_get_view_width(view_camera[0])
        var off_y_percent = off_y / camera_get_view_height(view_camera[0])
       
        gui_x = off_x_percent * display_get_gui_width()
       gui_y = off_y_percent * display_get_gui_height()
		
  }
  
  Get_Gui_X_Y()