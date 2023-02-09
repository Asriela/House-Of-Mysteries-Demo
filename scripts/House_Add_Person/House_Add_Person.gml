function House_Add_Person(type,xx,yy,player,sprite,the_id){

var character=instance_create_depth(xx,yy,-991,oCharacter);
character.grid_x=xx
character.grid_y=yy;
		var x_position=House_Start_X+xx*Tile_Width;
		var y_position=House_Start_Y+yy*Tile_Height;
character.x=x_position;
character.y=y_position;
character.is_player=player;
Set_Variable_Of(character,"is_tourist",0)
Set_Variable_Of(character,"has_eaten",0)
if player=0{
	character.npc_mask=instance_create_depth(x,y,1,oNpc)
	character.npc_mask.owner=character
}
character.my_House=id
		character.filename="Guests"
character.character_type=sprite;
character.my_height=Guest_Map[? the_id][? guest_detail.body_height]
character.noise_resistance=Guest_Map[? the_id][? guest_detail.noise_resistance]
if player=0{
	//sm(Guest_Map[? the_id][? guest_detail.our_needs])
var map_text=ds_map_write(Guest_Map[? the_id][? guest_detail.our_needs])
ds_map_read(character.need_satisfied,map_text)
}

character.hours_left_in_stay=Guest_Map[? the_id][? guest_detail.stay_length]
		character.guest_id=the_id
		character.satisfaction_map=ds_map_create()
		ds_map_read(character.satisfaction_map,ds_map_write(Guest_Map[? the_id][?guest_detail.satisfaction_map]))
		
		
character.mess_type=Guest_Map[? the_id][? guest_detail.mess_type]	
if character.mess_type!=""
{
	character.mess_rate=Guest_Map[? the_id][? guest_detail.mess_rate]	
}
		
		if sprite="Ghost"{
		character.my_mood=70
		character.my_emotion=sE_InLove
		}
		if sprite="Gnome_Standard"{
		character.my_mood=50
		character.my_emotion=sE_Neutral
		}		
			//	character.my_mood=Guest_Map[? the_id][?guest_detail.starting_mood]
			//sm(the_id)
							//	character.my_emotion=Guest_Map[? the_id][?guest_detail.starting_emotion]
							if player=0
				  ds_list_add(Current_Housed_Guests_List,character)
return character;
}


