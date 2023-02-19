function Find_Instance(proximity,type,in_room,in_shop)
{

			chosen_instance=noone;
			closest_distance=9999999;
type=Capitalize(type)

var found_object=1


any_list=ds_list_create()
//determine if tile

//IN ROOM IS DIFFERENT
if in_room>0{
	//look at all 
	if in_room=1
	var my_event_room=my_current_event[? my_event.room];
	if in_room=2
	var my_event_room=Shop_Room;
//CHECK IF OBJECT IS A PERSON
//

//sm("room "+st(my_event_room)+"\nobject class "+type+"\nobject class enum" +st(Object_Determine_Class(type)))
//ELSE LOOK THROUGH LIST OF OBJECTS MATCHING CLASS
//!!!!!!!!!!! ADD NEAREST code
//go through each
chosen_instance=-1


if is_undefined(Rooms_Objects_Map[? my_event_room])
found_object=0
//sm("no room of "+st(my_event_room))
else
if is_undefined(Rooms_Objects_Map[? my_event_room][? Object_Determine_Class(type)])
found_object=0
//sm("objects "+st(type)+" listed")



var list=Rooms_Objects_Map[? my_event_room][? Object_Determine_Class(type)];


if type="Food" && found_object
{

	var best_dish=noone
	var highest_level=0
	var dish_level=0
	for( var f=0; f<ds_list_size(list);f++)
	{
		var check_dish=list[| f];
		if check_dish
		if exists(check_dish)
		if check_dish.held_by_object=1
		{
			var styles_map=Dishes_Map[? check_dish.dish_type][? dish.style_map];
			//WHICH PLEATE TO CHOOSE
			var our_styles_list=Guest_Map[? guest_id][? guest_detail.styles_list];
			var dish_has_one_of_our_styles=0
			for(s=0;s<ds_list_size(our_styles_list);s++){//if dish has our style
				if dish_level<ds_map_find_value(styles_map,our_styles_list[| s])
			var dish_level=ds_map_find_value(styles_map,our_styles_list[| s])
				if dish_level!=-1
				{
				dish_has_one_of_our_styles=1
				}
			}
		
		//IF HAS OUR STYLE - DETERMINE BEST
		if dish_has_one_of_our_styles
		if highest_level < dish_level
		best_dish=check_dish
		}
	}
	
	if best_dish!=noone
	chosen_instance=best_dish
}
else
if type="Doorway"{ chosen_instance=list[| 0] Log_Main("CHOSE DOORWAY: "+st(chosen_instance))}
else
{
if is_undefined(list){//sm("r"+st(my_event_room)+" t"+type+" c" +st(Object_Determine_Class(type)))}
}
else
if proximity=proximity_word.any{
var chosen=random(ds_list_size(list));

	chosen_instance=list[| chosen];
//	sm("item"+st(chosen_instance)+" no"+st(chosen))
}
else
{
for( var f=0; f<ds_list_size(list);f++)
{
	var instance=list[| f];
	if instance.in_use=0{
		instance.in_use=1
	chosen_instance=instance
	break;
	}
}
}


}
//sm(chosen_instance)
}
else
{
if ds_map_exists(state_variables_map,string_lower(type)){

chosen_instance=state_variables_map[?string_lower( type)][?"value"]
}
else
{
if Word_Is_A_Tile_Type(type)
{

if proximity=proximity_word.up{
	tile=Island_Grid[# my_tile.itx,my_tile.ity-1]
	if exists(tile)
	{
		chosen_instance=tile;
	}
}
else
if proximity=proximity_word.down{
	tile=Island_Grid[# my_tile.itx,my_tile.ity+1]
	if exists(tile)
	{
		chosen_instance=tile;
	}
}
else
if proximity=proximity_word.left{
	tile=Island_Grid[# my_tile.itx-1,my_tile.ity]
	if exists(tile)
	{
		chosen_instance=tile;
	}
}
else
if proximity=proximity_word.right{
	tile=Island_Grid[# my_tile.itx+1,my_tile.ity]
	if exists(tile)
	{
		chosen_instance=tile;
	}
}
else
for(ix=0;ix<ds_grid_width(Island_Grid);ix++)
for(iy=0;iy<ds_grid_height(Island_Grid);iy++)
{
	if exists(Island_Grid[# ix,iy])
	with(Island_Grid[# ix,iy])
	{
if mp_grid_path(House_Path_Grid,other.path,other.my_tile.itx,other.my_tile.ity,itx,ity,1){

	switch(proximity)
	{

		
		case proximity_word.nearest: 
				dist=point_distance(draw_x,draw_y,other.draw_x,other.draw_y)
				if Types_Match(tile_type,type) && dist<other.closest_distance && !(free && exists(my_object))
				{

			//	sm(string(id)+" "+string(dist))
					other.closest_distance=dist
					other.chosen_instance=id;
				}
				break;
				
		case proximity_word.any:
			if Types_Match(tile_type,type) && !(free && exists(my_object))
				{

				ds_list_add(other.any_list,id)
				}
				break;
	}
}}
	
}

if proximity=proximity_word.any
{
				if ds_list_size(any_list)>0{
	i= round(random(ds_list_size(any_list)))-1
chosen_instance=any_list[| i]
				}
//sm("found"+ st(any_list[| i]))
}
}
ds_list_clear(any_list)

//object category

//type= Word_Is_A_Object_Category(type)
if chosen_instance=noone{
	var closest_distance=9999999
	with(oObject)
	{
//sm(type)
var dont_continue=0;
var look_for_object_class=-1;
var t_obj_class=Object_Determine_Class(type)

if t_obj_class!=	obj_class.none{
	look_for_object_class=t_obj_class
}
	if type="Shrine"
	other.chosen_instance=Island_Grid[# Island_Grid_Width/2+1,Island_Grid_Height/2]

	
//Log_Main("TEXT TYPE "+st(type))


		
	switch(proximity)
	{
		case proximity_word.nearest: 
			var dist=point_distance(draw_x,draw_y,other.draw_x,other.draw_y)
	//		sm(other.draw_x)
			//
		//	sm("my_tile: "+string(my_tile)+" dist: "+string(dist))


			if id!=other && dist<closest_distance
			{

	//	sm(string(id)+" "+string(dist))
	
	if (look_for_object_class!=-1 && look_for_object_class=object_class) || object_type=type {
				other.closest_distance=dist
				other.chosen_instance=id;
		//		if look_for_object_class=object_class
//		if object_type!="DoorPoint"
	//sm("looking for "+st(look_for_object_class)+ " class we have"+st(object_class)+"obj type "+object_type)
	}
			}
			break;
							case proximity_word.any:
					//		sm(object_group)
		
///sm(object_type)
if object_class=obj_class.bed
			ds_list_add(other.any_list,id)
				
				break;
	
		}
	
	////////////
}
		if proximity=proximity_word.any{
			if ds_list_size(any_list)>0{
	i= round(random(ds_list_size(any_list)))-1
chosen_instance=any_list[| i]
			}
}}
ds_list_clear(any_list)
				closest_distance=9999999;	
if chosen_instance=noone{
		with(oCharacter)
		{

	
						if id!=other.id
			{
				switch(proximity)
	{
		case proximity_word.nearest: 
			dist=point_distance(draw_x,draw_y,other.draw_x,other.draw_y)
	//		sm(other.draw_x)
			//
		//	sm("my_tile: "+string(my_tile)+" dist: "+string(dist))


			if character_type=type && dist<other.closest_distance
			{

		//	sm(string(id)+" "+string(dist))
				other.closest_distance=dist
				other.chosen_instance=id;
			}
			break;
							case proximity_word.any:
			if  character_type=type 
				{

			ds_list_add(other.any_list,id)
				}
				break;
	}
		}
				//	sm(chosen_instance)

if proximity=proximity_word.any{
				if ds_list_size(any_list)>0{
	i= round(random(ds_list_size(any_list)))-1
chosen_instance=any_list[| i]}
}}}
}
}
//sm("end"+ st(chosen_instance))
if found_object=0
chosen_instance=noone
		return chosen_instance;
	
}