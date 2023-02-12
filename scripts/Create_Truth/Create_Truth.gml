function Create_Truth(truth_id,whos_memory,memory_about_who,short_text,long_text,starting_memory,secrecy,news,the_emotion){
	Truths_Map[? whos_memory]=ds_map_create()
	Truths_Map[? whos_memory][? truth_id]=ds_map_create()
	//assign truth to this character
	if is_undefined(Character_Truths_List[? whos_memory])
	Character_Truths_List[? whos_memory]=ds_list_create()
ds_list_add(Character_Truths_List[? whos_memory],truth_id)
Truths_Map[? whos_memory][? truth_id][? truth.short_text]=short_text
Truths_Map[? whos_memory][? truth_id][? truth.long_text]=long_text
Truths_Map[? whos_memory][? truth_id][? truth.secrecy]=secrecy
Truths_Map[? whos_memory][? truth_id][? truth.emotion]=the_emotion
if starting_memory!=-1
{

	Add_People_Memory(whos_memory,memory_about_who,truth_id,secrecy,news,the_emotion)
}

}