// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Run_Emotion_Actions(){

switch(guest_id)
{
//GHOST===========================
	case char.ghost:
	//CRY==================
		if my_emotion=sE_Crying
		{
			if Chosen_Tutorial=tu.instruct || Chosen_Tutorial=tu.ghost{
				World_Hour=1
				World_Minutes=61
			//Chosen_Tutorial=tu.no_sleep
			}
			//state
				Set_Variable("haunting",1)
			//ani
				action_animation=sChar_Ghost_Haunt
			//word
				if word_timer=0
				{
					
				word_timer=13

						obj=instance_create_depth(x,y-27,depth-100,oWord)
						obj.fade_speed=0.01
						obj.word=choose("o","o","o","o","o","o","o")
		
				}
				word_timer-=1

			//effect
				Make_Noise(100,"wakeup",1,60,sE_Grumpy,2,-2.5,(600)/World_Speed,need.sleep)

		}
///====================================		
	break;

}
}