// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Exit_Edit_Modes_Code(){

if Last_Edit_Mode=edit.review_day && Edit_Mode!=edit.review_day
{
	with(oCharacter)
	{
		was_reviewed_today=0
		Reset_Needs()
		Do_Review=1
	}
}


}