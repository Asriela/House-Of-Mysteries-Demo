
function Remove_Wall(xx,yy){
ds_list_add(Remove_Tiles_List_X,xx)
ds_list_add(Remove_Tiles_List_Y,yy)


}

function Delete_Wall(the_id){
			if instance_exists(the_id)
	with(the_id){

		instance_destroy(id)
//	mp_grid_clear_cell(House_Path_Grid,xx,yy)
Wall_Grid[| floor_i_am_on][# xx,yy]=0

//with(my_house) {Add_Room_Tile(other.xx,other.yy,other.my_room)}

	}
}