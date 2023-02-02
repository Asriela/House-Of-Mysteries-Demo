/// @description Insert description here
// You can write your code in this editor


depth=-y+4-520

if start{
	start=0
	if angle=ang.hor{
	door_1=instance_create_depth(x,y-Tile_Width*3,0,oDoorway)
	ds_list_add(Saved_Doors_X_List,x)
	ds_list_add(Saved_Doors_Y_List,y)
							ds_list_add(Saved_Doors_XX_List,grid_x)
			ds_list_add(Saved_Doors_YY_List,grid_y)		
	ds_list_add(Saved_Doors_Angle_List,angle)
	door_1.grid_x=grid_x
	door_1.grid_y=grid_y
	door_1.floor_i_am_on=Floor
	door_2=instance_create_depth(x,y+Tile_Width*3,0,oDoorway)

	door_2.grid_x=grid_x
	door_2.grid_y=grid_y
	door_2.floor_i_am_on=Floor
	}
	else
	{
			door_1=instance_create_depth(x-Tile_Height*3,y,0,oDoorway)
			ds_list_add(Saved_Doors_X_List,x)
			ds_list_add(Saved_Doors_Y_List,y)		
						ds_list_add(Saved_Doors_XX_List,grid_x)
			ds_list_add(Saved_Doors_YY_List,grid_y)		
				ds_list_add(Saved_Doors_Angle_List,angle)
		door_1.grid_x=grid_x
		door_1.grid_y=grid_y
		door_1.floor_i_am_on=Floor
		door_2=instance_create_depth(x+Tile_Height*3,y,0,oDoorway)
		door_2.grid_x=grid_x
		door_2.grid_y=grid_y
		door_2.floor_i_am_on=Floor
		
	}
	






if angle=ang.hor{
	


door_1_room=Rooms_Grid[| Floor][# grid_x-3,grid_y-1]
door_1.my_room=door_1_room
door_1.real_x=grid_x-3
door_1.real_y=grid_y-1
Add_Object_To_Room(door_1,door_1_room,obj_class.doorway)
door_2_room=Rooms_Grid[| Floor][# grid_x+3,grid_y+1]
door_2.my_room=door_2_room
door_2.real_x=grid_x+3
door_2.real_y=grid_y+1

Add_Object_To_Room(door_2,door_2_room,obj_class.doorway)
}
else
{
	door_1_room=Rooms_Grid[| Floor][# grid_x-1,grid_y-3]
	door_1.my_room=door_1_room
door_1.real_x=grid_x-1
door_1.real_y=grid_y-3
Add_Object_To_Room(door_1,door_1_room,obj_class.doorway)
door_2_room=Rooms_Grid[| Floor][# grid_x+1,grid_y+3]
door_2.my_room=door_2_room
door_2.real_x=grid_x+1
door_2.real_y=grid_y+3
Add_Object_To_Room(door_2,door_2_room,obj_class.doorway)
}
}