// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Get_Statement_Emotion_Text(she, her, the_emotion)
{
	ret=" "
	switch(the_emotion)
	{
		case emotion.custom: 
		ret=""
		break;
		case emotion.neutral: 
		ret+=she+" said"
		break;
		case emotion.worried: 
		ret+=she+" said, "+her+" eyes darting around in worry"
		break;
	}
	return ret;
}
function Get_Guest_Object(guest)
{
	var ret=-1;
	with(oCharacter)
{
	if guest_id=guest
	ret=id
}
return ret;

}

//asset_get_index(item)
   function Furniture_Button(item,edit_mode_menu_x,edit_mode_menu_y,Object_Menu_Mode)
   {
	    var col2=c_black
		if Object_Menu_Mode=1 || Object_Menu_Mode=3
		var count=Get_Furniture_Count(item)
				else
		if Object_Menu_Mode=obj_menu_mode.dish
		var count=0
		else
				var count=Floor_Count_Map[? item]
				
				
		if count>0
		col2=c_old
		if Object_Menu_Mode=1 || Object_Menu_Mode=3
var item_name=Furniture_Map[? item][? furn.desc]
				else
		if Object_Menu_Mode=obj_menu_mode.dish
		var item_name=Dishes_Map[? item][? dish.named]
else
var item_name=Floor_Map[? item][? floor_detail.desc]

var size=80
if count>0
var temp_item_placed=noone


var added_down=0
		if Object_Menu_Mode=1 || Object_Menu_Mode=3
		var sprite=asset_get_index("sObj_"+item);
		else
		if Object_Menu_Mode=obj_menu_mode.dish
		var sprite=asset_get_index("sDish_"+item);
		else
		var sprite=asset_get_index(item)
		

	//	draw_set_color(c_light_brown)
	//	draw_rectangle(edit_mode_menu_x+20-size/2,edit_mode_menu_y-size/2,edit_mode_menu_x+20+size/2,edit_mode_menu_y+size/2,0)

		    temp_item_placed = Button_Pressed(edit_mode_menu_x+20 , edit_mode_menu_y, size, size, sGUI_Back_Box, " ", col2, col2, Item_Being_Placed, item, 0, controls.left_click, 1, 0, 0);

        if (count>0 || Object_Menu_Mode=2 )&& temp_item_placed!=0 && temp_item_placed!=noone{
			//ss()
		Item_Being_Placed=temp_item_placed

		}
if temp_item_placed!=noone
Chosen_Object=1


draw_set_color(c_dark_brown)
draw_set_alpha(1)
//draw_rectangle(edit_mode_menu_x-20,edit_mode_menu_y-40,edit_mode_menu_x+60,edit_mode_menu_y-33+15,0)
		draw_set_color(c_dark_brown)
draw_set_font(f_Speak_Small)
		var the_scale=1
		if Over_Button_Id=1{
			
		Selected_Name=item_name
		//if Item_Being_Placed!=undefined
		//if Item_Being_Placed!=-4
				//sm(Item_Being_Placed)
draw_set_font(f_Speak_Small2)
		var the_scale=1.2;
		}


		draw_sprite_ext(sprite,0,edit_mode_menu_x+size/3-10,edit_mode_menu_y+10+added_down,the_scale,the_scale,0,c_white,1)
		
		if Object_Menu_Mode=1 || Object_Menu_Mode=3
		var class=Furniture_Map[? item][? furn.style1];
		else
		if Object_Menu_Mode=obj_menu_mode.dish
		var class=0
		else
		var class=Floor_Map[? item][? floor_detail.style];
		if Object_Menu_Mode!=3 && Object_Menu_Mode!=4
		var col=Get_Class_Color(class);
		else
		var col=c_style_dk_orange
				draw_set_color(col)
		
		if Object_Menu_Mode!=obj_menu_mode.dish
		draw_text(edit_mode_menu_x+53*the_scale,edit_mode_menu_y-33*the_scale,count)		
				
		Over_Button_Id=-1
		if Object_Menu_Mode!=3 && Object_Menu_Mode!=obj_menu_mode.dish{
draw_sprite_ext(sGUI_Elements_Small_Back,0,edit_mode_menu_x-13*the_scale,
edit_mode_menu_y-32*the_scale,the_scale,the_scale,0,c_white,1)

draw_sprite_ext(sGUI_Elements_Small,class,edit_mode_menu_x-13*the_scale,
edit_mode_menu_y-32*the_scale,the_scale,the_scale,0,c_white,1)
		}
		draw_sprite_ext(sGUI_Back_Box_Frame,0,edit_mode_menu_x+20 , edit_mode_menu_y,the_scale,the_scale,0,col,0.4)		
		if Object_Menu_Mode=1 || Object_Menu_Mode=3
var style_level=Furniture_Map[? item][? furn.style1_level]
		else
		if Object_Menu_Mode=obj_menu_mode.dish
		var style_level=0
		else
var style_level=Floor_Map[? item][? floor_detail.style_level]
if Object_Menu_Mode!=obj_menu_mode.dish
		draw_text(edit_mode_menu_x+3*the_scale,edit_mode_menu_y-33*the_scale,style_level)
return temp_item_placed
   }


function Get_Furniture_Count(item)
{
ret=Furniture_Count_Map[? item]
if is_undefined(ret)
ret=0
return ret
}
function Type_More_Text(current_text,goal_text)
{
	var word_to_add="";
	var start_pos=string_length(current_text)
	var length=0;
	word_to_add=string_copy(goal_text,start_pos+1,1)

	if string_char_at(word_to_add,1)="."// || string_char_at(word_to_add,2)="."
	time_until_next_word=30
	else
	time_until_next_word=1
	
	/*
	for(var i=start_pos+1;i<string_length(goal_text);i++)
	{
				length++
		var the_char=string_char_at(goal_text,i)
		if the_char=" " || the_char="." || the_char="!" || the_char="?"
		{
			if the_char="."
			time_until_next_word=30
			word_to_add=string_copy(goal_text,start_pos,length)
			break;
		}

}
*/		 //choose(1,2,6)
	
	
	return current_text+word_to_add;
}

function Guest_Add_Need(guest,need,amount)
{
 Guest_Map[? guest][? guest_detail.satisfaction_map][? need]=amount
}

function Exit_Menu(starting_x,starting_y){
	ret=0;
					if  Button_Pressed(starting_x+470,starting_y-333,50,50,0,"X",c_old,c_black,Chosen_Feeling,0,1,controls.left_click,0,shape.square,0)
		{
						Edit_Mode=edit.none
						            Sub_Menu = "";
									ret=1
									Current_Guest=noone
									
									
		}
		return ret;
}
function Exit_Speak_Menu(starting_x,starting_y){
				if  Button_Pressed(starting_x+470,starting_y-333,50,50,0,"X",c_old,c_black,Chosen_Feeling,0,1,controls.left_click,0,shape.square,0)
		{
			Edit_Mode=edit.none
			Talk_Menu=talk_menu.main
			Current_Guest=noone
		}
}
function Get_Highest_Value_Truth(guest,person_we_want_to_know_about){
	
		var struct =
				{
				    memory : -1,
				    penalty : 0
				}
 var memory_type=guest_detail.people_memories_map;
 var memory=noone
 var memory_person_map=Guest_Map[?  guest][? memory_type][? person_we_want_to_know_about];
var last_lowest=8
if !is_undefined(memory_person_map){
	var temp_mem=ds_map_find_first(memory_person_map)
	for (var i=0;i<ds_map_size(memory_person_map);i++){
		var memory_secrecy=memory_person_map[? temp_mem][? memory_detail.memory_secrecy]-3

//if the player already has that memory
if is_undefined(Guest_Map[?  char.player][? memory_type][? person_we_want_to_know_about][? temp_mem])
		//if memory_person_map[? temp_mem][? memory_detail.memory_talked_about]=0
	if Guest_Map[? guest][? guest_detail.openness]>=memory_secrecy//if we havent said it yet
	if memory_secrecy<last_lowest
		{
			last_lowest=memory_secrecy
struct.memory=temp_mem

	struct.penalty=memory_secrecy+3-5+1

		}
			ds_map_find_next(memory_person_map,temp_mem)
	}
}
	
	
if struct.memory!=-1{
				
		return struct 
}else
return  -1
				}
