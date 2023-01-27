// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Character_Recalculate_Path(){
				lead.x=x
			lead.y=y
	with(lead){
		if exists(other){
			path_start_x=x
			path_start_y=y
			if exists(other.state_target)
    scr_createPath(x, y, other.state_target.x, other.state_target.y, Tile_Width, 8, true, oWall, 0);
		}
//mp_potential_path()
//mp_linear_path()
			}

		target_x=0//(move_to_tile.itx-45)*Tile_Width-Tile_Width/2+x_point_on_tile
		target_y=0//(move_to_tile.ity-45)*Tile_Height-Tile_Height/2+y_point_on_tile

}