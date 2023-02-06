/// @description Insert description here
// You can write your code in this editor
if Dev_Help[? dev_help.access_object_room_data]
{
	//ss()
	Console_Mode=con.show_objects_room_data
	Console_Inspected_Item_Map[? con_item.prime_id]=id
	Console_Inspected_Item_Map[? con_item.secondary_id]=my_room
}
else
if Move_Furniture_Mode
if 	Held_Furniture=noone
{
	instance_destroy(id)
				Furniture_Count_Map[? object_type]++
				pos=ds_list_find_index(Furn_List_Id,list_id)
				ds_list_delete(Furn_List_X,pos)
ds_list_delete(Furn_List_Y,pos)
ds_list_delete(Furn_List_Type,pos)
ds_list_delete(Furn_List_Floor,pos)
}


