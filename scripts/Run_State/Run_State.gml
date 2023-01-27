function Run_State(idd)
{with(idd){
	
//DONT HAVE A STATE YET
if controlled_by=noone{
if is_player=false
		if current_state=""
		{

			Choose_State(id,false,-1)//check scores choose a state
			perform_actions=true
			move_to_next_action=true
			last_state=""
		
		}

//WE DO HAVE A STATE NOW JUST PERFORM IT
					if end_state{

							image_angle=0
							Menu_Mode=menu_mode.no_menu
							face_towards=noone
							current_state=""
							talk_emotion=""
							perform_actions=false//no more actions left to do
							end_state=false
							Hold_State=false
							is_visible=true
							state_variables_map[? "tiredness"][? "active"]=true
							AI_We_Are_Talking_To=noone 
							our_animation_name=""
							running_animation=0
						}
						else
						{
							if move_to_prev_action
							{
									image_angle=0
									face_towards=noone
									just_started_action=1
									move_to_prev_action=false			
									current_line--
									Decipher_Action(id)
									
							}
							else
				if move_to_next_action
				{
						image_angle=0
						face_towards=noone
						just_started_action=1
						move_to_next_action=false
						if current_state!=""
						if current_line<States_Action_Line_Map[? current_state][? "last"]{
						Decipher_Action(id)//break down the next line

						current_line++
					
					}
						else
						{	
						Log_Main("end state")
						end_state=true
						perform_actions=0
						}
				

				}
			
			if perform_actions
			Perform_Action(id)//perform the next line
						}
}
			//else
			//end
			
			
	

}}