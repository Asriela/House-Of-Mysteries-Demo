
function Twitch_Ask(their_id, my_id, question)
			{
				Player_Ask_Map[? their_id][? "person asking"]= my_id

				Player_Ask_Map[? their_id][? "question"]= question 
				Player_Ask_Map[? their_id][? "response"]="Waiting"
				Player_Ask_Map[? their_id][? "time left"]=0
			}
function Perform_Action(idd)
{with(idd){
	last_state=current_state
//if state_target!=-4 && current_state="talk" sm(st(action_name)+" "+st(state_target))
	switch(action_map[? "action_type"])
	{
		case function_word.wait:
//do nothing cannot move further from this -put at end of states- can only move to next state if another state scores higher
		break;
		case function_word.temp:

		temp_state_variables_map[? action_map[? "variable"]] =action_map[? "value"]

		move_to_next_action=true
		break;
		case function_word.use:
		state_target.in_use=1;
		using_object=state_target
		//SIT
		if state_target.is_furniture && state_target.object_class=obj_class.chair
		{
			facing_direction=state_target.facing_direction
			x=state_target.x
			y=state_target.y+3
		}
		move_to_next_action=true
		break;
		case function_word.talk_with_player:
		//example: speak_with_player( ai , sad_?) 
						if Action_Just_Started(){
									Selected_Character=noone
					time_for_ai_to_respond=true
					first_run=true;
				 who_started_convo="ai"
				 
						}
						if action_map[? "ai's starting sentance"]=noone{
						who_started_convo="player"
						//sm("player")
						}
						
						stop_walking=1
		Build_Ai_Response_For_Player(who_started_convo,action_map[? "ai's starting sentance"])
		if move_to_next_action

				AI_We_Are_Talking_To=noone
		break;

								case function_word.deactivate:
								State_Deactivation_Map[? current_state]=true
								move_to_next_action=true
								break;
						case function_word.change_value:

	Change_Variable(action_map[? "the variable"],action_map[? "value to add"])

	move_to_next_action=1
	break;
		///TARGET KEYWORD
				case function_word.change_towards_value:
				who_am_i=action_map[? "who am i"]

				if who_am_i="my"
				{
						
					who_am_i=id

					to_who=action_map[? "to who"]
					if to_who="other" to_who=state_target
					else
					if to_who="me" to_who=id
					else
					to_who=Get_Variable(to_who)
						
					val=Change_Towards_Variable(action_map[? "to variable"],to_who,action_map[? "value to add"])

			if action_map[? "value to add"]>3 
				express_emotion="Happy"
			else
				if action_map[? "value to add"]<3 
					express_emotion="Angry"
					else
					express_emotion="Neutral"
					the_expressed_emotion=express_emotion
				}
				else
				{
						
								if who_am_i="other"{
								who_am_i=state_target
								
								}
								else
								who_am_i=Get_Variable(who_am_i)
								
					to_who=action_map[? "to who"]
					if to_who="other" to_who=state_target
					else
					if to_who="me" to_who=id
					else
					to_who=Get_Variable(to_who)

					//sm("to who: "+st(to_who))
					//sm("variable: "+st(action_map[? "to variable"]))
				//	sm("value: "+st(action_map[? "value to add"]))

only_run_once=0
					with(who_am_i){
						if other.only_run_once=0{
						other.only_run_once=1


						express_alpha=0.8
					val=Change_Towards_Variable(other.action_map[? "to variable"],other.to_who,other.action_map[? "value to add"])

				//sm(character_name+" "+st(val))
				if other.action_map[? "value to add"]>3 
				express_emotion="Happy"
			else
				if other.action_map[? "value to add"]<3 
				express_emotion="Angry"
							else
				express_emotion="Neutral"
				
				the_expressed_emotion=express_emotion
				}
			}}
				express_alpha=0.8
				move_to_next_action=true
				break;
		case function_word.talk:
				if Action_Just_Started()
				{

								if action_map[? "shared value"]{
									//ASRIELA
									to_them=Get_Towards_Variable(action_map[? "value to express"],state_other) //90 //95
		
									//PAUL

									with(state_other){
										to_me=Get_Towards_Variable(other.action_map[? "value to express"],other.id) //90 //undefined 
					
										}
								}
								else{
									value=Get_Variable(action_map[? "value to express"]) 
								with(state_other){to_me=Get_Variable(other.action_map[? "value to express"]) 
			
									}
				
								}
													if to_them>70
									talk_emotion=action_map[? "best emotion"]	
									else
										if to_them<30
								talk_emotion=action_map[? "worst emotion"]	
							else
									talk_emotion=action_map[? "neutral emotion"]
			
			
								with(state_other)
								{
											if to_me>70
											talk_emotion=other.action_map[? "best emotion"]
											else
											if to_me<30
									talk_emotion=other.action_map[? "worst emotion"]
									else
									talk_emotion=other.action_map[? "neutral emotion"]
		
									
								}
								
										Moving_Details(0.07,"Stand",true)	
										with(state_other){Moving_Details(0.07,"Stand",true)	}
				}
		//	sm("talk")

override_dir=1
							stop_walking=1
										state_other.stop_walking=1
move_to_next_action=true
			

	
		break;
		case function_word.face:
			//	state_other

							stop_walking=1
							if state_other!=-1
							{
								face_towards=state_other
								state_other.stop_walking=1
								with(state_other)
								face_towards=other
							}
							else
							face_towards=state_target

					move_to_next_action=true
		break;
				case function_word.getclose:
				if Action_Just_Started()
				{
					override_movement=1
					other_end=state_other.my_tile
					if xx<state_other.xx{
						x_point=state_other.xx-action_map[? "distance"]
					custom_point_on_grid_x=(state_other.my_tile.xx-state_other.xx)-Tile_Width/2-action_map[? "distance"]}
					else{
							x_point=state_other.xx+action_map[? "distance"]
					custom_point_on_grid_x=(state_other.my_tile.xx-state_other.xx)-Tile_Width/2+action_map[? "distance"]
					}
					y_point=state_other.yy+action_map[? "distance"]
					custom_point_on_grid_y=(state_other.my_tile.yy-state_other.yy)-Tile_Height/2
				}
				stop_walking=0
				Moving_Details(0.1,"Walk",true)	
				if point_distance(xx,yy,x_point,y_point)>1		
				{

			end_tile=other_end
					custom_location=1

//	mp_potential_step_object(x_point,y_point,lerp(0,point_distance(xx,yy,x_point,y_point),my_speed),oPhysical)

					//override_movement=0
					//move_to_next_action=1
				}
				else{
					stop_walking=1
					state_other.stop_walking=1

					custom_location=0
				move_to_next_action=true
				}
				break;
		case function_word.dontrepeatstate:
//		if exists(state_other)
//state_other.dont_repeat_state=current_state
		dont_repeat_state=current_state
		move_to_next_action=true
		break;
				case function_word.express:
						if Action_Just_Started()
								timer=0

								talk_emotion=action_map[? "emotion"]

		if Seconds(timer)> action_map[? "time_left"]{
			move_to_next_action=true
			}
			timer++
						
				break;
		case function_word.animate:
		if Action_Just_Started()
		{
if action_map[? "time_left"]=undefined
timer=undefined
else
								timer=real(action_map[? "time_left"])*60
			our_animation_rounds=action_map[? "our animation rounds"]
			our_animation_name=Capitalize(action_map[? "our animation"]) 
			if action_map[? "shared animation"]=1{
			their_animation_rounds=action_map[? "their animation rounds"]
			their_animation_name=Capitalize(action_map[? "their animation"]) 
			}
			if our_animation_name="Sleep"{
				
			if need_satisfied[? need.sleep]!=-1
			Satisfy_Need(need.sleep)
			}

		}
		
			if action_map[? "shared animation"]=1{
				face_towards=state_other
				state_other.face_towards=id
				state_other.running_animation=1
				state_other.animation_type=their_animation_name
				state_other.sprite_index=asset_get_index("s"+string(state_other.character_type)+"_"+string(their_animation_name)) 
			}
			stop_walking=1
running_animation=1

animation_type=our_animation_name
//sm(our_animation_name)
if our_animation_name!="Sleep"
sprite_index=asset_get_index("sChar_"+string(character_type)+"_"+string(our_animation_name)+"_"+st(facing_direction)) 
else{
	busy_sleeping=1
sprite_index=asset_get_index("sChar_"+string(character_type+"_Idle")) 
image_angle=90
x=state_target.x+23
y=state_target.y-7
sleeping=Furniture_Map[? state_target.object_type][? furn.level]



}
if timer<=0 || timer=undefined
{
 	if animation_ended
		{
			our_animation_rounds--

		}
		if our_animation_rounds=0{
		running_animation=0
		}
			if action_map[? "shared animation"]=1{
	 	if state_other.animation_ended
		{
			their_animation_rounds--

		}
		if their_animation_rounds=0{
		state_other.running_animation=0
		}	
			}
		
}
else
			timer--
			
		if running_animation
	image_speed=0.5
	else
	image_speed=0						if action_map[? "shared animation"]=1{


		if state_other.running_animation
state_other.image_speed=0.5
else
state_other.image_speed=0
						}


					if running_animation=0{
			talk_emotion=""
stop_walking=0
face_towards=-1
			


				if action_map[? "shared animation"]=1{
					state_other.talk_emotion=""
						state_other.face_towards=-1
			state_other.running_animation=0}
			running_animation=0

			move_to_next_action=true
			image_angle=0
			face_towards=-1

			//sm("")
			}


		break;
		case function_word.ask:
talk_emotion="Question"

		//START
		if Action_Just_Started()
			 {
				 time_passed=0

				 if is_player //JESYS HAVE MERCY YOU ARE LITERALLY THE VALIE OF OHHHH I SEE
				 {


					 if exists(acting_towards) && acting_towards.is_player{//talk to chosen player

						 state_target=acting_towards

						 Twitch_Ask(state_target.player_twitch_id,player_twitch_id,action_map[? "question asked"])	

					 }

				
				 }
				 else//talk to nearest player
				if state_target.is_player{
				Twitch_Ask(state_target.player_twitch_id,Ai_Names[| my_ai_index],action_map[? "question asked"])	

				}
		face_towards=state_target
	
					//find end ? mark and then send those lines off to evalutation
					i=current_line+2
					try{val=States_Map[? current_state][i][0]}
catch(_exception)
{end_state=1 }
if end_state=0{
					var val="";

					if States_Map[? current_state][i][0]="?" i++
					else{
						i++
					do{
					//ERROR argument is not an array
							
						val=States_Map[? current_state][i][0]
						i++

					}
				    until(val="?")
					}

					other_end_evaluation_line=i
}
				}
		
//PLAYER EVALUATION
if end_state=0{
				if state_target.is_player
				{
						//sm("jesus christ: "+st(state_target.player_twitch_id))
					
					 if Player_Ask_Map[? state_target.player_twitch_id][? "response"]="Yes"
					{
					
				
					state_other=state_target
					with(state_other){Moving_Details(0.1,"Stand","true")}
					state_other.stop_walking=1
					state_other.controlled_by=id
					controling_char=state_other
					state_other.current_state=""
					move_to_next_action=true
										stop_walking=1
										
					Player_Ask_Map[? state_target.player_twitch_id][? "question"]=""
					state_other.stop_walking=1
					Player_Ask_Map[? state_target.player_twitch_id][? "response"]=""
					current_line=other_end_evaluation_line
					}
					else
					if Player_Ask_Map[? state_target.player_twitch_id][? "response"]="No"{
					end_state=true
					Player_Ask_Map[? state_target.player_twitch_id][? "response"]=""
					}
					else
					{
						time_passed++
						if time_passed>900
						end_state=true//cant wait for a reply forever
					}
					
				}
		//AI EVALUATION
				else
				{

					//if i like doing the thing ur proposing more than the thing im doing atm
					check_score=Get_State_Score(state_target,current_state,false,current_line+1,other_end_evaluation_line,id)
					if check_score>state_target.my_current_state_score
					{
//end state with othergc
					state_other=state_target
					with(state_other){Moving_Details(0.1,"Stand","true")}
					state_other.stop_walking=1
					state_other.controlled_by=id
					controling_char=state_other
					state_other.current_state=""
					state_other.my_current_state_score=check_score
					move_to_next_action=true

					stop_walking=1
					state_other.stop_walking=1

					current_line=other_end_evaluation_line
					}
					else{
					end_state=true//we did not impress the other and they dont wanna do the action with us thus lets try another state to do
					dont_repeat_state=current_state
					}
				}
}
			break;
		case function_word.target:
//	if action_map[? "free"]=true
//IF WE HAVE A DIRECT ID 
if ds_map_exists(action_map, "object_id") {
//	sm(action_map[? "object_id"])
state_target=Get_Variable(action_map[? "object_id"])
		
}
else//WE HAVE AN OBJECT TYPE
{
//sm(action_map[? "object_type"])
				state_target=Find_Instance(action_map[? "proximity"],action_map[? "object_type"],action_map[? "in_room"]  ) 
			//	sm(state_target)

}
					if state_target!=noone{
					//	sm("")
				move_to_next_action=true
					}
				else
				end_state=true

				
		break;
		case  function_word.eat:		
/*
			eat_speed=Get_Variable("eat_speed")*10
			if amount_being_carried<eat_speed{
			eaten=amount_being_carried
			amount_being_carried=0
			move_to_next_action=true
		}
		else{
			eaten=eat_speed
			amount_being_carried-=eat_speed
		}
		
		Change_Variable("hunger",-eaten*50) */
		sm("h")
		Satisfy_Need(need.eat)

		move_to_next_action=1
		instance_destroy(Get_Variable(state_var.carrying_item))
		Set_Variable(state_var.carrying_item, noone)
		break;
		case  function_word.create:
//sm(action_map[? "what_to_create"])
if exists(action_map[? "where_to_create"]){
			state_target=Create_Object(action_map[? "what_to_create"],action_map[? "where_to_create"],0,0)
			action_map[? "where_to_create"].my_building=state_target
			move_to_next_action=true
}
else
end_state=true
		break;
		case function_word.make:	

		Set_Variable(action_map[? "variable"],state_target)
move_to_next_action=true
		break;
				case function_word.goto:

				if Action_Just_Started()
				{
					
							Character_Recalculate_Path()
							
					with(lead){path_start(p_path,other.char_speed*World_Speed-0.1,0,0)}
						
							plotted_end_location=0
							steps=0
							
				}
				if Last_World_Speed!=World_Speed{
					var loc=path_position+1
												//path_change_point(p_path,loc,path_get_point_x(p_path,loc),path_get_point_y(p_path,loc),other.char_speed*World_Speed-0.1)
with(lead){path_speed=other.char_speed*World_Speed-0.1}
	
				}
				
			//	sm(lead)
						if plotted_end_location=0{
									mp_potential_step_object(lead.x,lead.y,char_speed*World_Speed,oMask)
												var dis=real(action_map[? "distance"]);
	if exists(state_target){
				if point_distance(x,y,state_target.x,state_target.y)< dis*3
				{

					
		
				
					var angle=point_direction(state_target.x,state_target.y,x,y);
					var chances=0;
					do{
						chances++
						dis+=0
					//	angle+=choose(20,-20)
						if angle>90 && angle<270
						angle=180
						else
						angle=0
						target_x=state_target.x+lengthdir_x(dis,angle)
						target_y=state_target.y+lengthdir_y(dis,angle)
					}
					until(collision_point(target_x,target_y,oMask,0,1)=0 || chances>100)
				
						 plotted_end_location=1
						with(lead){ path_end()}
											Log_Main("found_end")
				}
	}
				else
				end_state=1
				
					//Log_Main("walking "+st(steps))
				}
				else
				{
							//	target_x=state_target.x
							//	target_y=state_target.y

			mp_potential_step_object(target_x,target_y,char_speed*World_Speed,oMask)
			if point_distance(x,y,target_x,target_y)<12{
									Log_Main("arrived")
					Moving_Details(0.1,"Stand",true)
					path_end()
										move_to_next_action=true
											face_towards=state_target
					}
					
				}
							
							

					/*	
						if custom_location{
							if state_target.object_index=oTile
								move_to_tile=state_target
							else
							move_to_tile=state_target.my_tile}*/
				
				break;
						case function_word.assemble:
						state_target.total_progress=action_map[? "total progress"]
						state_target.progress+=amount_being_carried/3
						amount_being_carried=0
						move_to_next_action=true
						break;
		case function_word.collect:
					if Action_Just_Started(){
				finnish_collecting=false
				item_type_carried= state_target.resource_type
				}
				
				
				if state_target.growths<Get_Variable("collection_speed"){
						state_target.growths=0
				amount_being_carried+=state_target.growths
				finnish_collecting=true;
				}
				else
				{
	state_target.growths-=Get_Variable("collection_speed")
				amount_being_carried+=Get_Variable("collection_speed")
				}
				
				if amount_being_carried>=Get_Variable("max_carry_weight")
				finnish_collecting=true;
				
				if finnish_collecting=true
				move_to_next_action=true
				
				//add drop what u have
				

		break;
		case function_word.sit:
		end_tile=my_tile
		
	
		

		//sm(action_map[? "time_left"])
		if Time_Is_Over(action_map[? "time_left"]){
		move_to_next_action=true
		//Standing_Details(0.1,"Stand")
		}
		else
		Moving_Details(0.1,"Sit",false)
				

		break;
		case function_word.stand:
		if Action_Just_Started(){
			timer=0		Moving_Details(0.4,"Stand",false)
		//	sm(action_map[? "time_left"])
		}

					if Seconds(timer)> action_map[? "time_left"]{
			move_to_next_action=true
			}
			timer++
		break;
		case function_word.sleep:
						if Action_Just_Started(){
							time_passed=0

				wake_up_level=rr(10,40)
				at_destination=false
				shifted_down=0
				}
				if at_destination=false
			if exists(state_target)
						{
							end_tile=state_target.my_tile

							real_dis=point_distance(xx,yy,target_x,target_y) //point_distance(x,y,target_x,target_y )
						if real_dis<10{
						at_destination=true

						}
							//		else
			//		move_to_prev_action=true
						}
						//SLEEP
						if at_destination{
			
							//WAKE UP

		talk_emotion="Sleep"
		if shifted_down=0{
		shifted_down=1
		yy=my_tile.yy+60}


							{
												//SLEEP
							is_visible=false
							state_variables_map[? "tiredness"][? "active"]=false
							Change_Variable("tiredness",-0.01)
										Hold_State=true			
										
							}
							
						if Get_Variable("tiredness")<wake_up_level{
								//sm("wake up")
								
								state_variables_map[? "tiredness"][? "active"]=true
								move_to_next_action=true
								Hold_State=false
							is_visible=true
		state_variables_map[? "tiredness"][? "active"]=true
							
							}
							
						}
						
						
		break;
		
		

	}
	just_started_action=0
} 

animation_ended=0
}