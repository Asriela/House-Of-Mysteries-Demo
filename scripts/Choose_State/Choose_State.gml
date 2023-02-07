function Choose_State(idd,player_chosen_state, act_towards)//get chosen_state
{
	with(idd)
	{
		face_towards=noone
		state_other=-1
		if controling_char!=-1
		{
		controling_char.controlled_by=noone
		controling_char.face_towards=noone
		}
		controling_char=-1
		talk_emotion=""


		act_towards=string_replace(act_towards," ","" )
		acting_towards=Player_Character_Id_Map[? act_towards]

		var number_of_states = ds_map_size(States_Map);
		var key = ds_map_find_first(States_Map);
		var highest_score=0;
		var highest_state=""
		if player_chosen_state=false{
		for (var i = 0; i < number_of_states; i++;)
		{
		if State_Deactivation_Map[? key]>0
			new_score=-1
		else
			new_score=Get_State_Score(id,key,true,0,0,id)

		


			if real(new_score)>real(highest_score){

				highest_score=new_score
					//	sm("best "+key)
				highest_state=key

			}
		        key = ds_map_find_next(States_Map, key);

		}
	
	
		current_state=highest_state;
		my_current_state_score=highest_score
		}
		else
		{
			true_state_name=State_Names[? player_chosen_state]
			if true_state_name!=undefined
				current_state=true_state_name
			else
				current_state=player_chosen_state
		}

		if current_state!=last_state
		{
			running_animation=0
				Log_Main("CHOSE NEW STATE: ["+st(highest_state)+"] \n=========\n")
				if exists(state_target){
				state_target.in_use=0

				}
				using_object=noone
				ds_map_clear(temp_state_variables_map)
				Moving_Details(0.1,"Stand",true)
				current_line=States_Action_Line_Map[? current_state][? "first"]
				last_state=current_state
				move_to_next_action=true;
				ds_map_clear(action_map)
				if sleeping>-1{

					satisfaction_map[? guest_need.rest]=sleeping
					Satisfy_Need(need.sleep)
				sleeping=-1
				}

		}
		else{
		perform_actions=true
						//Log_Main("same as last state")
		}
	}
}