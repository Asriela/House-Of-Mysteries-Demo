/// @description Insert description here
// You can write your code in this editor


/*

if Player.is_moving=0{
move_to_x=Player.x+lengthdir_x(700,Player_View_Direction)
move_to_y=Player.y+lengthdir_y(700,Player_View_Direction)


x=lerp(x,move_to_x,0.08)
y=lerp(y,move_to_y,0.08)
}
else*/

if (Edit_Mode=edit.room || Edit_Mode=edit.object || Edit_Mode=edit.recipies) 
{
	vspd = (down_key + -up_key) * spd;
hspd = (right_key + -left_key) * spd;
	oGame.x+=hspd
		oGame.y+=vspd
		move_to_x=oGame.x
	move_to_y=oGame.y	+240
		x=lerp(x,move_to_x,1)
y=lerp(y,move_to_y,1)
//CAMERA_BORDER=900



	if channel="player"{

DEFAULT_ZOOM=.5
 channel="view"
with(Player)
{

	MultiTrackCamera.Stop_Tracking_Objects(box_tracker);
	instance_destroy(box_tracker);
	object_is_tracked = false;

}
with(oGame)
{
		box_trackers = instance_create_layer(x,y,"Instances",o_BoxViewTracker);
	box_trackers.AttachToOwner(id);
	MultiTrackCamera.Track_Objects(box_trackers);
	object_is_tracked = true;

}
	}
}
else
{

		move_to_x=Player.x
	move_to_y=Player.y
	
	x=lerp(x,move_to_x,1)
y=lerp(y,move_to_y,1)

if   channel="view"
{

DEFAULT_ZOOM=.25

 channel="player"
 with(oGame)
{
	
	MultiTrackCamera.Stop_Tracking_Objects(box_trackers);
	instance_destroy(box_trackers);
	object_is_tracked = false;

}

with(Player)
{

	box_tracker = instance_create_layer(x,y,"Instances",o_BoxViewTracker);
	box_tracker.AttachToOwner(id);
	MultiTrackCamera.Track_Objects(box_tracker);
	object_is_tracked = true;


}
}
}

if Edit_Mode=edit.recipies
DEFAULT_ZOOM=.75

//speed=16
//direction=point_direction(x,y,move_to_x,move_to_y)