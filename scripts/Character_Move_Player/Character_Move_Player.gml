function Character_Move_Player(){
move_speed=7//1.6
vspd = (down_key + -up_key) * move_speed;
hspd = (right_key + -left_key) * move_speed;

var avoid=mWall_0
	switch(floor_i_am_on)
	{
		case 1:  avoid=mWall_1 break;
		case 2:  avoid=mWall_2 break;
		case 3:  avoid=mWall_3 break;
	}
	
	if (place_meeting(x + hspd, y, avoid)) {
    while (!place_meeting(x + sign(hspd), y, avoid))
        x += sign(hspd);
    hspd = 0;
}
x += hspd;

if (place_meeting(x, y + vspd, avoid)) {
    while (!place_meeting(x, y + sign(vspd), avoid))
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