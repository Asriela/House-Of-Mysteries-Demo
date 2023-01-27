/// @description Insert description here
// You can write your code in this editor


/*
The way this works is pretty straight forward, we loop over all the tracked objects and look for leftmost and rightmost
x values as well as the top and bottom y values, these are the boundries of the smallest rectangle that contains all
tracked instances, we pad this rectangle with a border (defined in the create event) 



*/


//if(window_get_width() <= 0) exit;


var _leftmost_x = xprevious;
var _rightmost_x = yprevious;
var _top_y = xprevious;
var _bottom_y = yprevious;
	
var _first_object = true; // this is used to init the rectangle with the x,y of the first tracked object 
		
	
	
for(var i = 0;i < array_length(to_track); i++)
	{
var _tracked = to_track[i];
with(_tracked)
	{
	if(_first_object)
		{
		_leftmost_x = bbox_left;
		_rightmost_x = bbox_right;
		_top_y = bbox_top;
		_bottom_y = bbox_bottom;
			
		_first_object = false;

		}else{
		_leftmost_x = bbox_left < _leftmost_x ? bbox_left : _leftmost_x;
		_rightmost_x = bbox_right > _rightmost_x ? bbox_right : _rightmost_x; 
		_top_y = bbox_top < _top_y ? bbox_top : _top_y;
		_bottom_y = bbox_bottom > _bottom_y ? bbox_bottom : _bottom_y;	
			
		}
	}
}	

// This is the fix to the padding, hopefully, just add the padding to the corners of the view rectangle before doing anything else, this should play nice with the clamping
_rightmost_x += CAMERA_BORDER/2;
_leftmost_x -= CAMERA_BORDER/2;
_top_y -= CAMERA_BORDER/2;
_bottom_y += CAMERA_BORDER/2;


//now that we found the outermost x and y values for all objects we can calculate the bounding rectangle
		
var _rect_width = _rightmost_x - _leftmost_x;
var _rect_height = _bottom_y - _top_y;

//if we don't want view to be larger than the room on account of clamping we can bound it to room size
//note that if room is much larger on one of the axis it is still possible to be zoomed out to the point
//where you see outside the room, if you don't want that to happen, keep the room's aspect ratio same as the
//view's aspect ratio.

//here's the improved clamping code basically, ensure that the rectangle isn't larger than the room on any axis and that its vertices are all within the room
//that way it's ensured that its center (xTo and yTo) will be within the room, this also ensures that the calculated factor will never zoom out outside the room.
//and that's it basically, we take care of another issue related to clamping later on. 

if(clamp_to_room)
	{
	if _rect_width > room_width _rect_width = room_width;
	if _rect_height > room_height _rect_height = room_height;
	if _rightmost_x > room_width _rightmost_x = room_width;
	if _leftmost_x < 0 _leftmost_x = 0;
	if _top_y < 0 _top_y = 0;
	if _bottom_y > room_height _bottom_y = room_height;
	}
		
// now we find the center of the rectangle, clamping to room is already factored in 		

xTo = (_rightmost_x + _leftmost_x) / 2
yTo = (_bottom_y + _top_y) / 2;
		
		

		
// calculate the ratio between the bigger bounding rect + border and the window axis
// this gives us the factors by which we need to change the resolution of the view
// in order to contain all tracked objects (and the border)


var x_factor = (_rect_width) / view_wport[viewport_number]; 
var y_factor = (_rect_height) / view_hport[viewport_number];

//pick the largest of the two factors

var _factor = max(x_factor,y_factor);
		
// now we apply smoothing from current zoom factor to new zoom factor via lerp, we also ensure that we never zoom in too much. 		


zoom_factor = lerp(zoom_factor,max(DEFAULT_ZOOM,_factor),ZOOM_SMOOTHING);


//calculate the new resolution, as we're using only one of the factors it is guranteed to maintain
// the original aspect ratio 
var _new_hres = view_wport[viewport_number] * zoom_factor;
var _new_vres = view_hport[viewport_number] * zoom_factor; 

	

	
	
if(!initialized)
	{
	// this lets you place the camera wherever you want with whatever smoothing you want
	// and not have it slowly glide into its proper starting position
	x = xTo;
	y = yTo;
	initialized = true;
	}
		
// increment x,y by the delta divided by smoothing factor 

// shake mechanics 

var _shake_offset_x = 0;
var _shake_offset_y = 0;

if(_shake_remain-- >= 0)
	{
	if(_curve){
		_shake_offset_x = _shake_magnitude * animcurve_channel_evaluate(_xcurve_channel, _shake_counter/_shake_duration);
		_shake_offset_y = _shake_magnitude * animcurve_channel_evaluate(_ycurve_channel, _shake_counter++/_shake_duration);
			
	}else{
	_shake_offset_x = random_range(-_shake_magnitude,_shake_magnitude);
	_shake_offset_y = random_range(-_shake_magnitude,_shake_magnitude);
	}	
	}else{
	_shake_counter = 0;	
	_curve = -1;
	_shake_magnitude = 0;
	_shake_duration = 0;
	}
		
x += (xTo -x) / SMOOTHING_FACTOR + _shake_offset_x; 
y += (yTo -y) / SMOOTHING_FACTOR + _shake_offset_y;	

// so this is a part of the clamp to room fix, this prevents the camera from panning and showing areas outside the room. 

if(clamp_to_room)
	{
	x = clamp(x,_new_hres / 2, room_width - _new_hres / 2)
	y = clamp(y,_new_vres / 2, room_height - _new_vres / 2);	
		
	}

//build and apply the projection matrices 

var vm = matrix_build_lookat(x,y,-10, x,y,0,0,1,0);
var pm = matrix_build_projection_ortho(view_wport[viewport_number] * zoom_factor,
										view_hport[viewport_number] * zoom_factor,-10000,10000);


//camera_set_view_mat(view_camera[0],vm);
//camera_set_proj_mat(view_camera[0],pm);
