function Create_Truth(truth_id,char_id,short_text,long_text,starting_memory,secrecy,news,the_emotion){
	Truths_Map[? char_id]=ds_map_create()
	Truths_Map[? char_id][? truth_id]=ds_map_create()
	//assign truth to this character
	if is_undefined(Character_Truths_List[? char_id])
	Character_Truths_List[? char_id]=ds_list_create()
ds_list_add(Character_Truths_List[? char_id],truth_id)
Truths_Map[? char_id][? truth_id][? truth.short_text]=short_text
Truths_Map[? char_id][? truth_id][? truth.long_text]=long_text
Truths_Map[? char_id][? truth_id][? truth.secrecy]=secrecy
Truths_Map[? char_id][? truth_id][? truth.emotion]=the_emotion
if starting_memory!=-1
{

	Add_People_Memory(char_id,char_id,truth_id,secrecy,news,the_emotion)
}

}