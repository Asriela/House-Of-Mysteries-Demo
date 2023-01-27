// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Get_Towards_Variable(variable,towards_who){
				
				//if its a new value
					if !ds_map_exists(state_towards_variables_map,variable){
				state_towards_variables_map[? variable] =ds_map_create()
				state_towards_variables_map[? variable][? towards_who]=50
					}
	
				return state_towards_variables_map[? variable][? towards_who] ;
				}
					function Change_Towards_Variable(variable,towards_who, value){



				//if its a new value
				if state_towards_variables_map!=-1
				state_towards_variables_map=ds_map_create()
				
					if !ds_map_exists(state_towards_variables_map,variable){
		
				state_towards_variables_map[? variable] =ds_map_create()
				state_towards_variables_map[? variable][? towards_who]=50
					}
	
				 state_towards_variables_map[? variable][? towards_who]+=value ;
				}		
							function Set_Towards_Variable(variable,towards_who, value){
				
				//if its a new value
					if !ds_map_exists(state_towards_variables_map,variable){
				state_towards_variables_map[? variable] =ds_map_create()
				state_towards_variables_map[? variable][? towards_who]=0
					}
	
				 state_towards_variables_map[? variable][? towards_who]=value ;
				}		
