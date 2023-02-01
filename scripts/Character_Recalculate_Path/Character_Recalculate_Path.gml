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
			if state_target.foor_we_are_on!=foor_we_are_on
			{
					nearest_stairs=oStairs
					move_to=nearest_stairs
					moving_to_stairs=1
			}
			with(lead)
			{scr_createPath(x, y,move_to.x, move_to.y, Tile_Width, 8, true, oWall, 0);}
	
	}



		target_x=0//(move_to_tile.itx-45)*Tile_Width-Tile_Width/2+x_point_on_tile
		target_y=0//(move_to_tile.ity-45)*Tile_Height-Tile_Height/2+y_point_on_tile

}