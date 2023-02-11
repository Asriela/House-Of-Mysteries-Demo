	function Setup_Witch()
	{
	
	var list=0;
	
//JOHNNY THE RABBIT
//arriving late at night in the cold, scared out of his mind
	var me=char.witch;
Guest_Map[? me]=ds_map_create()
Guest_Map[? me][? guest_detail.vip]=0
Guest_Map[? me][? guest_detail.name]="Weltiry the Witch"
Guest_Map[? me][? guest_detail.prefix]="witch"
Guest_Map[? me][? guest_detail.pronoun]="she"
Guest_Map[? me][? guest_detail.pronoun2]="her"
Guest_Map[? me][? guest_detail.cash]=10
Guest_Map[? me][? guest_detail.sprite]="Witch"
Guest_Map[? me][? guest_detail.type]=char.gnomes
Guest_Map[? me][? guest_detail.bag]="Witch_Luggage"
Guest_Map[? me][? guest_detail.element]=style.lodge
Guest_Map[? me][? guest_detail.portrait]=sPort_Witch
Guest_Map[? me][? guest_detail.up_to]="'"
Guest_Map[? me][? guest_detail.body_height]=59
Guest_Map[? me][? guest_detail.noise_resistance]=1
Guest_Map[? me][? guest_detail.resistance_to_open]=2
Guest_Map[? me][? guest_detail.openness]=3
Guest_Map[? me][? guest_detail.impression_of_player]=0
Guest_Map[? me][? guest_detail.stay_length_days]=10
Guest_Map[? me][? guest_detail.stay_length]=24*Guest_Map[? me][? guest_detail.stay_length_days]

Guest_Map[? me][? guest_detail.styles_list]=ds_list_create()
var list_of_styles=Guest_Map[? me][? guest_detail.styles_list];
ds_list_add(list_of_styles,style.arcane)
ds_list_add(list_of_styles,style.wild)

Guest_Map[? me][? guest_detail.people_memories_map]=ds_map_create();
Guest_Map[? me][? guest_detail.satisfaction_map]=ds_map_create();
Guest_Map[? me][? guest_detail.has_arrive_panel]=0
Guest_Map[? me][? guest_detail.has_leave_panel]=1
Guest_Map[? me][? guest_detail.speak_on_arrival]=0
Guest_Map[? me][? guest_detail.starting_emotion]=sE_Fine
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
		="'with a mischievous but elegant smile she looks at you with curiousity"

Guest_Map[? me][? guest_detail.our_needs]=ds_map_create()
	var map=Guest_Map[? me][? guest_detail.our_needs]

	ds_map_set(map,need.sleep,0)
	ds_map_set(map,need.eat,0)
	ds_map_set(map,need.social,0)
/// TRUTHS ABOUT ME
//==============================	

enum truth_witch{
	slips
}

	
	var truth_id=truth_witch.slips;
	var secrecy=mem_secrecy.will_share;
	var short_text="knows about my parents";
	var long_text="'That lost soul will have non of this dear. Speaking of lost souls, wouldnt you rather find out what happened to your parents? You should ask around about the slips. Oh and dear, dont get crazy on me."
	var starting_memory=true;
	Create_Truth(truth_id,char.ghost,short_text,long_text,starting_memory,secrecy,1,emotion.custom)
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