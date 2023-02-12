	function Setup_Alien()
	{
	
	var list=0;
	
//JOHNNY THE RABBIT
//arriving late at night in the cold, scared out of his mind
	var me=char.alien;
Guest_Map[? me]=ds_map_create()
Guest_Map[? me][? guest_detail.vip]=0
Guest_Map[? me][? guest_detail.name]="z-51 the alien"
Guest_Map[? me][? guest_detail.prefix]="alien"
Guest_Map[? me][? guest_detail.pronoun]="they"
Guest_Map[? me][? guest_detail.pronoun2]="their"
Guest_Map[? me][? guest_detail.cash]=10
Guest_Map[? me][? guest_detail.sprite]="Alien"
Guest_Map[? me][? guest_detail.type]=char.aliens
Guest_Map[? me][? guest_detail.bag]="Backpack"
Guest_Map[? me][? guest_detail.element]=style.sci_fi
Guest_Map[? me][? guest_detail.portrait]=sPort_Alien
Guest_Map[? me][? guest_detail.up_to]="'"
Guest_Map[? me][? guest_detail.body_height]=59
Guest_Map[? me][? guest_detail.noise_resistance]=8
Guest_Map[? me][? guest_detail.resistance_to_open]=2
Guest_Map[? me][? guest_detail.openness]=3

Guest_Map[? me][? guest_detail.styles_list]=ds_list_create()
var list_of_styles=Guest_Map[? me][? guest_detail.styles_list];
ds_list_add(list_of_styles,style.sci_fi)


Guest_Map[? me][? guest_detail.impression_of_player]=0
Guest_Map[? me][? guest_detail.stay_length_days]=10
Guest_Map[? me][? guest_detail.stay_length]=24*Guest_Map[? me][? guest_detail.stay_length_days]

Guest_Map[? me][? guest_detail.people_memories_map]=ds_map_create();
Guest_Map[? me][? guest_detail.satisfaction_map]=ds_map_create();
Guest_Map[? me][? guest_detail.has_arrive_panel]=0
Guest_Map[? me][? guest_detail.has_leave_panel]=1
Guest_Map[? me][? guest_detail.speak_on_arrival]=0
Guest_Map[? me][? guest_detail.starting_emotion]=sE_InLove
Guest_Map[? me][? guest_detail.starting_mood]=70
Guest_Map[? me][? guest_detail.mess_type]=""
Guest_Map[? me][? guest_detail.mess_rate]=0

Guest_Add_Need(me,guest_need.rest,-3)
Guest_Add_Need(me,guest_need.food,-3)
Guest_Add_Need(me,guest_need.social,-3)
Guest_Add_Need(me,guest_need.decor,0)
Guest_Add_Need(me,guest_need.mood,3)
//DESCRIPTION
		Guest_Map[? me][? guest_detail.introduction]
		=""
		Guest_Map[? me][? guest_detail.visual_description]
		="Gari tilts their head and looks at you curiously."
		
	Guest_Map[? me][? guest_detail.our_needs]=ds_map_create()
	var map=Guest_Map[? me][? guest_detail.our_needs]
	ds_map_set(map,need.sleep,0)
	ds_map_set(map,need.eat,0)
	ds_map_set(map,need.social,0)
/// TRUTHS ABOUT ME
//==============================	

enum truth_alien{
	ghost_caused_crash
}

	
	var truth_id=truth_alien.ghost_caused_crash;
	var secrecy=mem_secrecy.personal;
	var short_text="ghosts caused crash";
	var long_text="'ghosts crashed the ship of b3-19, they were my friends, perhapse this ghost was involved.' said z-51 in their high pitched almost screeching alien voice"
var starting_memory=true;
//WE CAN ONLY MAKE TRUTHS ABOUT OURSELVES OTHERWISE WE CANT TRACK TRUTHS
	Create_Truth(truth_id,me,me,short_text,long_text,starting_memory,secrecy,1,emotion.custom)

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