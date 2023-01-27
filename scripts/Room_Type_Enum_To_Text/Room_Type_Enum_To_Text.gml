// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Room_Type_Enum_To_Text(type){
	var ret="";
	switch(type)
	{
		case room_type.bedroom: ret="Bedroom" break;
		case room_type.dining: ret="Dining" break;
		case room_type.hallway: ret="Hallway" break;
	}
return ret;
}