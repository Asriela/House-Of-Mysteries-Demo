// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Build_Ai_Response_For_Player(who_started_convo,initial_ai_sentance)
{
	AI_We_Are_Talking_To=id
			Having_Conversation=1
  //switch between conditions that may occur THIS RUNS IN CHARACTER!!!! NOT MAIN
//THESE TRIGGER THE AI TO RESPOND
if time_for_ai_to_respond 
{

	Ai_Sentance_Grow=0
	time_for_ai_to_respond=false 
	//RECIEVE PLAYER RESPONSE
	if first_run
	{	

		Show_Making_Menu=1
					Word_Insert_X=Shrine_Tile.draw_x-90
	Word_Insert_Y=Shrine_Tile.draw_y-94
			first_run=false
			if who_started_convo="player"  //only do if we recieved from the player
			{
				first_time_player_talk=1
			//BUILD NEW AI RESPONSE
			Build_AI_Response_From_Player_Sentance("player")
			}
			else//ai was the first to talk 
			{
				first_time_player_talk=0
			Last_AI_Sentance_String=initial_ai_sentance
			Ai_Sentance_List= string_split("+",initial_ai_sentance,true)
			Player_Talk_Menu_Setup_Type=player_menu_setup.emotion
			}
			//SEND RESPONSE OPTIONS FOR PLAYER

			Build_Response_Options_For_Player()
	}
	else
	{
			//BUILD NEW AI RESPONSE


			Build_AI_Response_From_Player_Sentance("ai")	
			
			Build_Response_Options_For_Player()
	}
	
}




}