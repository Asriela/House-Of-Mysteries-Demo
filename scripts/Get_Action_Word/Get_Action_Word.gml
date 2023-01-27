
function Get_Action_Word(word_index)
{
word_index-=1
	if array_length(States_Map[? current_state][current_line])>real(word_index)	
	return States_Map[? current_state][current_line][word_index]
else
	return noone;
}