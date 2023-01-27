// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Remove_Object_From_Room(item,the_room,object_class)
{
	if !is_undefined(Rooms_Objects_Map[? the_room])
	if !is_undefined( Rooms_Objects_Map[? the_room][? object_class])
{
var index=ds_list_find_index(Rooms_Objects_Map[? the_room][? object_class],item) ;
ds_list_delete(Rooms_Objects_Map[? the_room][? object_class],index)
}

}

function Add_Object_To_Room(my_id,my_room,object_class)
{
if is_undefined(Rooms_Objects_Map[? my_room])
{
		Rooms_Objects_Map[? my_room]=ds_map_create();
 		Rooms_Objects_Map[? my_room][? object_class]=ds_list_create();
ds_list_add(Rooms_Objects_Map[? my_room][? object_class],my_id);
}
else
{
	if is_undefined( Rooms_Objects_Map[? my_room][? object_class]){
		Rooms_Objects_Map[? my_room][? object_class]=ds_list_create();
ds_list_add(Rooms_Objects_Map[? my_room][? object_class],my_id);
	}
	else
{
var index=ds_list_find_index(Rooms_Objects_Map[? my_room][? object_class],my_id) ;
if is_undefined(index) || index=-1
	ds_list_add(Rooms_Objects_Map[? my_room][? object_class],my_id);
}

}


//sm(st(my_room)+" "+st(object_class)+" "+st(Rooms_Objects_Map[? my_room][? object_class][| 0]))
}