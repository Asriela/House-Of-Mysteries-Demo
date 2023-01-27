// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Get_Variable(variable){
	if ds_map_exists(state_variables_map, variable)
	return state_variables_map[? variable][? "value"];
	else
	return -1
}	

function Get_Variable_From(the_id,variable){
	var ret=noone;
	with(the_id){
	ret=Get_Variable(variable)
	}
	return ret;
}
function Set_Variable(variable,value){
if !ds_map_exists(state_variables_map, variable)
 state_variables_map[? variable]=ds_map_create()
 state_variables_map[? variable][? "value"]=value;

}

function Set_Variable_Of(the_id,variable,value)
{

	with(the_id){
	Set_Variable(variable,value)
	}

}

function Give_Variable(me,person,variable)
{
	Set_Variable_Of(person,variable,Get_Variable_From(me,variable))
}
function Change_Variable(variable,value){
		if !ds_map_exists(state_variables_map, variable){
			state_variables_map[? variable]=ds_map_create()
			state_variables_map[? variable][? "value"]=0
			state_variables_map[? variable][? "max"]=99999
			state_variables_map[? variable][? "min"]=-99999
		}
		

 state_variables_map[? variable][? "value"]+=value;
 if state_variables_map[? variable][? "value"]>state_variables_map[? variable][? "max"]
  state_variables_map[? variable][? "value"]=state_variables_map[? variable][? "max"]
  if state_variables_map[? variable][? "value"]<state_variables_map[? variable][? "min"]
  state_variables_map[? variable][? "value"]=state_variables_map[? variable][? "min"]
 
	

}