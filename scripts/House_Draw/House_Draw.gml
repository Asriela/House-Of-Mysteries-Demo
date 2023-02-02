function House_Draw(){
	/*	var sprite=asset_get_index("sHull_"+my_hull[| i][? hull.type]);
		var angle=my_hull[|i][? hull.angle];
		var x_position=x+my_hull[|i][? hull.x];
		var y_position=y+my_hull[|i][? hull.y];
		for(i=0;i<my_hull_size;i++)
		draw_sprite_ext(sprite,0,x_position,y_position,1,1,angle,c_white,1)
	
	*/
	/*
for(var xx=0;xx<grid_width;xx++)	
for(var yy=0;yy<grid_height;yy++)	{
	
if Buildable_Grid[# xx,yy]=1
{
			var x_position=House_Start_X+xx*(Tile_Width);
		var y_position=House_Start_Y+yy*(Tile_Height);
	draw_sprite_ext(sTile_Dirt,0,x_position,y_position,2,2,0,c_white,1)
}

}
*/
	var current_tile=0;


for( t=0;t<ds_list_size(Floor_List[|Floor]);t++)
	{

		current_tile=Floor_List[|Floor][| t]
		var xx=real(string_copy(current_tile,1,3))
		var yy= real(string_copy(current_tile,5,3))

		current_room=Rooms_Grid[| Floor][# xx,yy]

		var _room_type=Rooms_Type_Map[? current_room];
		
		var color =Get_Room_Color(_room_type)// Room_Type_To_Color(_room_type)
		
		var sprite=Floor_Grid[| Floor][# xx,yy]
		

		//if the_tiles_type=tile_type.wall{
	//	sprite=sWall_Down
	//	color=c_white
	//	}
		//asset_get_index("sTile_"+house_grid[# xx,yy][? tile.type]);
		var frame=0//house_grid[# xx,yy][? tile.frame];
		var x_position=House_Start_X+xx*Tile_Width;
		var y_position=House_Start_Y+yy*Tile_Height;

		//show_message(room_id)
		

		
		var alpha = 1;
	if Edit_Mode=edit.room && mouse_x>x_position-Half_Tile_Width && mouse_y>y_position-Half_Tile_Height
		 && mouse_x<x_position+Half_Tile_Width && mouse_y<y_position+Half_Tile_Height {
			 
			 	if mouse_check_button(mb_left)
			 if Selected_Room=noone{
				 if _room_type!=room_type.hallway
			 Selected_Room=current_room
			 }
			 
			 if mouse_check_button(mb_right){
				 	 if _room_type!=room_type.hallway{
				 			 Selected_Room=current_room
							 Item_Being_Placed=_room_type
					 }
			 }
			// Item_Being_Placed=_room_type
			 checked=1
		 }
if sprite_exists(sprite)
		draw_sprite_ext(sprite,Floor_Variation_Grid[# xx,yy],x_position,y_position,1,1,0,c_white,1);
	else
	Floor_Grid[| Floor][# xx,yy]=-1
	
		center_tile=0
 if _room_type!=room_type.hallway{

if Selected_Room=current_room
the_alpha=0.6
else
the_alpha=0.4
				if Edit_Mode=edit.room || Edit_Mode=edit.object
				{
					if the_alpha!=0.6{//not selected
			 if !(Wall_Grid[| Floor][# xx-1,yy]<=0 && Wall_Grid[| Floor][# xx+1,yy]<=0 && Wall_Grid[| Floor][# xx,yy+1]<=0 && Wall_Grid[| Floor][# xx,yy-1] <=0 &&	
				Wall_Grid[| Floor][# xx-1,yy-1]<=0 && Wall_Grid[| Floor][# xx+1,yy+1]<=0 && Wall_Grid[| Floor][# xx-1,yy+1]<=0 && Wall_Grid[| Floor][# xx+1,yy-1] <=0)		
						draw_sprite_ext(sTile_Blank,frame,x_position,y_position,1,1,0,color,the_alpha);
					}
					else
					{
						draw_sprite_ext(sTile_Blank,frame,x_position,y_position,1,1,0,color,the_alpha);
						 if !(Wall_Grid[| Floor][# xx-1,yy]<=0 && Wall_Grid[| Floor][# xx+1,yy]<=0 && Wall_Grid[| Floor][# xx,yy+1]<=0 && Wall_Grid[| Floor][# xx,yy-1] <=0 &&	
						Wall_Grid[| Floor][# xx-1,yy-1]<=0 && Wall_Grid[| Floor][# xx+1,yy+1]<=0 && Wall_Grid[| Floor][# xx-1,yy+1]<=0 && Wall_Grid[| Floor][# xx+1,yy-1] <=0)		
						draw_sprite_ext(sTile_Blank,frame,x_position,y_position,1,1,0,c_aqua,the_alpha);
					}

				}
									//		if Selected_Room=current_room  && center_tile
		//		draw_sprite_ext(sTile_Blank,frame,x_position,y_position,2,2,0,c_aqua,.5);
 }

if Edit_Mode=edit.room || Edit_Mode=edit.object
{
					draw_sprite_ext(sTile_Grid,frame,x_position,y_position,1,1,0,c_white,.03);
}
draw_set_color(c_white)
draw_set_font(f_tiny)
if Visualize[? vis.grid]
if !is_undefined(Rooms_Grid[| Floor][# xx,yy])
	draw_text(x_position,y_position,Rooms_Grid[| Floor][# xx,yy])
		}
		

				
	

	
	}
	
	