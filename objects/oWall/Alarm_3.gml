/// @description Insert description here
// You can write your code in this editor


alarm_count++
if alarm_count<800
alarm[3]=1

find=ds_list_find_index(Floor_List[| floor_i_am_on],no_to_s(xx)+"_"+no_to_s(yy))
if find!=-1
ds_list_delete(Floor_List[| floor_i_am_on],find) 
Rooms_Grid[| floor_i_am_on][# xx,yy]=-4

