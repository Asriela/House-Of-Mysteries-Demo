// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Manage_Events(){
	
	with(oCharacter) {
		//events only effect us if we have a bedroom 
		if my_current_event[? my_event.event]!=event.has_no_room
		my_current_event[? my_event.event]=event.none;
		my_current_event[? my_event.room]=my_bedroom
		}
	
	
var list=Hour_Slots_Array[@ World_Hour];
Current_Event=event.none
//for each event inside this hour - tell its guests the event has started
for(e=0;e<ds_list_size(list);e++)
{
//	sm(ds_list_size(list))
	var the_event=list[| e];
	
	
	var char_map=Unique_Events_Map[? the_event][? event_detail.characters];
	var event_kind=Unique_Events_Map[? the_event][? event_detail.kind];
	Current_Event=event_kind

	//sm(Event_Enum_To_String(event_kind))
	//var event_room=Unique_Events_Map[? the_event][? "room"];

	var event_room=Distinguished_Rooms[? event_kind]
	//for each guest in this event , let them know they have an event
	//if room of type even exists
//	if !is_undefined(event_room)
	//{
		var map_index=ds_map_find_first(char_map)
	for(c=0;c<ds_map_size(char_map);c++)
	{
		with(oCharacter)
		{
			//if the character type we are matches a record in the event of character types it includes
			if my_type=map_index && char_map[? map_index]=1{
					//events only effect us if we have a bedroom 
		if my_current_event[? my_event.event]!=event.has_no_room
		{			
			my_current_event[? my_event.event]=event_kind;


				if event_kind=event.sleep
				my_current_event[? my_event.room]=my_bedroom
				else
			my_current_event[? my_event.room]=event_room;
		}
		}
		}
		map_index=ds_map_find_next(char_map,map_index)
	}
	}
	
//}
}