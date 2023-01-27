function Load_In_States()
{
//for ( creature_type =file_find_first("base_experiences/", fa_top); creature_type!="";creature_type=file_find_next())
//{
	//sm(creature_type)
	//READ IN ALL FILES
	direc= tribal_base_game_dir+"states/"//+creature_type+"/"

if directory_exists(direc)
    {

Log_Main("directory exists")
    	for ( file =file_find_first(direc+"*.txt", fa_top); file!="";file=file_find_next())
		{
			state_name=string_replace(file,".txt","")
			ds_list_add(Twitch_commands_list,"!"+state_name)

States_Action_Line_Map[? state_name]=ds_map_create()
States_Map[? state_name]=array_create(1,"")
//issue is when this for runs again, that new_temp_array, is still the last one referenced
//its not a new array

	
					//READ IN EACH LINE
						line=0;
		line_text=""
		line_index=0
file_text=direc+file;

file_id=file_text_open_read(direc+file)

			//	Log_Main(" -found file "+state_name)			
			do{
				



			//	if file_exists(file_text)
				line_text=st(file_text_read_string(file_id))
original_line_text=line_text
					file_text_readln(file_id)

if line_index=0 
{
	State_Names[? line_text]=state_name
	Log_Main("Loading in: "+state_name)
	line_index++
}
else
{
					word_index=0;
					if line_text!="" && string_ord_at(line_text,1)<60000
					{
						States_Map[? state_name][line_index-1]=array_create(1,"")
						do{
											//Log_Main(" -found line "+string(line_index))
									
								word_length=0
								word_text=""
								//go through letters until we find a space
								char=st(string_char_at(line_text,1))
								look_for_end_of_string=0
								string_sign_count=0
				
								if char="\"" {
								look_for_end_of_string=1

								}
										for(i=1;i<string_length(line_text)+1;i++){
											char=string_char_at(line_text,i)
											if look_for_end_of_string{
											//	sm(word_text)
												if char="\""{
												string_sign_count++
												if string_sign_count<2
												{
													
											word_text+=char
											word_length++
												}
												else{
																								word_text+=char
											word_length++
												break;
												}
												}
												else
												{
																						word_text+=char
											word_length++
												}
												
								
											}
											else{
											if char!=" "{
											word_text+=char
											word_length++
											}
											else
											break;
											}
										}
								line_text=string_delete(line_text,1,word_length+1)
								
								if word_text!=""{
						//	sm(word_text)
									if word_text="="{
									States_Action_Line_Map[? state_name][? "first"]=line_index
	
									}
									
													//Log_Main(" -found word "+word_text)
													
							States_Map[? state_name][line_index-1][word_index]=word_text
							last_word=word_text
							//sm(string(state_name)+" "+string(line_index)+" "+string(word_index)+" "+States_Map[? state_name][line_index][word_index])
								word_index++
								
								}
						}
						until(word_text="")
						line_index++
					}
}
					}
					until (original_line_text=""  && string_ord_at(original_line_text,1)<60000)
					States_Action_Line_Map[? state_name][? "last"]=line_index-1


			file_text_close(file_id)			

	}

	
	}
	//}
}