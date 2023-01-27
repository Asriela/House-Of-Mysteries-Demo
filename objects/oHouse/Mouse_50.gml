if Edit_Mode=edit.room
Place_Room(mouse_grid_x,mouse_grid_y,0)
if Edit_Mode=edit.object && Object_Menu_Mode=2
{
//	sm(Item_Being_Placed)
if Tile_Bush_Size=2
	Floor_Grid[# mouse_small_grid_x ,mouse_small_grid_y]=Item_Being_Placed
	else
	if Tile_Bush_Size=1
		{
		ds_grid_set_region(Floor_Grid,mouse_small_grid_x-2,mouse_small_grid_y-2,mouse_small_grid_x+2,mouse_small_grid_y+2,Item_Being_Placed)

	}
}

