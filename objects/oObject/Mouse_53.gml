/// @description Insert description here
// You can write your code in this editor


if Held_Furniture=id && can_drop
{
	if Item_Being_Placed!=id{
	Cant_Pickup=1
	alarm[3]=1
	}
	Held_Furniture=noone
	var index=ds_list_find_index(Furn_List_Id,list_id)
	Furn_List_X[| index]=grid_x
	Furn_List_Y[| index]=grid_y
	my_room=Rooms_Grid[# grid_x,grid_y]

	Add_Object_To_Room(id,my_room,object_class)


}