/// @description Insert description here
// You can write your code in this editor



//draw_circle(MultiTrackCamera.x,MultiTrackCamera.y,100,1)

//sm(st(MultiTrackCamera._leftmost_x)+st(camera_get_view_y(MultiTrackCamera.camera)))
var item_to_outline=noone
var held=0
if Held_Furniture!=noone {
	item_to_outline=Held_Furniture
	held=1
}
	
if Selected_Furniture!=noone 
	item_to_outline=Selected_Furniture
	
	if item_to_outline!=noone{
		
		if held{
	var grid_x=mouse_small_grid_x+1
	var grid_y=mouse_small_grid_y+1
		}
		else
		{
				var grid_x=item_to_outline.grid_x
	var grid_y=item_to_outline.grid_y
		}

		

		
			 		var x_position=House_Start_X+grid_x*Tile_Width;
		var y_position=House_Start_Y+grid_y*Tile_Height;
//	draw_sprite_ext(asset_get_index("sObj_"+Item_Being_Placed),0,x_position,y_position,1,1,0,c_my_blueprint,0.8)
	
	//sm(Furniture_Map[? Item_Being_Placed][? furn.start_x])
	
			var start_x=grid_x-Furniture_Map[? item_to_outline.object_type][? furn.start_x]
		var start_y=grid_y-Furniture_Map[? item_to_outline.object_type][? furn.start_y]
		var x_size=Furniture_Map[? item_to_outline.object_type][? furn.xsize]
		var y_size=Furniture_Map[? item_to_outline.object_type][? furn.ysize]
		
		
 x_position=House_Start_X+(start_x)*Tile_Width-4;
  y_position=House_Start_Y+(start_y)*Tile_Height-4;
 var  alpha=1
  draw_set_color(c_white)
 if held=0{
 alpha=0.5
 draw_set_color(c_aqua)
 }
  draw_set_alpha(alpha)
		draw_line_width(x_position,y_position,x_position+x_size*Tile_Width,y_position,1)
		draw_line_width(x_position+x_size*Tile_Width,y_position,x_position+x_size*Tile_Width,y_position+y_size*Tile_Height,1)
		draw_line_width(x_position,y_position,x_position,y_position+y_size*Tile_Height,1)
draw_line_width(x_position,y_position+y_size*Tile_Height,x_position+x_size*Tile_Width,y_position+y_size*Tile_Height,1)
		draw_set_alpha(1)
}

		Selected_Furniture=noone