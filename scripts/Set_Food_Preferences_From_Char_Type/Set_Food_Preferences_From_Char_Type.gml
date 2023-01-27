// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Add_Tags_To_Known_Memories(tags_array,type){
	for(var i=0;i<array_length(tags_array);i++)
	{
		if type="people"{
		if ds_list_find_index(Known_People_Memory_Tags_List,tags_array[@ i])=-1
		ds_list_add(Known_People_Memory_Tags_List,tags_array[@ i])
		
		}
		else{
					if ds_list_find_index(Known_Things_Memory_Tags_List,tags_array[@ i])=-1
		ds_list_add(Known_Things_Memory_Tags_List,tags_array[@ i])
		}
	}
}
function People_Memory_To_Text(memory)
{
	var ret=noone;
	switch(memory){
		case memory_people.hares: ret="Hares"; 
		break;
		case memory_people.wogs: ret="Wogs"; 
		break;
	}
	return ret;
}
function Things_Memory_To_Text(memory)
{
	var ret=noone;
	switch(memory){
		case memory_things.omes: ret="Omes"; 
		break;
		case memory_things.paw_unity: ret="Paw Unity"; 
		break;
	}
	return ret;
}
function Find_Tags(text,type)
{
	var char="";
	var start_char=0;
	var count=0
	var find_next_start=0
	var word="";
	var tag=noone;
	var tag_count=0;
	var tags_array=[];
	for(var i=1;i<string_length(text);i++)
	{
		
		char=string_char_at(text,i)
		//end of word
		if char=" " || char="." || char="?" || char="!"
		{
			word=string_copy(text,start_char,count)
			if type="people"
			tag= Match_People_Word_To_Tag(word)
			else
			tag= Match_Thing_Word_To_Tag(word)			
			if tag!=noone
			tags_array[@ tag_count]=tag
			tag_count++

			find_next_start=1;
		}
		else
		if find_next_start
		{
						count=0
			start_char=i;
			find_next_start=0
		}
		count++
	}
	//find a word
	return tags_array;
}
function Match_Thing_Word_To_Tag(word)
{
	var ret=noone;
	if word="wogs"
	ret=memory_people.wogs;
	return ret;
}
function Match_People_Word_To_Tag(word)
{
	var ret=noone;
	
	if word="wogs" || word="wog"{
	ret=memory_people.wogs;

	}
	if word="hares" || word="hare"
	ret=memory_people.hares;
	
	return ret;
}function Add_Sharable_News(the_guest,news_text)
{
	ds_list_add(Guest_Map[? the_guest][? guest_detail.news_list],news_text)


}
function Set_Memory_As_Hand_Crafted_Dialogue(the_guest,memory_type,memory_id,memory_text)
{
	if memory_type=mem_type.people memory_type=guest_detail.scripted_people_memories_map
	else
	memory_type=guest_detail.scripted_things_memories_map
	Guest_Map[? the_guest][? memory_type][? memory_id]=memory_text
}
function Add_People_Memory(the_guest,truth_about,truth_id,secrecy,news,the_emotion)
{
if is_undefined(Guest_Map[? the_guest][? guest_detail.people_memories_map][? truth_about])
			Guest_Map[? the_guest][? guest_detail.people_memories_map][? truth_about]=ds_map_create()
			
			Guest_Map[? the_guest][? guest_detail.people_memories_map][? truth_about][? truth_id]=ds_map_create()
			Guest_Map[? the_guest][? guest_detail.people_memories_map][? truth_about][? truth_id][? memory_detail.memory_secrecy]=secrecy
						Guest_Map[? the_guest][? guest_detail.people_memories_map][? truth_about][? truth_id][? memory_detail.memory_talked_about]=1
						Guest_Map[? the_guest][? guest_detail.people_memories_map][? truth_about][? truth_id][? memory_detail.news_memory]=news
						Guest_Map[? the_guest][? guest_detail.people_memories_map][? truth_about][? truth_id][? memory_detail.emotion]=the_emotion
							Guest_Map[? the_guest][? guest_detail.people_memories_map][? truth_about][? truth_id][? memory_detail.shared_with]=ds_list_create()
						
/*	}
	else
	{
				Guest_Map[? the_guest][? guest_detail.things_memories_map][? memory]=ds_map_create()
										Guest_Map[? the_guest][? guest_detail.things_memories_map][? memory][? memory_detail.memory_word]=text
			Guest_Map[? the_guest][? guest_detail.things_memories_map][? memory][? memory_detail.memory_feeling]=feeling
			Guest_Map[? the_guest][? guest_detail.things_memories_map][? memory][? memory_detail.memory_secrecy]=secrecy
						Guest_Map[? the_guest][? guest_detail.things_memories_map][? memory][? memory_detail.memory_talked_about]=0
	}*/
}
function Set_Food_Preferences_From_Char_Type(kind,the_guest){
	
	switch(kind){
	case char.hares:
Guest_Map[? the_guest][? guest_detail.phy_eth_love_high]=-1
Guest_Map[? the_guest][? guest_detail.phy_eth_love_low]=-1

Guest_Map[? the_guest][? guest_detail.phy_eth_like_high]=2
Guest_Map[? the_guest][? guest_detail.phy_eth_like_low]=-1

Guest_Map[? the_guest][? guest_detail.phy_eth_dislike_high]=3
Guest_Map[? the_guest][? guest_detail.phy_eth_dislike_low]=-3

Guest_Map[? the_guest][? guest_detail.phy_eth_hate_high]=-3
Guest_Map[? the_guest][? guest_detail.phy_eth_hate_low]=-3


//soft hard
Guest_Map[? the_guest][? guest_detail.soft_hard_love_high]=2
Guest_Map[? the_guest][? guest_detail.soft_hard_love_low]=2

Guest_Map[? the_guest][? guest_detail.soft_hard_like_high]=2
Guest_Map[? the_guest][? guest_detail.soft_hard_like_low]=0

Guest_Map[? the_guest][? guest_detail.soft_hard_dislike_high]=-1
Guest_Map[? the_guest][? guest_detail.soft_hard_dislike_low]=-1

Guest_Map[? the_guest][? guest_detail.soft_hard_hate_high]=3
Guest_Map[? the_guest][? guest_detail.soft_hard_hate_low]=-3



//bitter sweet
Guest_Map[? the_guest][? guest_detail.bitter_sweet_love_high]=2
Guest_Map[? the_guest][? guest_detail.bitter_sweet_love_low]=2

Guest_Map[? the_guest][? guest_detail.bitter_sweet_like_high]=3
Guest_Map[? the_guest][? guest_detail.bitter_sweet_like_low]=0

Guest_Map[? the_guest][? guest_detail.bitter_sweet_dislike_high]=-1
Guest_Map[? the_guest][? guest_detail.bitter_sweet_dislike_low]=-1

Guest_Map[? the_guest][? guest_detail.bitter_sweet_hate_high]=3
Guest_Map[? the_guest][? guest_detail.bitter_sweet_hate_low]=-3


//bitter sweet
Guest_Map[? the_guest][? guest_detail.veg_meat_love_high]=-1
Guest_Map[? the_guest][? guest_detail.veg_meat_love_low]=-1




break;
}
}