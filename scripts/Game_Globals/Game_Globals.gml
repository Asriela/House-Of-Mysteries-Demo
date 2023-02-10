// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Game_Globals(){
globalvar 
States_Action_Line_Map,
State_Names,
State_Deactivation_Map,
Player_Character_Id_Map,
Events_Map,
Player_Ask_Map,
Selected_Character,
Hold_State,
Runs_Map,
States_Map,
Menu_Mode,
AI_We_Are_Talking_To,
Twitch_Response_Waiting_Time,
Ai_Names,
Over_Character,
World_Event,
Main_Log,
Character_Index,
Tutorial_Text_Alpha,
Move_Island_Tutorial_Time,
Next_Tutorial,
Tutorial_Text_Map,
Tutorial_Progress_Map,
Current_Tutorial
;

}
Menu_Mode=menu_mode.no_menu;
Tutorial_Text_Alpha=1
Move_Island_Tutorial_Time=0
Next_Tutorial=""
Tutorial_Text_Map=ds_map_create()
Tutorial_Progress_Map=ds_map_create()
Current_Tutorial="lets add a tile to the island"
Main_Log=""
Character_Index=0
World_Event=event.undefined
Hold_State=false
Selected_Character=noone
Over_Character=noone;
Player_Ask_Map=ds_map_create()
Events_Map=ds_map_create()
States_Map = ds_map_create();
Runs_Map  = ds_map_create();
Player_Character_Id_Map=ds_map_create()
State_Deactivation_Map=ds_map_create()
States_Action_Line_Map=ds_map_create();
State_Names=ds_map_create()
Ai_Names=ds_list_create()
Ai_Names[| 0]="Wilson"
Twitch_commands_list=ds_list_create()
Twitch_Response_Waiting_Time=10*60
Player_Ask_Map=ds_map_create()
AI_We_Are_Talking_To=noone;
