function Open_Dialogue(the_id){

if Current_Guest!=the_id{
	Edit_Mode=edit.speak
				Current_Guest=the_id

				
			
				Skip_First=1
	with(oGame){
	guest_speaking_text=Guest_Map[? Current_Guest.guest_id][? guest_detail.visual_description];
	}
	
}
}