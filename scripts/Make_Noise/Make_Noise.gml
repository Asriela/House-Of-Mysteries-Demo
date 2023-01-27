// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Make_Noise(range,target_state_variable,turn_state_on,off_timer,emotion_effect,emotion_effect_strength,mood_effect,chance_of_effect,disrupt_need){
	
	var ret=noone;
	var closest=900000;
	
	with(oCharacter)
	{
		if id!=other.id && is_player=0{
			//ss()
			var dis= point_distance(other.x,other.y,x,y)
		if dis<=range
		{
		//	sm(noise_resistance)
			var chance=round(rr(0,chance_of_effect*noise_resistance))
			if chance=0 chance=1 else chance=0
			
			if target_state_variable!=-1
			if turn_state_on=1//like wake someone up
			if Get_Variable(target_state_variable)=0
			{

				
				//only impact mood each time 
				if chance
				{
									Set_Variable(target_state_variable,1)
				if off_timer!=-1{//we must switch effect off again
				ds_list_add(state_variable_off_timer_list_time,off_timer)
				ds_list_add(state_variable_off_timer_list_name,target_state_variable)
				
					my_mood+=mood_effect
					if emotion_effect_strength>noise_resistance
					if emotion_effect!=-1
					{
							my_emotion=emotion_effect
					}
			
					if disrupt_need!=-1
					{
						end_state=1
					//	sm(disrupt_need)
						need_satisfied[? disrupt_need]=-1//-1 means we cant turn this need to satisfied this day
						//so it was disrupted -> disrupted sleep = no sleep
					}
				}
				
				
				
				}
			}

			

			
			
			


		}
		}
	}
	return ret;	

}