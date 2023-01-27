// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Reset_Needs(){
	var item=ds_map_find_first(need_satisfied)
		for(var i=0; i<ds_map_size(need_satisfied);i++)
		{
			need_satisfied[? item]=0
			item=ds_map_find_next(need_satisfied,item)
		}
}