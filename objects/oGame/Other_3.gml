/// @description Insert description here
// You can write your code in this editor
if Game_Mode=game_mode.no_save exit;
 doors_x_map=ds_map_create()
 doors_y_map=ds_map_create()
 doors_flip_map=ds_map_create()

with(oDoor){
	other.doors_x_map[? my_unique_id]=grid_x;
	//sm(grid_x)
	other.doors_y_map[? my_unique_id]=grid_y;
		other.doors_flip_map[? my_unique_id]=angle
//sm(ds_map_size(other.doors_x_map))
}


if Can_Save=1{

ini_open("save.ini")
var rec_name=ds_map_find_first(Recipies_Map)
var all_recipies_list=ds_list_create()

for(i=0;i<ds_map_size(Recipies_Map);i++){
ds_list_add(all_recipies_list,rec_name)
ini_write_string("recipies",rec_name,ds_list_write(Recipies_Map[? rec_name]));
rec_name=ds_map_find_next(Recipies_Map,rec_name)
}
ini_write_string("a","recipe_list",ds_list_write(all_recipies_list));


event_start_hour_list=ds_list_create()
event_end_hour_list=ds_list_create()
event_type_list=ds_list_create()
event_lane_list=ds_list_create()

var event_id=ds_map_find_first(Unique_Events_Map)
for (var i = 0; i < ds_map_size(Unique_Events_Map); ++i) {
   var map=Unique_Events_Map[? event_id]
	ds_list_add(event_start_hour_list,map[? event_detail.start] )
	ds_list_add(event_end_hour_list,map[? event_detail.ending] )
	ds_list_add(event_type_list,map[? event_detail.kind] )
	ds_list_add(event_lane_list,map[? event_detail.lane] )

	event_id=ds_map_find_next(Unique_Events_Map,event_id)
}


ini_write_string("a","event_star_hour",ds_list_write(event_start_hour_list));
ini_write_string("a","event_end_hour",ds_list_write(event_end_hour_list))
ini_write_string("a","event_type",ds_list_write(event_type_list))
ini_write_string("a","event_lane",ds_list_write(event_lane_list))

ini_write_string("a","furn_y",ds_list_write(Furn_List_Y));
ini_write_string("a","furn_x",ds_list_write(Furn_List_X))
ini_write_string("a","furn_type",ds_list_write(Furn_List_Type))
ini_write_string("a","furn_floor",ds_list_write(Furn_List_Floors))
//sm(ds_list_size(Furn_List_Floors))

ini_write_string("a","saved_doors_x",ds_list_write(Saved_Doors_X_List));
ini_write_string("a","saved_doors_y",ds_list_write(Saved_Doors_Y_List))
ini_write_string("a","saved_doors_xx",ds_list_write(Saved_Doors_XX_List));
ini_write_string("a","saved_doors_yy",ds_list_write(Saved_Doors_YY_List))
ini_write_string("a","saved_doors_angle",ds_list_write(Saved_Doors_Angle_List))
ini_write_string("a","saved_doors_floor",ds_list_write(Saved_Doors_Floor_List))

ini_write_string("a","remove_tiles_list_x",ds_list_write(Remove_Tiles_List_X));
ini_write_string("a","remove_tiles_list_y",ds_list_write(Remove_Tiles_List_Y))
ini_write_string("a","remove_tiles_list_floor",ds_list_write(Remove_Tiles_List_Floor))


//ini_write_string("save","doors_x_map",ds_map_write(doors_x_map));
//ini_write_string("save","doors_y_map",ds_map_write(doors_y_map))
//ini_write_string("save","doors_flip_map",ds_map_write(doors_flip_map))
ini_close()



ini_open("save.ini")
for(f=0;f<3;f++)
for(ix=0;ix<100;ix++)
for(iy=0;iy<100;iy++)
Floor_Grid[| f][# ix,iy]=sprite_get_name(Floor_Grid[| f][# ix,iy])



ini_write_string("Floor_Grid","0",ds_grid_write(Floor_Grid[| 0]));
ini_write_string("Floor_Grid","1",ds_grid_write(Floor_Grid[| 1]));
ini_write_string("Floor_Grid","2",ds_grid_write(Floor_Grid[| 2]));
ini_write_string("Floor_Grid","3",ds_grid_write(Floor_Grid[| 3]));

ini_write_string("Rooms_Grid","0",ds_grid_write(Rooms_Grid[| 0]));
ini_write_string("Rooms_Grid","1",ds_grid_write(Rooms_Grid[| 1]));
ini_write_string("Rooms_Grid","2",ds_grid_write(Rooms_Grid[| 2]));
ini_write_string("Rooms_Grid","3",ds_grid_write(Rooms_Grid[| 3]));

ini_write_string("rooms","buildable_area_grid",ds_grid_write(Buildable_Grid));
ini_write_string("rooms","rooms_type_map",ds_map_write(Rooms_Type_Map));


ini_close()
}
/*
ini_open("save.ini")
var grid=ini_write_string("save","building_grid",ds_grid_write(Available_Building_Space_Grid));

ini_close()