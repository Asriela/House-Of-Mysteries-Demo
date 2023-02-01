/// @description Insert description here
// You can write your code in this editor


alarm_count++
if alarm_count<10
alarm[3]=1

find=ds_list_find_index(Floor_List,no_to_s(xx)+"_"+no_to_s(yy))
if find!=-1
ds_list_delete(Floor_List,find) 
Rooms_Grid[# xx,yy]=-4

