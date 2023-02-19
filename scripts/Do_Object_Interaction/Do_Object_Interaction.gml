// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Do_Object_Interaction(me,object){
switch(object.object_class)
{
	case obj_class.food_prep:
	audio_play_sound_at(sMenuOpenMain, x, y, 0, 100, 300, 1, false, 0.5)
	Edit_Mode=edit.food_prep
	break;
	case obj_class.work_bench:
	audio_play_sound_at(sMenuOpenMain, x, y, 0, 100, 300, 1, false, 0.5)
	Edit_Mode=edit.work_bench
	break;
	case obj_class.tray:
	audio_play_sound_at(sFoodPlace, x, y, 0, 100, 300, 1, false, 0.5)
	with(me){
		var item=Get_Variable(state_var.carrying_item)
		if item!=noone{
		object.held_item=item
			item.holder=object
			item.held_by_object=1
			Add_Object_To_Room(item,Rooms_Grid[| Floor][# grid_x,grid_y],obj_class.available_food)
		Set_Variable(state_var.carrying_item,noone)
		}
	}
	break;
}

}