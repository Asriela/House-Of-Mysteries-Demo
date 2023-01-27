	function Setup_Hare_Trader()
	{
	
	var list=0;
	
//JOHNNY THE RABBIT
//arriving late at night in the cold, scared out of his mind
	var me=char.hare_merchant;
Guest_Map[? me]=ds_map_create()
Guest_Map[? me][? guest_detail.vip]=1
Guest_Map[? me][? guest_detail.name]="Bella"
Guest_Map[? me][? guest_detail.prefix]="Hare"
Guest_Map[? me][? guest_detail.pronoun]="she"
Guest_Map[? me][? guest_detail.pronoun2]="her"
Guest_Map[? me][? guest_detail.cash]=10
Guest_Map[? me][? guest_detail.sprite]="Rabbit_Trader"
Guest_Map[? me][? guest_detail.type]=char.hares
Guest_Map[? me][? guest_detail.bag]="Backpack"
Guest_Map[? me][? guest_detail.element]=furn_style.lodge
Guest_Map[? me][? guest_detail.portrait]=sPort_Merchant_Rabbit
Guest_Map[? me][? guest_detail.up_to]=""
Guest_Map[? me][? guest_detail.body_height]=59
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
Guest_Map[? me][? guest_detail.starting_emotion]=sE_Fine
Guest_Map[? me][? guest_detail.starting_mood]=60

Guest_Add_Need(me,guest_need.rest,-3)
Guest_Add_Need(me,guest_need.food,-3)
Guest_Add_Need(me,guest_need.social,-3)
Guest_Add_Need(me,guest_need.decor,0)
Guest_Add_Need(me,guest_need.mood,3)
//DESCRIPTION
		Guest_Map[? me][? guest_detail.introduction]
		="Arine stumbled upon the Hollow at the dead of night, lighting and thunder announcing themselves behind her. She was soaked and shaking but not from the cold, but the fear that gripped her. For you see Arine, has been on running for her life."
		Guest_Map[? me][? guest_detail.visual_description]
		="Bellas wiskers twitched as she smelled the air 'the cities of the cats may be grand but its always nice to be back in rabbit country again'"

/// TRUTHS ABOUT ME
//==============================	
enum truth_trader_hare{
	idol
}

	
	var truth_id=truth_trader_hare.idol;
	var secrecy=mem_secrecy.very_secret;
	var short_text="idol";
	var long_text="'I have gotten my hands on a rare toad idol, I will be able to sell it for quite a bit' said the hare"+
"'but dont tell the toad, I dont think toads like us having things that remind them of their past' finished the hare"
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