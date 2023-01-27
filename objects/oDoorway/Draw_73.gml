/// @description Insert description here
// You can write your code in this editor
draw_set_alpha(0)
	draw_set_color(c_red)
	draw_circle(x,y,5,0)


	if !is_undefined(Rooms_Objects_Map[? my_room])
	if !is_undefined( Rooms_Objects_Map[? my_room][? obj_class.doorway])
{
var index=ds_list_find_index(Rooms_Objects_Map[? my_room][? obj_class.doorway],id) ;
if index!=-1
{
	draw_set_color(c_lime)
	draw_circle(x,y,10,0)

}
}

draw_set_alpha(1)