/// @description Insert description here
// You can write your code in this editor
if !is_undefined(Rooms_Objects_Map[? 2])
if !is_undefined(Rooms_Objects_Map[? 2][? obj_class.doorway]){
var list=Rooms_Objects_Map[? 2][? obj_class.doorway];

for(i=0;i<ds_list_size(list);i++){
var val=Rooms_Objects_Map[? 2][? obj_class.doorway][|i]
//sm("doorway found")
draw_text(View_Width-300,100+i*40,val)
}}

if Visualize[? vis.grid]
		for(i=0;i<ds_grid_width(House_Path_Grid);i++)
	for(j=0;j<ds_grid_height(House_Path_Grid);j++)
	{

//ss()
current_room=mp_grid_get_cell(House_Path_Floor,i,j)

		var x_position=House_Start_X+i*Tile_Width;
		var y_position=House_Start_Y+j*Tile_Height;
		draw_set_font(f_tiny)
		draw_set_alpha(0.3)
				col=c_white
		if current_room=-1{
		col=c_red
				draw_set_alpha(1)
		}
		draw_set_color(col)
		
draw_sprite_ext(sTile_Blank,0,x_position,y_position,1,1,0,col,0.2)
//draw_text(x_position,y_position,current_room)
	}
	


if Edit_Mode=edit.room
if Item_Being_Placed=room_type.door
{
	if Door_Orientation=0
	var image=sDoor_Icon_0
	else
		var image=sDoor_Icon_1
	draw_sprite(image,0,House_Start_X+mouse_small_grid_x*Tile_Width,House_Start_Y+mouse_small_grid_y*Tile_Width)
}
else{
	draw_set_alpha(0.6)
draw_rectangle(House_Start_X+mouse_grid_x*Tile_Width-Bigger_Tile_Width/2,House_Start_Y+mouse_grid_y*Tile_Height-Bigger_Tile_Height/2,
House_Start_X+mouse_grid_x*Tile_Width+Bigger_Tile_Width/2-1,House_Start_Y+mouse_grid_y*Tile_Height+Bigger_Tile_Height/2-1,0
)
draw_set_alpha(1)
}

if Item_Being_Placed=room_type.door
{
	Selected_Room=noone
}

/*
		for(i=0;i<ds_grid_width(Rooms_Grid);i++)
	for(j=0;j<ds_grid_height(Rooms_Grid);j++)
	{


current_room=Rooms_Grid[| Floor][# i,j]
		var x_position=House_Start_X+i*Tile_Width;
		var y_position=House_Start_Y+j*Tile_Height;
		draw_set_font(f_tiny)
		draw_set_alpha(0.3)
		//if current_room!=-4
		//draw_sprite(sTile_Room,0,x_position,y_position)
draw_text(x_position,y_position,current_room)
	}