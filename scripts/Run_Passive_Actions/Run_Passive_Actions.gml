// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

//these actions are done regardless of emotion
function Run_Passive_Actions(){


	//MESSYNESS
	if mess_type!=""
	{
		if mess_timer<=0{
		mess_timer=mess_rate
		mess=instance_create_depth(x,y,-y,oMess)
		mess.sprite_index=asset_get_index(mess_type)
		mess.image_index=rr(0,50)
		}
	}

}