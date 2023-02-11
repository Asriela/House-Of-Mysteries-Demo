function Check_If_Characters_Have_To_Leave(){
with(oCharacter){
		if is_player=0 && is_tourist=0
		if added_to_leave_list=0{
		hours_left_in_stay--
		if hours_left_in_stay<1
		{
			if Guest_Map[? guest_id][? guest_detail.has_leave_panel]{
//		ds_list_add(Guests_That_Are_Leaving_List,id)
added_to_leave_list=1
		hours_left_in_stay=0
			}
			else
			leave=1
		}
		}
	}}