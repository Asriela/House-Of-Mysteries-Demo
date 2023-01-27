function Create_New_Room(type_of_room,preset){

	if preset=noone{
	Selected_Room=Global_Room_Number
	Room_Type_Map[? Global_Room_Number]=type_of_room
	}
	else
	{
	Selected_Room=preset
	Room_Type_Map[? preset]=type_of_room
	}

Rooms_Map[? Selected_Room]=ds_map_create();

if type_of_room=room_type.bedroom
Bedroom_Count++
if type_of_room=room_type.dining
Dining_Room_Count++

Global_Room_Number++
if type_of_room=room_type.hallway{
Hallway_Room=Selected_Room
Placed_Hallway=1
}
//sm("r"+st(Selected_Room)+" t"+st(Room_Type_Enum_To_Text(type_of_room)))
if type_of_room=room_type.dining{
Distinguished_Rooms[? event.eat ]=Selected_Room

}
}