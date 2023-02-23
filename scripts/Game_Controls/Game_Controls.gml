// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Game_Controls(){
if keyboard_check_pressed(ord("1"))
{
	Floor=1
	if Edit_Mode=edit.object || Edit_Mode=edit.room
	{
		layer_set_visible(global.ground_layer,true);
		layer_set_visible(global.first_layer,false);
	}
}
if keyboard_check_pressed(ord("2"))
{
	Floor=2
	if Edit_Mode=edit.object || Edit_Mode=edit.room
	{
		layer_set_visible(global.ground_layer,false);
		layer_set_visible(global.first_layer,true);
	}
}
if keyboard_check_pressed(ord("3"))
{
	Floor=3
	if Edit_Mode=edit.object || Edit_Mode=edit.room
	{
		layer_set_visible(global.ground_layer,false);
		layer_set_visible(global.first_layer,false);
	}
}
if keyboard_check_pressed(ord("0"))
{
	Floor=0
	if Edit_Mode=edit.object || Edit_Mode=edit.room
	{
		layer_set_visible(global.ground_layer,false);
		layer_set_visible(global.first_layer,false);
	}
}
}