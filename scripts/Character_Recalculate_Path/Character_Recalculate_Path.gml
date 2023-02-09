// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Character_Recalculate_Path(){

		if exists(state_target)
		{
			lead.x=x
			lead.y=y
			lead.path_start_x=x
			lead.path_start_y=y
			var move_to=state_target;
			moving_to_stairs=0
			if is_undefined(state_target) ss()
			if state_target.floor_i_am_on!=floor_i_am_on
			{
					nearest_stairs=oStairs
					move_to=nearest_stairs
					moving_to_stairs=1
			}
		  
			avoid_this_object=mAvoid_0	
			var wall=mWall_0
			switch(floor_i_am_on)
			{
				case 1:
				wall=mWall_1 
				avoid_this_object=mAvoid_1
				break;
				case 2: 			
				wall=mWall_2 
				avoid_this_object=mAvoid_2
				break;
				case 3: 			
				wall=mWall_3 
				avoid_this_object=mAvoid_3
				break;
			}
			with(lead)
			{scr_createPath(x, y,move_to.x, move_to.y, Tile_Width, 8, true, wall, 0);}
	
	}



		target_x=0//(move_to_tile.itx-45)*Tile_Width-Tile_Width/2+x_point_on_tile
		target_y=0//(move_to_tile.ity-45)*Tile_Height-Tile_Height/2+y_point_on_tile

}