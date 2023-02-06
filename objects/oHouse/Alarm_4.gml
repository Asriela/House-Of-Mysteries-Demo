/// @description Insert description here
// You can write your code in this editor



ini_open("save.ini")
if Game_Mode!=game_mode.no_loading{
var grid_0=ini_read_string("Floor_Grid","0",0)
var grid_1=ini_read_string("Floor_Grid","1",0)
var grid_2=ini_read_string("Floor_Grid","2",0)
var grid_3=ini_read_string("Floor_Grid","3",0)


if grid_0!=0{
	
ds_grid_read(Floor_Grid[| 0],grid_0)
ds_grid_read(Floor_Grid[| 1],grid_1)
ds_grid_read(Floor_Grid[| 2],grid_2)
ds_grid_read(Floor_Grid[| 3],grid_3)
for(f=0;f<3;f++)
{


for(ix=0;ix<100;ix++)
for(iy=0;iy<100;iy++)
Floor_Grid[| f][# ix,iy]=asset_get_index(Floor_Grid[| f][# ix,iy])
}

}

var grid_string=ini_read_string("rooms","buildable_area_grid",0);
if grid_string!=0
ds_grid_read(Buildable_Grid,grid_string)

var list=ds_list_create()
 list[| 0]=ini_read_string("Rooms_Grid","0",0);
list[| 1]=ini_read_string("Rooms_Grid","1",0);
list[| 2]=ini_read_string("Rooms_Grid","2",0);
list[| 3]=ini_read_string("Rooms_Grid","3",0);

var map_string=ini_read_string("rooms","rooms_type_map",0);
var rooms_tile_grid=ds_grid_create(100,100)//ds_grid_create(House_Grid_Width,House_Grid_Width);
var Rooms_Type_Map=ds_map_create();
var has_been_placed_map=ds_map_create();
					has_been_placed=0
if grid_0!=0 && map_string!=0
{

	
		ds_map_read(Rooms_Type_Map,map_string)	
	for(Floor=0;Floor<3;Floor++){
	ds_grid_read(rooms_tile_grid,list[| Floor])


		for(i=0;i<100;i++)
	for(j=0;j<100;j++)
	{
		//sm(2)
			//the room number
	Selected_Room=rooms_tile_grid[# i,j]

		//room type
			if Selected_Room!=noone{
				Item_Being_Placed=Rooms_Type_Map[? Selected_Room]
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
}
Floor=1


ini_close()


if Game_Mode=game_mode.normal
Selected_Room=-1