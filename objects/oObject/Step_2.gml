/// @description Insert description here
// You can write your code in this editor

if floor_i_am_on!=Floor
draw_me=0
else
draw_me=1




if Chosen_To_Pick_Up=id
{
	Selected_Furniture=id

	if mouse_check_button_pressed(mb_left)
	{

can_drop=0
alarm[4]=1
Remove_Object_From_Room(id,my_room,object_class)

Held_Furniture=id
 }
Chosen_To_Pick_Up=noone
}



if Held_Furniture=id
{
	floor_i_am_on=Floor
}
