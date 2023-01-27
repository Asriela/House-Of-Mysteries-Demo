/// @description Insert description here
// You can write your code in this editor

if !ready exit; //if the object is setup properly by being attached to an owner object it will be ready and run

var _xspeed = owner.x - owner.xprevious; // the horizontal speed of the owner object
var _yspeed = owner.y - owner.yprevious; // the vertical speed of the owner object

// let's check if the owner has reached the edge of the bounding rectangle, either vertically or horizontally
var horizontal_move = owner.bbox_right >= bbox_right ||  owner.bbox_left <= bbox_left;	
var vertical_move = owner.bbox_top <= bbox_top || owner.bbox_bottom >= bbox_bottom;

// if we did, move with the owner's speed.
if horizontal_move  x +=  _xspeed
if vertical_move y += _yspeed

// we'd like to have the camera snap back when we stopped moving only after the box moved so we need to save movement status as an instance variable
if horizontal_move || vertical_move has_moved = true;

// now, if has_moved but not horizontal\vertical it means we're not currently moving, and if the owner is not moving, lerp back to owner x\y after snap_delay
if has_moved && !(horizontal_move || vertical_move) && (_xspeed + _yspeed = 0)
	{
	if(snap_counter++ >= box_snap_delay)
		{
		x = lerp(x, owner.x, 0.02);
		y = lerp(y, owner.y, 0.02);
	
		if(point_distance(x,y,owner.x,owner.y) <= 5) has_moved = false;
		}
		
		
	}else snap_counter = 0;