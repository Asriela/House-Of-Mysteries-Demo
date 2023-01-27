/*
You can use this to attach a box to an object you want to track and only move the main camera when the box moves,
the box only moves when the player pushes it and than moves back after snap_delay frames.
*/

ready = false;
has_moved = false;
snap_counter = 0;

function AttachToOwner(instance, width = 50, height = 50, snap_delay = 60)
	{
	box_snap_delay = snap_delay;
	owner = instance;
	
	// create bbox the size of our box 
	var surf = surface_create(width, height);
	var bounding_sprite = sprite_create_from_surface(surf,0,0,width,height,false,false, width/2, height/2);
	sprite_index = bounding_sprite;
	visible = true;
	
	x = owner.x;
	y = owner.y;
	
	ready = true; 
	}
	
