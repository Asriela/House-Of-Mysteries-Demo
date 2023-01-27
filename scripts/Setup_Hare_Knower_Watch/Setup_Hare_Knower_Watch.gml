	function Setup_Hare_Knower_Watch()
	{
	
	var list=0;
	
//JOHNNY THE RABBIT
//arriving late at night in the cold, scared out of his mind
	var me=char.hare_runaway_watch;
Guest_Map[? me]=ds_map_create()
Guest_Map[? me][? guest_detail.vip]=1
Guest_Map[? me][? guest_detail.name]="Mysterious Rabbit"
Guest_Map[? me][? guest_detail.prefix]="Rabbit"
Guest_Map[? me][? guest_detail.pronoun]="she"
Guest_Map[? me][? guest_detail.pronoun2]="her"
Guest_Map[? me][? guest_detail.cash]=10
Guest_Map[? me][? guest_detail.sprite]="Rabbit_Gray_Watch_Runaway"
Guest_Map[? me][? guest_detail.type]=char.hares
Guest_Map[? me][? guest_detail.bag]="Backpack"
Guest_Map[? me][? guest_detail.portrait]=sPort_Watch_Rabbit
Guest_Map[? me][? guest_detail.up_to]="While it looked like she heard your question she simply kept staring ahead in a daze"
Guest_Map[? me][? guest_detail.resistance_to_open]=2
Guest_Map[? me][? guest_detail.openness]=3
Guest_Map[? me][? guest_detail.impression_of_player]=0
Guest_Map[? me][? guest_detail.stay_length]=24
Guest_Map[? me][? guest_detail.people_memories_map]=ds_map_create();
Guest_Map[? me][? guest_detail.satisfaction_map]=ds_map_create();
Guest_Map[? me][? guest_detail.has_arrive_panel]=0
Guest_Map[? me][? guest_detail.has_leave_panel]=1
Guest_Map[? me][? guest_detail.speak_on_arrival]=1
Guest_Add_Need(me,guest_need.rest,-3)
Guest_Add_Need(me,guest_need.food,-3)
Guest_Add_Need(me,guest_need.social,-3)
Guest_Add_Need(me,guest_need.decor,0)
Guest_Add_Need(me,guest_need.mood,3)
//DESCRIPTION
		Guest_Map[? me][? guest_detail.introduction]
		="Arine stumbled upon the Hollow at the dead of night, lighting and thunder announcing themselves behind her. She was soaked and shaking but not from the cold, but the fear that gripped her. For you see Arine, has been on running for her life."
		Guest_Map[? me][? guest_detail.visual_description]
		="The rabbit looked at you with eyes of swirling darkness, something was clearly horribly wrong with her. Even what looked like a ceremonial dress she was wearing was torn and tattered. "
/// TRUTHS ABOUT ME
//==============================	
enum truth_hare_runaway_watch{
	criptic_message
}
	var truth_id=truth_hare_runaway_watch.criptic_message;
	var secrecy=mem_secrecy.very_secret;
	var short_text="dark mumblings";
	var long_text="She began to mumble 'the maker cannot give what the seeker seeks' over and over again.  ";
	var starting_memory=true;
	Create_Truth(truth_id,me,short_text,long_text,starting_memory,secrecy,1,emotion.custom)
	/*
		var truth_id=truth_hare_runaway_watch.ran_away;
	var secrecy=mem_secrecy.very_secret;
	var short_text="ran away from the event";
	var long_text="she ran away from the event";
	var starting_memory=true;
	Create_Truth(truth_id,me,short_text,long_text,starting_memory,secrecy,0,emotion.sad)
	
	var truth_id=truth_hare_runaway_watch.is_white_watch;
	var secrecy=mem_secrecy.secret;
	var short_text="is white watch";
	var long_text="Arine is a white watch member";
	var starting_memory=true;
	Create_Truth(truth_id,me,short_text,long_text,starting_memory,secrecy,0,emotion.neutral)
*/	
//MY STARTING MEMORIES
//===================================

	
	/*var memory_about=char.wogs
	var memory_id=truth_wogs.disrupted_the_peace_ritual;
	var secrecy=mem_secrecy.will_share
	Add_People_Memory(me,memory_about,memory_id,secrecy,1,emotion.worried)
	*/

	


//MY NEEDS
//=========================================
		list=Guest_Map[? me][? guest_detail.needs_list]=ds_list_create();
		ds_list_add(list,event.eat)
		ds_list_add(list,event.sleep)
		Set_Food_Preferences_From_Char_Type(Guest_Map[? me][? guest_detail.type],me)


		
	

		

		
		//memories that has hand crafted dialogue
	//	Guest_Map[? the_guest][? guest_detail.scripted_people_memories_map]=ds_map_create();		
		//Set_Memory_As_Hand_Crafted_Dialogue(the_guest,mem_type.people,memory_people.wogs,"The wogs, part wolf part dog, they are ")		

	}