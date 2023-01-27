// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Run_Emotions(){

switch(my_emotion)
{
	case sE_Fine: 
		if my_mood>=75
		my_emotion=sE_Happy
		if my_mood<=50
		my_emotion=sE_Grumpy	
	break;
	case sE_Happy: 
		if my_mood<75
		my_emotion=sE_Fine
	break;
	case sE_Grumpy: 
		if my_mood>50
		my_emotion=sE_Fine
		if my_mood<=25
		my_emotion=sE_Angry	
	break;
	case sE_Angry: 
		if my_mood>25
		my_emotion=sE_Grumpy


	break;
}

}