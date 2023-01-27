// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

enum quest{
	none,
	ask_out
}
function Add_Sentance(speaker_obj,speaking_id,sentance_image1,sentance_image_2,the_listener){
	with(speaker_obj){
		 				mystruct =
				{
				   speaker : speaking_id,
				    icon1 : sentance_image1,
					icon2 : sentance_image_2,
					listener: the_listener
					
				}
					 ds_list_add(conversation_list,mystruct)
	}
				
}
function Perform_Quest(){
if perform_quest=0 exit;

switch(has_quest)
{
	 case quest.ask_out:
	switch(quest_phase){
		case 0:
	 Add_Sentance(id,id,sWord_Love,sWord_Question,state_target)

	 if state_target.my_mood>80{
		 chosen_reaction="yes"
	 Add_Sentance(id,state_target,sWord_Yes,noone,id)			
	 }
	 else{
		  chosen_reaction="no"
	Add_Sentance(id,state_target,sWord_No,noone,id)			
	 }

	 quest_phase=1
	 break;
		case 1:
		//end of conversation now results of convo
		if ds_list_size(conversation_list)=0
		{
			if chosen_reaction="no"
			{
				my_emotion=sE_Crying
				my_mood-=40
			}
						if chosen_reaction="yes"
			{
				my_emotion=sE_Happy
				my_mood+=30
			}
			has_quest=noone
		}
		
		break;
	}
		
		
	 break;
}


}