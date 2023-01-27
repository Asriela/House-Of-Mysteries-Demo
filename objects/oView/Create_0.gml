/// @description Insert description here
// You can write your code in this editor


	box_tracker = instance_create_layer(x,y,"Instances",o_BoxViewTracker);
	box_tracker.AttachToOwner(id);
	MultiTrackCamera.Track_Objects(box_tracker);
	object_is_tracked = true;

focus="player"
spd=5
channel="player"