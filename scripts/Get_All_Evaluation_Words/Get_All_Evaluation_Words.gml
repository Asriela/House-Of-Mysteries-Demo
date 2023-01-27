function Get_All_Evaluation_Words(state_name,line_index)
{
//	sm(States_Map[? state_name][line_index][word_index])
for(i=1;i<15;i++)
	word[i]= -1

for(i=1;i<array_length(States_Map[? state_name][line_index])+1;i++){
	word[i]= States_Map[? state_name][line_index][i-1]
//	sm(string(i)+" "+string(word[i]))
}
}