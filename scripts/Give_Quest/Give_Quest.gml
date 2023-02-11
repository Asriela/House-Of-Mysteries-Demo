function Give_Quest(person,the_quest,quest_text){
	with(person){
		has_quest=the_quest
		has_ask=1
		quest_phase=0
		chosen_reaction=""
		Guest_Map[? guest_id][? guest_detail.visual_description]=quest_text
	}
}