/// @description Insert description here
// You can write your code in this editor
floor_i_am_on=1
alarm_count=0
count=0
flag=0
can_draw=1
alarm[3]=2

my_color=c_white
room_color=ds_list_create()
room_color[| dir.up]=c_white
room_color[| dir.down]=c_white
room_color[| dir.left]=c_white
room_color[| dir.right]=c_white

my_unique_id=Global_ID_Index
Global_ID_Index++

alarm[2]=1