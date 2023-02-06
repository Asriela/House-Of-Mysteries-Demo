function House_Build_Room(automatically_placed, grid_x,grid_y,room_has_been_placed,individual,preset)
{
if Selected_Room!=noone && room_has_been_placed && !is_undefined(Rooms_Type_Map[? Selected_Room] ){
if(automatically_placed || ds_map_size(Rooms_Map[? Selected_Room])=0 || Item_Being_Placed=room_type.hallway || (//we must have a room connected of same type
Rooms_Grid[| Floor][# grid_x-6,grid_y]=Selected_Room ||
Rooms_Grid[| Floor][# grid_x+6,grid_y]=Selected_Room ||
Rooms_Grid[| Floor][# grid_x,grid_y-6]=Selected_Room ||
Rooms_Grid[| Floor][# grid_x,grid_y+6]=Selected_Room ))
	{
		
		Available_Building_Space_Grid[# grid_x,grid_y]=1

House_Build_Floor(grid_x,grid_y,individual)

//Distinguished_Rooms[? Room_Map[? Selected_Room][? room_properties.type]]=Selected_Room

xx=grid_x-2;
yy=grid_y
		if xx<100
	t_xx="0"+st(xx);
	if yy<100
	t_yy="0"+st(yy);	
	if prev_room!=0
	if xx<10
	t_xx="00"+st(xx);
	if yy<10
	t_yy="00"+st(yy);	
	
ds_map_add(Rooms_Map[? Selected_Room],t_xx+"_"+t_yy,1)


	}}
else
//if checked=0
{
if (Item_Being_Placed=room_type.hallway && Placed_Hallway=1)
		Selected_Room=Hallway_Room
		else
		with(oHouse)Create_New_Room(Item_Being_Placed,preset)


}

}
function House_Build_Floor(grid_x,grid_y,individual){
	with(oHouse){
House_Add_Tile(grid_x,grid_y,tile_type.floor,1)
if individual=0{
House_Add_Tile(grid_x-1,grid_y,tile_type.floor,1)
House_Add_Tile(grid_x+1,grid_y,tile_type.floor,1)
House_Add_Tile(grid_x,grid_y-1,tile_type.floor,1)
House_Add_Tile(grid_x,grid_y+1,tile_type.floor,1)
House_Add_Tile(grid_x-1,grid_y+1,tile_type.floor,1)
House_Add_Tile(grid_x+1,grid_y+1,tile_type.floor,1)
House_Add_Tile(grid_x-1,grid_y-1,tile_type.floor,1)
House_Add_Tile(grid_x+1,grid_y-1,tile_type.floor,1)

House_Add_Tile(grid_x-2,grid_y,tile_type.floor,1)
House_Add_Tile(grid_x+2,grid_y,tile_type.floor,1)
House_Add_Tile(grid_x,grid_y-2,tile_type.floor,1)
House_Add_Tile(grid_x,grid_y+2,tile_type.floor,1)
House_Add_Tile(grid_x-2,grid_y+2,tile_type.floor,1)
House_Add_Tile(grid_x+2,grid_y+2,tile_type.floor,1)
House_Add_Tile(grid_x-2,grid_y-2,tile_type.floor,1)
House_Add_Tile(grid_x+2,grid_y-2,tile_type.floor,1)



House_Add_Tile(grid_x-2,grid_y-1,tile_type.floor,1)
House_Add_Tile(grid_x+2,grid_y-1,tile_type.floor,1)
House_Add_Tile(grid_x-1,grid_y-2,tile_type.floor,1)
House_Add_Tile(grid_x-1,grid_y+2,tile_type.floor,1)

House_Add_Tile(grid_x-2,grid_y+1,tile_type.floor,1)
House_Add_Tile(grid_x+2,grid_y+1,tile_type.floor,1)
House_Add_Tile(grid_x+1,grid_y-2,tile_type.floor,1)
House_Add_Tile(grid_x+1,grid_y+2,tile_type.floor,1)
/*
House_Add_Tile(grid_x+3,grid_y-1,tile_type.floor,0)
House_Add_Tile(grid_x+3,grid_y-2,tile_type.floor,0)
House_Add_Tile(grid_x+3,grid_y+1,tile_type.floor,0)
House_Add_Tile(grid_x+3,grid_y+2,tile_type.floor,0)

House_Add_Tile(grid_x-3,grid_y+1,tile_type.floor,0)
House_Add_Tile(grid_x+3,grid_y+1,tile_type.floor,0)
House_Add_Tile(grid_x+1,grid_y-3,tile_type.floor,0)
House_Add_Tile(grid_x+1,grid_y+3,tile_type.floor,0)


*/
}
}}