function Decipher_Proximity(){
				//target nearest FREE  object_type
				if Get_Action_Word(3)="room"{
				action_map[? "in_room"]=true
							if Get_Action_Word(4)="free"{
				action_map[? "free"]=true

				action_map[? "object_type"]=Get_Action_Word(5)

				}
				else
									action_map[? "object_type"]=Get_Action_Word(4)
				
				
				}
				else
				{
				if Get_Action_Word(3)="free"{
				action_map[? "free"]=true

				action_map[? "object_type"]=Get_Action_Word(4)

				}
				else//target nearest OBJECT_TYPE
				{

					action_map[? "object_type"]=Get_Action_Word(3)

				}
				}

}

function Decipher_Action(idd)//convert action text to an action map
{with(idd){
//	Log_Main("h")

ds_map_clear(action_map)
prev_current_line_text=current_line_text
current_line_text=""
for(i=1;i<20;i++){
	val=Get_Action_Word(i)
	if val!=-4
current_line_text+=string(val)+" "
}
Log_Main(character_type+": "+current_line_text)

	//the first word is the action type
	action_name=Get_Action_Word(1)
	action_type=Get_Action_Type_Translation(Get_Action_Word(1))
	action_map[? "action_type"]=action_type
	action_map[? "id"]=""

	//further break down the instruction
	
ds_map_clear(action_map)
prev_current_line_text=current_line_text
current_line_text=""
for(i=1;i<20;i++){
	val=Get_Action_Word(i)
	if val!=-4
current_line_text+=string(val)+" "
}
//with(oGame){Log_Main(other.current_line_text)}

	//the first word is the action type
	action_name=Get_Action_Word(1)
	action_type=Get_Action_Type_Translation(Get_Action_Word(1))
	action_map[? "action_type"]=action_type
	action_map[? "id"]=""

	//further break down the instruction
	switch(action_type)
	{
		case function_word.talk_with_player:
		action_map[? "ai's starting sentance"]=Get_Action_Word(2)
		break;
		case function_word.assemble:
		action_map[? "total progress"]=Get_Action_Word(2)
		break;
		case function_word.temp:

		action_map[? "variable"]=Get_Action_Word(2)		
		action_map[? "value"]=Get_Action_Word(3)		
		
		//sm(action_map[? "variable"])
		break;
		case function_word.goto:
		action_map[? "direction"]=-1
		if Get_Action_Word(3)=","{
		action_map[? "direction"]=real(Get_Action_Word(2))		
				action_map[? "distance"]=Get_Action_Word(4)		
		}
		else
		if Get_Action_Word(2)!=noone
		action_map[? "distance"]=Get_Action_Word(2)
		else
		action_map[? "distance"]=-1
		break;
				case function_word.quest:
				perform_quest=1
				break;
		case function_word.animate:
		if Get_Action_Word(4)=","
		{
					action_map[? "shared animation"]=1
		action_map[? "our animation"]=Get_Action_Word(2)
		action_map[? "our animation rounds"]=Get_Action_Word(3)
				action_map[? "their animation"]=Get_Action_Word(5)
		action_map[? "their animation rounds"]=Get_Action_Word(6)
		
		}
		else
		{
			action_map[? "shared animation"]=0
			action_map[? "our animation"]=Get_Action_Word(2)
					action_map[? "our animation rounds"]=Get_Action_Word(3)
		}
		break;
						case function_word.ask:
						action_map[? "question asked"]= Get_Action_Word(2)
			
						break;

				case function_word.express:

				action_map[? "emotion"]=Get_Action_Word(2)
				
				break;
				case function_word.talk:
				
				//sm("talkk")
			add_word=0	
			action_map[? "shared value"]= false
			action_map[? "value to express"]= Get_Action_Word(3)
				if Get_Action_Word(4)="to:"{
				add_word=1
				action_map[? "shared value"]= true
				}
					action_map[? "best emotion"]= Capitalize(Get_Action_Word(5))				
				action_map[? "neutral emotion"]= Capitalize(Get_Action_Word(7))
				action_map[? "worst emotion"]= Capitalize(Get_Action_Word(9))
				  action_map[? "time length"]= Get_Action_Word(12)
				
				
		break;		

		case function_word.target:

			potential_proximity_word=Get_Action_Word(2)//check for keywords
	
			switch(potential_proximity_word)
			{
				case "up":
				action_map[? "proximity"]=proximity_word.up				
				Decipher_Proximity()
				break;
								case "down":
				action_map[? "proximity"]=proximity_word.down				
				Decipher_Proximity()
				break;
								case "left":
				action_map[? "proximity"]=proximity_word.left				
				Decipher_Proximity()
				break;
								case "right":
				action_map[? "proximity"]=proximity_word.right				
				Decipher_Proximity()
				break;
				case "nearest": 

				action_map[? "proximity"]=proximity_word.nearest
								Decipher_Proximity()
				break;
				case "any":

		action_map[? "proximity"]=proximity_word.any
				Decipher_Proximity()
break;
				default:
			//target VARIABLE
				 action_map[? "object_id"]=Get_Action_Word(2)

			//	 sm("real! "+Get_Action_Word(2))
				
			}

			
		break;
		case function_word.create:
//		sm(Get_Action_Word(2))
		type=Capitalize(Get_Action_Word(2)) 
action_map[? "where_to_create"]=state_target

		action_map[? "what_to_create"]=type
		break;
		case function_word.make:
action_map[? "variable"]=Get_Action_Word(2)
break;
default://relationships
//my friendship to other + random( -10 , 10 )
//other friendship to me + random( -10 , 10 )
keyword=Get_Action_Word(1)
if keyword="my" || keyword="other"{

action_type=function_word.change_towards_value;
action_map[? "action_type"]=action_type
if Get_Action_Word(3)="to"
{
	start_word=6
	action_map[? "who am i"]=Get_Action_Word(1)
	action_map[? "to variable"]=Get_Action_Word(2)
	action_map[? "to who"]=Get_Action_Word(4)
	if Get_Action_Word(8)=","
	action_map[? "value to add"]=rr(real(Get_Action_Word(start_word+1)),real(Get_Action_Word(start_word+3)))
	else
	action_map[? "value to add"]=real(Get_Action_Word(start_word))
}
}
else//change variables
if Get_Action_Word(2)="+"
{
	action_type=function_word.change_value;
action_map[? "action_type"]=action_type

	action_map[? "the variable"]=keyword
	action_map[? "value to add"]= Get_Action_Word(3)
}
	}
	//FOR
	//Decifer_For()


for(i=1;i<20;i++){
		word=Get_Action_Word(i)
		if !is_string(word) break;
				if word="for"{
		start_word=i

		break;

				}
	}

	
	if word="for"{

		if Get_Action_Word(start_word+1)="random("
		{
			//sm(Get_Action_Word(5))
			if Get_Action_Word(start_word+3)=","
			action_map[? "time_left"]=rr(real(Get_Action_Word(start_word+2)),real(Get_Action_Word(start_word+4)))
			else
			action_map[? "time_left"]=random(real(Get_Action_Word(start_word+2)))
		}
		else{

	action_map[? "time_left"]=Get_Action_Word(start_word+1)

	
//	sm(st(action_map[? "time_left"])+" "+st(current_state))
		}
total_time_left=action_map[? "time_left"]
	

	}	
}
}