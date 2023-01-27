// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Find_Newsworthy_Memory(guest)
{
	Could_Find_News=0
	var the_list=ds_list_create()
	var ret="no news, sorry"
	var memory_type=guest_detail.people_memories_map
	var person_map=Guest_Map[? guest][? memory_type]
	
	var person=ds_map_find_first(person_map)
	for(p=0;p<ds_map_size(person_map);p++)
	{
		var memory_map=person_map[? person]
		var memory=ds_map_find_first(memory_map)
		for( m=0;m<ds_map_size(memory_map);m++)
		{
	
			if memory_map[? memory][? memory_detail.news_memory]{//also check if we already have this as a memory
				//used this as a news memory
var memory_secrecy=memory_map[? memory][? memory_detail.memory_secrecy]-3
if Guest_Map[? guest][? guest_detail.openness]>=memory_secrecy{

				mystruct =
				{
				    a : person,
				    b : memory,
					penalty : memory_secrecy+3-5+1
				}
			ds_list_add(the_list,mystruct)
}
			}
		memory=ds_map_find_next(memory_map,memory)
		}
		person=ds_map_find_next(person_map,person)
	}
	var list_size=ds_list_size(the_list)-1;
	if list_size>=0{
				var random_item=round(random( list_size))
				var struct= the_list[| random_item];
							
									//gets secrecy value from truth base value not from how the person who told u values it
	
									struct.secrecy=Truths_Map[? struct.a][? struct.b][? truth.secrecy] 
									//give player this as a memory
				

				
				Could_Find_News=1
					//sm("h"+st(Guest_Map[? char.player][? memory_type][? struct.a][? struct.b][? memory_detail.news_memory]))
				ret=struct
	}
		
	return ret;
}
function Get_Experience_Of_Memory(guest,memory_type,memory_about,memory){
	var ret="I dont know anything about that";
	if  memory_type=mem_type.people{
		var scripted_memories_type=guest_detail.scripted_people_memories_map
	memory_type=guest_detail.people_memories_map
	}
	else{
				var scripted_memories_type=guest_detail.scripted_things_memories_map
	memory_type=guest_detail.things_memories_map
	}
	
	//check if memory response is scripted
	//if could find scripted memory
var truth_id=Guest_Map[? guest][? memory_type][? memory_about][? memory][? memory_detail.memory_talked_about] 

if !is_undefined(truth_id)
{
ret=Truths_Map[? memory_about][? memory][? truth.long_text]
}
	return ret;
}