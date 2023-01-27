// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Room_Type_To_Color(type){
	ret=c_white;
	switch(type)
	{
		case room_type.bedroom : ret= colour.purple; break;
		case  room_type.hallway : ret= colour.blue; break;
	}
	return ret;
}