function Add_Guest_To_Arrive(spawn_hour,guest){
	if Guest_Arrival_By_Hour_List[| spawn_hour]=0 || is_undefined(Guest_Arrival_By_Hour_List[| spawn_hour])
	 Guest_Arrival_By_Hour_List[| spawn_hour]=ds_list_create()
	 
	 
ds_list_add(Guest_Arrival_By_Hour_List[|spawn_hour],guest)
}