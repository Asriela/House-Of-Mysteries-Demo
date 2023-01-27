/// @description Insert description here
// You can write your code in this editor
depth=-9999

//ss()

if my_room!=Rooms_Grid[# real_x,real_y]{
Remove_Object_From_Room(id,my_room,obj_class.doorway)
my_room=Rooms_Grid[# real_x,real_y]
Add_Object_To_Room(id,my_room,obj_class.doorway)	
}


if first{
	first=0
	my_object=Create_Object(real_x,real_y,"DoorPoint")
my_object.visible=0
my_object.dont_sprite=1
}

