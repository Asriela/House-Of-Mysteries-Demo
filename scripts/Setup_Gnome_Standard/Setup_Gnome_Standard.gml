	function Setup_Gnome_Standard()
	{
	
	var list=0;
	
//JOHNNY THE RABBIT
//arriving late at night in the cold, scared out of his mind
	var me=char.gnome_standard;
Guest_Map[? me]=ds_map_create()
Guest_Map[? me][? guest_detail.vip]=0
Guest_Map[? me][? guest_detail.name]="Gnome"
Guest_Map[? me][? guest_detail.prefix]="Gnome"
Guest_Map[? me][? guest_detail.pronoun]="he"
Guest_Map[? me][? guest_detail.pronoun2]="his"
Guest_Map[? me][? guest_detail.cash]=10
Guest_Map[? me][? guest_detail.sprite]="Gnome_Standard"
Guest_Map[? me][? guest_detail.type]=char.gnomes
Guest_Map[? me][? guest_detail.bag]="Backpack"
Guest_Map[? me][? guest_detail.element]=style.lodge
Guest_Map[? me][? guest_detail.portrait]=sPort_Stern_Gnome
Guest_Map[? me][? guest_detail.up_to]="'"
Guest_Map[? me][? guest_detail.resistance_to_open]=2
Guest_Map[? me][? guest_detail.openness]=3
Guest_Map[? me][? guest_detail.impression_of_player]=0
Guest_Map[? me][? guest_detail.stay_length]=24
Guest_Map[? me][? guest_detail.people_memories_map]=ds_map_create();
Guest_Map[? me][? guest_detail.satisfaction_map]=ds_map_create();
Guest_Map[? me][? guest_detail.has_arrive_panel]=0
Guest_Map[? me][? guest_detail.has_leave_panel]=1
Guest_Map[? me][? guest_detail.speak_on_arrival]=0
Guest_Map[? me][? guest_detail.starting_emotion]=sE_Neutral
Guest_Map[? me][? guest_detail.starting_mood]=50
Guest_Add_Need(me,guest_need.rest,-3)
Guest_Add_Need(me,guest_need.food,-3)
Guest_Add_Need(me,guest_need.social,-3)
Guest_Add_Need(me,guest_need.decor,0)
Guest_Add_Need(me,guest_need.mood,3)
//DESCRIPTION
		Guest_Map[? me][? guest_detail.introduction]
		=""
		Guest_Map[? me][? guest_detail.visual_description]
		=""
/// TRUTHS ABOUT ME
//==============================	

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