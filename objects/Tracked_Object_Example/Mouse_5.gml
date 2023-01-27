/// @description Insert description here
// You can write your code in this editor

if(object_is_tracked)
	{
	MultiTrackCamera.Stop_Tracking_Objects(id);
	object_is_tracked = false;
	}else{
	MultiTrackCamera.Track_Objects(id);
	object_is_tracked = true;
		
	}