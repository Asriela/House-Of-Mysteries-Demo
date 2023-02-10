// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Run_Particular_Tutorial(){
	if Last_Chosent_Tutorial!=Chosen_Tutorial
	Tutorial_Sub_Step=1
	
	if Flash_Button_Alpha<0
	Flash_Button_Alpha=1
	Flash_Button_Alpha-=0.02
	switch(Chosen_Tutorial)
	{
		case tu.add_beds:
		
			switch(Tutorial_Sub_Step)
			{
			case 1:
				Tutorial_Highlight_Button=tu_highlight_button.furniture
				if  Edit_Mode=edit.object{
				Tutorial_Sub_Step++
				
				}

			break;
			case 2:
				Tutorial_Highlight_Button=noone
				Flash_Button=style.wild
				if Flashing_Button_Was_Pressed
				Tutorial_Sub_Step++
			break;
			case 3:

				Flash_Button=noone
				Flash_Button="Bed_Gnome_1"
				if Flashing_Button_Was_Pressed
				Tutorial_Sub_Step++
			break;
			}
		
		break;
	}
}