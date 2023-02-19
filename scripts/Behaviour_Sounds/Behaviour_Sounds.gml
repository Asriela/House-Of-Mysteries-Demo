// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Behaviour_Sounds(){

	// Play ghost cry
	if  Get_Variable("haunting")=1 && audio_is_playing(sHaunt_1)=0 && audio_is_playing(sHaunt_2)=0 && audio_is_playing(sHaunt_3)=0
		audio_play_sound(choose(sHaunt_1, sHaunt_2, sHaunt_3),  0.5, false)

	// Play alien calm
	if Get_Variable("do_calm_ability")=1 && audio_is_playing(sAlienCalm)=0
		audio_play_sound_at(sAlienCalm, x, y, 0, 100, 300, 1, false, 0.5)
}