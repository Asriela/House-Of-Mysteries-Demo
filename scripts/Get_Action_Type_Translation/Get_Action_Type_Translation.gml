function Get_Action_Type_Translation(action_type)
{
		ret="";
		
		switch (action_type)
		{
			case "use_ability": ret=function_word.use_ability ; break;
			case "quest": ret= function_word.quest;break;
			case "wait": ret=function_word.wait; break;
			case "take": ret=function_word.take; break;
			case "dish_up": ret=function_word.dish_up; break;
			case "temp": ret=function_word.temp; break;
			case "give": ret=function_word.give; break;
			case "get_close": ret=function_word.getclose; break;
			case "try_purchase": ret=function_word.try_purchase; break;
			case "target": ret= function_word.target; break;
			case "goto": ret= function_word.goto; break;
			case "goto(": ret= function_word.goto; break;
			case "sit": ret= function_word.sit; break;
			case "stand": ret= function_word.stand; break;
			case "sleep": ret= function_word.sleep; break;
			case "eat": ret= function_word.eat; break;
			case "eatmana": ret= function_word.eatmana; break;
			case "use": ret= function_word.use; break;			
			case "collect": ret= function_word.collect; break;
			case "create": ret= function_word.create; break;
			case "make": ret=function_word.make; break;
			case "assemble": ret= function_word.assemble; break;
			case "ask": ret= function_word.ask; break;
			case "talk": ret= function_word.talk; break;
			case "express(": ret= function_word.express; break;
			case "animate(": ret=function_word.animate; break;
			case "dont_repeat": ret=function_word.dontrepeatstate; break; 
			case "face": ret=function_word.face break;
			case "deactivate": ret=function_word.deactivate break;
			case "talk_with_player(": ret=function_word.talk_with_player break;
			case "talk_with_player": ret=function_word.talk_with_player break;
		}
		return ret;
}