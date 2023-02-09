function Log_Main(text)
{

	text=string(text)
	if is_undefined(Main_Log[? id])
	Main_Log[? id]="\n"+text
	else
	Main_Log[? id]+="\n"+text
//Change_Log_Text(Main_Log)
}