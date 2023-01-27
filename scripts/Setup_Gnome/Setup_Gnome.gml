	function Setup_Gnome()
	{
	
	var list=0;
	
//JOHNNY THE RABBIT
//arriving late at night in the cold, scared out of his mind
	var me=char.gnor_the_gnome;
Guest_Map[? me]=ds_map_create()
Guest_Map[? me][? guest_detail.vip]=0
Guest_Map[? me][? guest_detail.name]="Gnor the Gnome"
Guest_Map[? me][? guest_detail.prefix]="gnome"
Guest_Map[? me][? guest_detail.pronoun]="he"
Guest_Map[? me][? guest_detail.pronoun2]="his"
Guest_Map[? me][? guest_detail.cash]=10
Guest_Map[? me][? guest_detail.sprite]="Gnome_Standard"
Guest_Map[? me][? guest_detail.type]=char.gnomes
Guest_Map[? me][? guest_detail.bag]="Backpack"
Guest_Map[? me][? guest_detail.element]=furn_style.lodge
Guest_Map[? me][? guest_detail.portrait]=sPort_Stern_Gnome
Guest_Map[? me][? guest_detail.up_to]="'"
Guest_Map[? me][? guest_detail.body_height]=42
Guest_Map[? me][? guest_detail.noise_resistance]=1
Guest_Map[? me][? guest_detail.resistance_to_open]=2
Guest_Map[? me][? guest_detail.openness]=3
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
Guest_Add_Need(me,guest_need.rest,-3)
Guest_Add_Need(me,guest_need.food,-3)
Guest_Add_Need(me,guest_need.social,-3)
Guest_Add_Need(me,guest_need.decor,0)
Guest_Add_Need(me,guest_need.mood,3)
//DESCRIPTION
		Guest_Map[? me][? guest_detail.introduction]
		=""
		Guest_Map[? me][? guest_detail.visual_description]
		="'the gnome looks at you but doesnt say a word, his expression so neutral you cannot possibly determine what he could be up to."

Guest_Map[? me][? guest_detail.our_needs]=ds_map_create()
	var map=Guest_Map[? me][? guest_detail.our_needs]

	ds_map_set(map,need.sleep,0)
	ds_map_set(map,need.eat,0)
	ds_map_set(map,need.social,0)
/// TRUTHS ABOUT ME
//==============================	

enum truth_gnome{
	interest_in_alien_gems
}

	
	var truth_id=truth_gnome.interest_in_alien_gems;
	var secrecy=mem_secrecy.personal;
	var short_text="alien gems";
	var long_text="'Did ye see gems that alien one be carrying, soo pretty... me cant help but wonder whats I can makes with it...' said the gnome stroking his beard."
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