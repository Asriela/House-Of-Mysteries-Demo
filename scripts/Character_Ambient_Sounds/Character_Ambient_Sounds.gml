// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Character_Ambient_Sounds() 
{
	if audio_is_playing(sFootstep)=0
		{
		if last_x!=0 && last_y!=0
		{
		if sound_wait=0
		audio_play_sound_at(sFootstep, x, y, 0, 100, 300, 1, false, 0.5)
		if sound_wait>=0
		sound_wait-=1
		else
		sound_wait=60
		}
	}
} 