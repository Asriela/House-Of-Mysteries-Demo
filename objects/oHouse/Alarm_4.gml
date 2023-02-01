/// @description Insert description here
// You can write your code in this editor



ini_open("save.ini")
if Game_Mode!=game_mode.no_loading{
var grid_string=ini_read_string("rooms","floors",0)

if grid_string!=0{
ds_grid_read(Floor_Grid,grid_string)
for(ix=0;ix<ds_grid_width(Floor_Grid);ix++)
for(iy=0;iy<ds_grid_width(Floor_Grid);iy++)
Floor_Grid[# ix,iy]=asset_get_index(Floor_Grid[# ix,iy])
}

var grid_string=ini_read_string("rooms","buildable_area_grid",0);
if grid_string!=0
ds_grid_read(Buildable_Grid,grid_string)

var grid_string=ini_read_string("rooms","rooms_grid",0);
var map_string=ini_read_string("rooms","rooms_type_map",0);
var rooms_tile_grid=ds_grid_create(House_Grid_Width,House_Grid_Width);
var room_type_map=ds_map_create();
var has_been_placed_map=ds_map_create();
					has_been_placed=0
if grid_string!=0 && map_string!=0
{
	//ss()
	ds_grid_read(rooms_tile_grid,grid_string)
	ds_map_read(room_type_map,map_string)	
	
		for(i=0;i<ds_grid_width(rooms_tile_grid);i++)
	for(j=0;j<ds_grid_height(rooms_tile_grid);j++)
	{
		//sm(2)
			//the room number
	Selected_Room=rooms_tile_grid[# i,j]

		//room type
			if Selected_Room!=noone{
				Item_Being_Placed=room_type_map[? Selected_Room]
				//we have not placed it yet so we must make a new room
				if is_undefined(has_been_placed_map[? Selected_Room])
				{
				//	sm(Item_Being_Placed)
					has_been_placed_map[? Selected_Room]=Item_Being_Placed
			with(oHouse){

					House_Build_Room(1,other.i,other.j,0,1,Selected_Room)
										House_Build_Room(1,other.i,other.j,1,1,Selected_Room)
			}
			}
						else
				{

					with(oHouse){
								
										House_Build_Room(1,other.i,other.j,1,1,noone)}
				}
				
				}
	
				

	
	}
}}




ini_close()


if Game_Mode=game_mode.normal
Selected_Room=-1