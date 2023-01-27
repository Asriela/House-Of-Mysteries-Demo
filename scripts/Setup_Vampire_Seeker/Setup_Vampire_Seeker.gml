	function Setup_Vampire_Seeker()
	{
	
	var list=0;
	
//JOHNNY THE RABBIT
//arriving late at night in the cold, scared out of his mind
	var me=char.vampire_Arine_seeker;
Guest_Map[? me]=ds_map_create()
Guest_Map[? me][? guest_detail.vip]=1
Guest_Map[? me][? guest_detail.name]="Dulthrak"
Guest_Map[? me][? guest_detail.prefix]="Vampire"
Guest_Map[? me][? guest_detail.pronoun]="he"
Guest_Map[? me][? guest_detail.pronoun2]="his"
Guest_Map[? me][? guest_detail.cash]=0
Guest_Map[? me][? guest_detail.sprite]="Vampire_Arine_Seeker"
Guest_Map[? me][? guest_detail.type]=char.vampires
Guest_Map[? me][? guest_detail.bag]="Backpack"
Guest_Map[? me][? guest_detail.portrait]=sPort_Vampire_Arine_Seeker 
Guest_Map[? me][? guest_detail.up_to]="He dismissed your question with a grunt, 'dont delay now child, tell me what I want to know…'" 
Guest_Map[? me][? guest_detail.resistance_to_open]=1
Guest_Map[? me][? guest_detail.openness]=-3
Guest_Map[? me][? guest_detail.impression_of_player]=0
Guest_Map[? me][? guest_detail.stay_length]=1
Guest_Map[? me][? guest_detail.people_memories_map]=ds_map_create();
Guest_Map[? me][? guest_detail.satisfaction_map]=ds_map_create();
Guest_Map[? me][? guest_detail.has_arrive_panel]=0
Guest_Map[? me][? guest_detail.has_leave_panel]=0
Guest_Map[? me][? guest_detail.speak_on_arrival]=1
Guest_Add_Need(me,guest_need.rest,-3)
Guest_Add_Need(me,guest_need.food,-3)
Guest_Add_Need(me,guest_need.social,-3)
Guest_Add_Need(me,guest_need.decor,-3)
Guest_Add_Need(me,guest_need.mood,3)
//DESCRIPTION
		Guest_Map[? me][? guest_detail.introduction]
		="Arine stumbled upon the Hollow at the dead of night, lighting and thunder announcing themselves behind her. She was soaked and shaking but not from the cold, but the fear that gripped her. For you see Arine, has been on running for her life."
		Guest_Map[? me][? guest_detail.visual_description]
		="''you saw her didnt you.. The white watcher, she was here..' he paced darting his eyes around for clues. 'tell me what she told you and I will share with you a great secret of the vampires.' his eyes glared as he smiled a wide creepy smile."

/// TRUTHS ABOUT ME
//==============================	
enum truth_vampire_Arine_seeker{
	red_heart_diamond

}
	var truth_id=truth_vampire_Arine_seeker.red_heart_diamond;
	var secrecy=mem_secrecy.very_secret;
	var short_text="Red heart diamond can attract vampires";
	var long_text="'Hold possession of the red heart diamond and the vampires will be drawn to this location...' a slight smile of pride crept up his face";
	var starting_memory=true;
	Create_Truth(truth_id,me,short_text,long_text,starting_memory,secrecy,1,emotion.custom)
	
	
	
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