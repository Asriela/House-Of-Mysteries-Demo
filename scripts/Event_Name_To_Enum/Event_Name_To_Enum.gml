// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Event_Name_To_Enum(event_string){
	var ret=event.none;
switch(event_string)
{
	case "idle": ret=event.none break;
	case "eat": ret=event.eat break;
	case "sleep": ret=event.sleep break;
	case "drink": ret=event.drink break;
	case "read": ret=event.read break;
	case "leave": ret=event.leave break;
}
return ret;
}


function Event_Enum_To_String(event_enum){
	var ret="";
	switch(event_enum)
{
	case event.eat: ret="dinner";  break;
	case event.none: ret="none"; break;
	case event.sleep: ret="bed time"; break;
	case event.drink: ret="drink"; break;

	case event.read: ret="read"; break;
	case event.leave: ret="leave" break;
	case event.has_no_room: ret="has no room" break;	
}
	return ret;
}