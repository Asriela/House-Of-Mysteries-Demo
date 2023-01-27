function Perform_Runs(idd)
{with(idd){

	var number_of_runs = ds_map_size(Runs_Map);
	var key = ds_map_find_first(Runs_Map);
//sm(number_of_runs)
	for (var i = 0; i < number_of_runs; i++;)
	{
		
		if ds_map_exists(state_variables_map,key) 
		{
			//RUN VARIABLE
		inspected_variable=state_variables_map[? key]
		if inspected_variable[? "active"]
		inspected_variable[? "value"]+=inspected_variable[? "change"]
		
		if inspected_variable[? "value"]>inspected_variable[? "max"]
		inspected_variable[? "value"]=inspected_variable[? "max"]
		
		if inspected_variable[? "value"]<inspected_variable[? "min"]
		inspected_variable[? "value"]=inspected_variable[? "min"]		
		
		if inspected_variable[? "effected variable"]!=""{
		if Evaluate(inspected_variable[? "value"],inspected_variable[? "sign"],inspected_variable[? "compare value"])
		Change_Variable(inspected_variable[? "effected variable"],inspected_variable[? "change value"])
		}

		}
		else
		//LOAD VARIABLE INTO MEMORY
		{
		state_variables_map[? key]=ds_map_create()
		
			for(l=0;l<array_length(Runs_Map[?key]);l++)
			{
				first_word=Get_Runs_Word(key,l,0)
				second_word=Get_Runs_Word(key,l,1)
				state_variables_map[? key][? "effected variable"]=""
				switch(first_word)
				{
					case "min": 
					state_variables_map[? key][? "min"]=real(second_word)
					break;
					case "max": 
					state_variables_map[? key][? "max"]=real(second_word)
					break;
					case "start": 
					state_variables_map[? key][? "value"]=real(second_word)
					break;
					case "change": 
					state_variables_map[? key][? "change"]=real(second_word)
					break;
					case "active": 
					state_variables_map[? key][? "active"]=bool(second_word)
					break;
					case "effect": 
					state_variables_map[? key][? "effected variable"]=second_word
					state_variables_map[? key][? "change value"]=real(Get_Runs_Word(key,l,2))
				state_variables_map[? key][? "sign"]=Get_Runs_Word(key,l,4)
				state_variables_map[? key][? "compare value"]=real(Get_Runs_Word(key,l,5))
					break;
				}
			}
		}
		
		

	
		
		//Look at each sentance to perform run 
		key = ds_map_find_next(Runs_Map, key);
	}
}
}