/// @description Insert description here
// You can write your code in this editor

 // lower value is more zoomed in, this is the value the camera will default to if there's only one tracked object 
#macro SMOOTHING_FACTOR 10 // the higher the smoothing the slower the camera pans, 1 = immediate. 
#macro ZOOM_SMOOTHING 0.2 // how quickly the camera zooms in or out, 1 = immediate, 0 = never. 
globalvar CAMERA_BORDER,DEFAULT_ZOOM;
 DEFAULT_ZOOM=.5
CAMERA_BORDER=100 //padding around tracked objects
globalvar Look_Around;
viewport_number = 0; // assuming view_port 0 as a default, change this if the camera runs on a different view_port
Look_Around=0
//camera = camera_create();
//view_camera[viewport_number] = camera;
to_track = array_create(0);
zoom_factor = DEFAULT_ZOOM;
clamp_to_room = true; 
initialized = false; 

	

//init screen shake values
_shake_magnitude = 0;
_shake_remain = 0;
_shake_counter = 0;
_shake_duration = 0;
_xcurve_channel = -1; _ycurve_channel = -1;
_curve = 0;

/// @func Shake_Camera(_magnitude, _duration, _shakeCurve)
/// @param {real} _magnitude scaling factor for the screen shake, bigger magnitude bigger shake, defaults to 5
/// @param {real} _duration duration of the shake, in frames, defaults to one second (room speed)
/// @param {index} _shakeCurve an index for a two channel curve used for this shake, optional
/// @desc this is a simple screen shake, it can work simply by calling Shake_Camera and provide a basic shake, more elaborate types of shakes can be created using an animation curve

function Shake_Camera(_magnitude = 5, _duration = game_get_speed(gamespeed_fps), _shakeCurve){
	_shake_magnitude = _magnitude;
	_shake_remain = _duration;
	_shake_duration = _duration;
	
	if(!is_undefined(_shakeCurve)) _curve = animcurve_get(_shakeCurve);
	
	if(_curve)
		{
		_xcurve_channel = animcurve_get_channel(_curve,0);
		_ycurve_channel = animcurve_get_channel(_curve,1);
			
		}
	}


/// @func Track_Objects(_object_or_instance_or_array)
/// @param {real} object_or_instance object or instance id of the object_index or instance to track
/// @desc this function just adds objects or instances to the to_track array, as the camera uses 'with' loops
/// it can work with individual instances or with object types, or you can send it an array with any combination of both


function Track_Objects(_object_or_instance_or_array){
	
	if(is_array(_object_or_instance_or_array))
		while(array_length(_object_or_instance_or_array) > 0)
			array_push(to_track,array_pop(_object_or_instance_or_array))
	else array_push(to_track,_object_or_instance_or_array);

	
return array_length(to_track);	
	
}

/// @func Stop_Tracking_Object(_object_or_instance_array)
/// @param {real} object_or_instance object or instance id of the object_index or instance to STOP tracking
/// @desc removes object index or instance number from tracking list, note that if some object is listed
/// both as an instance as well as included within a tracked object index it might keep on tracking

 
 
function Stop_Tracking_Objects(_object_or_instance_or_array){
	
find_and_delete = function(_to_delete){

for(var i = 0; i < array_length(to_track); i++)
	{
	if to_track[@ i] == _to_delete
		{
		array_delete(to_track,i,1);	
		return true;	
		}
		
	}
}


if(is_array(_object_or_instance_or_array))
	{
	while(array_length(_object_or_instance_or_array) > 0) find_and_delete(array_pop(_object_or_instance_or_array))	
	}else{
	find_and_delete(_object_or_instance_or_array);	
	}	



return false; 
	
}

function Stop_Tracking_All()
	{
	to_track = array_create();	
		
	}

window_set_fullscreen(1)