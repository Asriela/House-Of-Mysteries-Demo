// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Load_In_Runs(){
	file_location=tribal_base_game_dir+"runs/"
	//READ IN ALL FILES
if directory_exists( file_location)
    {

    	for ( file =file_find_first(file_location+"*.txt", fa_top); file!="";file=file_find_next())
		{
			state_name=string_replace(file,".txt","")

Runs_Map[? state_name]=array_create(1,"")
//issue is when this for runs again, that new_temp_array, is still the last one referenced
//its not a new array

	
					//READ IN EACH LINE
						line=0;
		line_text=""
		line_index=0
file_text=file_location+file;

file_id=file_text_open_read(file_location+file)

			//	Log_Main(" -found file "+state_name)			
			do{
				



			//	if file_exists(file_text)
				line_text=file_text_read_string(file_id)
original_line_text=line_text
					file_text_readln(file_id)


					word_index=0;
					if line_text!="" && string_ord_at(line_text,1)<60000
					{
						Runs_Map[? state_name][line_index]=array_create(1,"")
						do{
										//	Log_Main(" -found line "+string(line_index))
									
								word_length=0
								word_text=""
								//go through letters until we find a space
										for(i=1;i<string_length(line_text)+1;i++){
											char=string_char_at(line_text,i)
											if char!=" "{
											word_text+=char
											word_length++
											}
											else
											break;
										}
								line_text=string_delete(line_text,1,word_length+1)
								
								if word_text!=""{
						//	sm(word_text)
									if word_text="="{
							
	
									}
									
													//Log_Main(" -found word "+word_text)
													
							Runs_Map[? state_name][line_index][word_index]=word_text
							//sm(string(state_name)+" "+string(line_index)+" "+string(word_index)+" "+States_Map[? state_name][line_index][word_index])
								word_index++
								
								}
						}
						until(word_text="")
						line_index++
					}
					}
					until (original_line_text=""  && string_ord_at(original_line_text,1)<60000)



			file_text_close(file_id)			

	}

	

	}
}