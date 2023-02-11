/// @description Insert description here
// You can write your code in this editor
depth=-y-800

if !exists(holder) instance_destroy()
if holder!=noone && exists(holder){
	//if we are sitting food is lower
	if held_by_object || (holder.using_object!=noone && holder.using_object.object_class=obj_class.chair)
	{
		floor_i_am_on=holder.floor_i_am_on
			x=holder.x
		y=holder.y
	}
	else
	{
		floor_i_am_on=holder.floor_i_am_on
	x=holder.x
		y=holder.y-23
	}
}



