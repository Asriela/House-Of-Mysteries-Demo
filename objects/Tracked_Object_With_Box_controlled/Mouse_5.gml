/// @description Insert description here
// You can write your code in this editor

// if we right click the object start tracking by creating a box tracker and attaching it to this instance
/*
if(object_is_tracked)
	{
	MultiTrackCamera.Stop_Tracking_Objects(box_tracker);
	instance_destroy(box_tracker);
	object_is_tracked = false;
	}else{
	box_tracker = instance_create_layer(x,y,"Instances",o_BoxViewTracker);
	box_tracker.AttachToOwner(id);
	MultiTrackCamera.Track_Objects(box_tracker);
	object_is_tracked = true;
		
	}