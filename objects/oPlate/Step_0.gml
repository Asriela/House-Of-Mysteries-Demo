/// @description Insert description here
// You can write your code in this editor
depth=-y-800

if !exists(holder) instance_destroy()
if holder!=noone && exists(holder){
	//if we are sitting food is lower
	if holder.using_object!=noone && holder.using_object.object_class=obj_class.chair
	{
			x=holder.x
		y=holder.y
	}
	else
	{
	x=holder.x
		y=holder.y-23
	}
}



if holder.is_player=0
{
	food-=0.1
	
	if food<0
	{
		with(holder){Satisfy_Need(need.eat)}
		instance_destroy()
		
	}
}