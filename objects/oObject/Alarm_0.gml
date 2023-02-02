/// @description Insert description here
// You can write your code in this editor


if object_class=obj_class.table{
	var avoid=mAvoid_0
	switch(floor_i_am_on)
	{
		case 1:  avoid=mAvoid_1 break;
		case 2:  avoid=mAvoid_2 break;
		case 3:  avoid=mAvoid_3 break;
	}
my_mask=instance_create_depth(x,y,0,avoid)
my_mask.sprite_index=sprite_index
my_mask.owner=id
}


if object_class=obj_class.light{
	var item=object_type
	var light=instance_create_depth(x,y,depth-20,obj_light)
	light.color_1=	Furniture_Map[? item][? furn.light_color_1]
	light.color_2=	Furniture_Map[? item][? furn.light_color_2]
	light.size=	Furniture_Map[? item][? furn.light_brightness]
	light.fluctation=	Furniture_Map[? item][? furn.light_instablility]
	light.dir=	Furniture_Map[? item][? furn.light_direction]
	light.rad=Furniture_Map[? item][? furn.light_radius]
	light.str=Furniture_Map[? item][? furn.light_strength]


	
	light.owner=id
}

