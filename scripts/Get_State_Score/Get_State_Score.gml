								function Get_Proximity_Word(word)
								{ret=-1
									switch(word)
									{
										case "nearest": ret=proximity_word.nearest; break;
										case "any": ret=proximity_word.any; break;

									}
									return ret;
								}
function Get_State_Score(idd,state_name,our_own_score_evaluation,start_line,end_line,who_cast_evaluation)
{

	with(idd){

	score_value=0
	failed_evaluation=false
	if state_name!=dont_repeat_state{
	//look at every line of evaluation
	if our_own_score_evaluation=true
	{
	start_line=0
	end_line=States_Action_Line_Map[? state_name][? "first"]-1 
	}
//	if state_name="tourist_browse"
//sm(state_name+st(end_line))
	for(l=start_line;l<end_line && failed_evaluation=false;l++)
	{


					if failed_evaluation=false
					{
					
					line_index=l
					//the word that determines how the line will function
					Get_All_Evaluation_Words(state_name,line_index)

					//break down the evaluation 
					switch(word[1])
					{
						case "if": 

//SECOND WORD BEGIN
							switch(word[2])
							{
								case "my":
								if word[4]="to"{
									add_word=0
									variable=	word[3]
									if word[5]="nearest"{
										add_word=1
									other_person=Find_Instance(Get_Proximity_Word("nearest"),word[6])
									}
									if word[5]="any"{
										add_word=1
									other_person=Find_Instance(Get_Proximity_Word("any"),word[6])
									}
									if word[5]="other"
									other_person=who_cast_evaluation
									value=Get_Towards_Variable(variable,other_person)

									if !Evaluate(value,word[6+add_word],word[7+add_word]) {
									failed_evaluation=true		


									}
		
								}
								break;
							
								case "nearest":
								//if word[4]
								obj= Find_Instance(Get_Proximity_Word("nearest"), word[3])
								//sm(obj)
								if !exists(obj) failed_evaluation=true
								else
								{
								
								//	if word[3]="Wood_tree"sm("")
								if word[4]="has"
								{
									if word[5]="growth" 
									if !Evaluate(obj.growths,word[6],word[7]) 
									failed_evaluation=true		
								
									if word[5]="progress" {
										//sm(st(obj.progress))
									if !Evaluate(obj.progress,word[6],word[7]) 
									failed_evaluation=true
									}
								}
								else//towards value
								{
									if word[5]="to"
									{
									variable=word[4]
									
									value=Get_Towards_Variable(variable,id)
									
									if !Evaluate(value,word[7],word[8]) 
									failed_evaluation=true		
									}
								}
								
								
								}
								break;
								case "no":
								 if word[4]= "exists"
								 if Find_Instance(proximity_word.nearest,word[3])
								 failed_evaluation=true
								break;
								case "random(":
					
								//sm(word[3] )
								if round(random(word[3] ))!=1
								failed_evaluation=true
								
				
	
								
								break;
								
								case "distance":
								if word[3]="to"
								{
									prox=-1
									if word[4]="nearest"{
				
									prox=proximity_word.nearest
									obj=word[5]
									signs=word[6]
									compare_value=word[7]
									}
									else{
									obj=word[4]
									signs=word[5]
									compare_value=word[6]
									}
									inst= Find_Instance(prox,obj)

									if exists(inst)
									{
							
										if !Evaluate(point_distance(draw_x,draw_y,inst.draw_x,inst.draw_y),signs,compare_value){
										failed_evaluation=true
	
										}
									}
									else
									failed_evaluation=true
								}
								break;
															
								case "has":
								
												
								if word[3]="no"
								{
									//has no HOUSE
									if Get_Variable(word[4])!=-1
										failed_evaluation=true
								}
								else
								{//if has house with progress
										//has HOUSE
								//
										if Get_Variable(word[3])=-1{
										failed_evaluation=true
										
										}
										else
										{
											//sm("we have "+Get_Variable(word[3]))
										
										//if has house WITH
										if word[4]="with"
										{
											//if has house with PROGRESS
											if word[5]="progress"{

													////if has house with PROGRESS <
									
													if !Evaluate(Get_Variable(word[3]).progress, word[6], real(word[7]))
													failed_evaluation=true
													break;
													
												}
											}
										}
								}
								

		


			
								
								default:
//if tired > 40
								if word[3]="=" || word[3]="!=" || word[3]="<" || word[3]=">"
								{
									prox=Get_Proximity_Word(word[4])
									if prox!=-1
									value=Find_Instance(prox,word[5])
									else{
										prox=word[4]
										if !is_number(prox)
									value=Get_Variable(word[4])
									else
									value=prox
									//sm(st(Get_Variable(word[2]))+string(word[3])+st(value))
									}
									
									if !Evaluate(Get_Variable(word[2]),word[3],value){
									failed_evaluation=true
									
						
									}
											//sm(state_name+"\n"+word[2]+" "+word[3]+" "+st(value)+" : "+st(Get_Variable(word[2])))
								}
								else
								switch(word[3])
								{//if campfire exists
									case "exists":
							//if HOUSE exists
								if Find_Instance(proximity_word.nearest,word[2])=noone{
									//sm("l")
								failed_evaluation=true
								}
							
								break;
									case "event":
											//if event_name EVENT
				
												//even is active

			last_event=current_event
												if my_current_event[?  my_event.event]!=Event_Name_To_Enum(word[2]){
												failed_evaluation=true
								
												}
														if word[2]="sleep" && my_current_event[? my_event.event]=event.sleep
														{
													//	ss()
														}
											//else
												//current_event=word[2]
												
												/*				if character_type="Gnome_Standard" && my_current_event[?  my_event.event]!=0
												sm(st(my_current_event[?  my_event.event])+word[2])
												
												
											if word[2]="idle"
										if current_event="idle" && last_event!=current_event{
										sm(current_event+" => "+st(word[2]))
								
										}*/
							
												//sm("event  exisr")
//else
											//	sm("event doesnt exist")
						
								break;
								}
								}
						break;
//SECOND END
						
			
		
				default: //raw number or value 
				if word[1]="=" exit;
				//sm(st(word[1])+" "+st(word[2])+" "+st(word[3]))
				//ONLY NUMBER
				if is_number(string(word[1]))
				{
					//sm(key_word)
				score_value=word[1];

				}
				else
				{
					
					//tiredness x 2
					word[1]=Get_Variable(string(word[1]))

						word[3]=real(word[3])
						switch(word[2])
						{
							case "x": 

							score_value= word[1]*word[3];
							break;
							case "/":
							score_value= word[1]/word[3];
							break;
						}
				
				}
				break;
				}

			}
			else
			break;

		}
			if failed_evaluation{
			Log_Main("FAILED WITH => \n "+potential_log+"\n ====== \n")
			score_value=0
			}
	//return the score value
//	sm(state_name+" "+string(score_value))
	}
	else
		dont_repeat_state=""
	return score_value;
}}