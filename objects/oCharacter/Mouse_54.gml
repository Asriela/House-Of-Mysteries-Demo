/// @description Insert description here
// You can write your code in this editor
if Dev_Help[? dev_help.access_guest_memories] && selected
{
	//ss()
	Console_Mode=con.guest_memories
	Console_Inspected_Item_Map[? con_item.prime_id]=id
}



if Dev_Help[? dev_help.trigger_emotions]=1 
{
	if show_character_dev_menu!=char_dev_menu.emotions && selected{
show_character_dev_menu=char_dev_menu.emotions
//ss()
	}
else
if show_character_dev_menu=char_dev_menu.emotions
show_character_dev_menu=noone

}

/*
if selected{

hours_left_in_stay=-1
	Check_If_Characters_Have_To_Leave()
}

