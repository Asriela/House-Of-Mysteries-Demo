function Character_Move_Player(){
	if Dev_Help[? dev_help.fast_player]>1
move_speed=2*Dev_Help[? dev_help.fast_player]//1.6
else
move_speed=2//1.6

vspd = (down_key + -up_key) * move_speed;
hspd = (right_key + -left_key) * move_speed;
stairs_y=0

if on_stairs!=noone
{
	
	stairs_y=(x-on_stairs.x)*0.67
	
	if floor_i_am_on=on_stairs.floor_i_am_on+1 && stairs_y<73
	{
			vspd=0
	//stairs_y=79
		}
		//else
		
	
	if stairs_y>73{
	floor_i_am_on=on_stairs.floor_i_am_on+1
	stairs_y=0

	}
	else
	if stairs_y<78	{
		floor_i_am_on=on_stairs.floor_i_am_on
	}
		if Edit_Mode=edit.none
		Floor=floor_i_am_on
	if stairs_y<0
	stairs_y=0

}
on_stairs=noone
var avoid=mWall_0
	switch(floor_i_am_on)
	{
		case 1:  avoid=mWall_1 break;
		case 2:  avoid=mWall_2 break;
		case 3:  avoid=mWall_3 break;
	}
	var avoid2=mAvoid_0
	switch(floor_i_am_on)
	{
		case 1:  avoid2=mAvoid_1 break;
		case 2:  avoid2=mAvoid_2 break;
		case 3:  avoid2=mAvoid_3 break;
	}
	
	if (place_meeting(x + hspd, y, avoid)||  place_meeting(x + hspd, y, avoid2)){
    while (!place_meeting(x + sign(hspd), y, avoid) && !place_meeting(x + sign(hspd), y, avoid2) )
        x += sign(hspd);
    hspd = 0;
}
x += hspd;

if (place_meeting(x, y + vspd, avoid)||  place_meeting(x , y+vspd, avoid2)){
    while (!place_meeting(x, y + sign(vspd), avoid)&& !place_meeting(x , y+sign(vspd), avoid2) )
        y += sign(vspd);
    vspd = 0;
}
y += vspd;


	if down_key-up_key!=0 || right_key-left_key!=0
	{
		is_moving=1
	alarm[1]=10
	}
	if right_key-left_key=-1
	pointing_direction=dir.left
	if right_key-left_key=1
	pointing_direction=dir.right

	if up_key=1
	pointing_direction=dir.up
	
	if down_key=1{
	pointing_direction=dir.left
	if right_key-left_key=-1
	pointing_direction=dir.left
	if right_key-left_key=1
	pointing_direction=dir.right
		
	}
	
	if (right_key-left_key)=0
	&& down_key-up_key=0
	speed_we_moved=0
	else
	speed_we_moved=1*move_speed
	
}