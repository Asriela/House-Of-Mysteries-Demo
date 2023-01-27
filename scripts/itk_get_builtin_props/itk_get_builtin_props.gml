/// @description  This script gets all of GM's built-in instance properties
function itk_get_builtin_props() {
	/*  Arguments: none
	 *
	 *  Remarks: object index and instance ID are not used for obvious reasons
	 */

	var key;
	for(var i = 0;i < 12;i++) {
	    key = "alarm" + string(i);
	    alarm[i] = itk_props[?key];
	}
	//bbox_bottom = itk_props[?"bbox_bottom"];      // Read-only
	//bbox_left = itk_props[?"bbox_left"];          // Read-only
	//bbox_right = itk_props[?"bbox_right"];        // Read-only
	//bbox_top = itk_props[?"bbox_top"];            // Read-only
	depth = itk_props[?"depth"];
	direction = itk_props[?"direction"];
	friction = itk_props[?"friction"];
	gravity = itk_props[?"gravity"];
	gravity_direction = itk_props[?"gravity_direction"];
	hspeed = itk_props[?"hspeed"];
	image_alpha = itk_props[?"image_alpha"];
	image_angle = itk_props[?"image_angle"];
	image_blend = itk_props[?"image_blend"];
	image_index = itk_props[?"image_index"];
	//image_number = itk_props[?"image_number"];    // Read-only
	//image_single = itk_props[?"image_single"];    // Deprecated
	image_speed = itk_props[?"image_speed"];
	image_xscale = itk_props[?"image_xscale"];
	image_yscale = itk_props[?"image_yscale"];
	mask_index = itk_props[?"mask_index"];
	path_endaction = itk_props[?"path_endaction"];
	//path_index = itk_props[?"path_index"];        // Read-only
	path_orientation = itk_props[?"path_orientation"];
	path_position = itk_props[?"path_position"];
	path_positionprevious = itk_props[?"path_positionprevious"];
	path_scale = itk_props[?"path_scale"];
	path_speed = itk_props[?"path_speed"];
	persistent = itk_props[?"persistent"];
	solid = itk_props[?"solid"];
	speed = itk_props[?"speed"];
	//sprite_height = itk_props[?"sprite_height"];  // Read-only
	sprite_index = itk_props[?"sprite_index"];
	//sprite_width = itk_props[?"sprite_width"];    // Read-only
	//sprite_xoffset = itk_props[?"sprite_xoffset"];// Read-only
	//sprite_yoffset = itk_props[?"sprite_yoffset"];// Read-only
	timeline_index = itk_props[?"timeline_index"];
	timeline_loop = itk_props[?"timeline_loop"];
	timeline_position = itk_props[?"timeline_position"];
	timeline_running = itk_props[?"timeline_running"];
	timeline_speed = itk_props[?"timeline_speed"];
	visible = itk_props[?"visible"];
	vspeed = itk_props[?"vspeed"];
	x = itk_props[?"x"];
	xprevious = itk_props[?"xprevious"];
	xstart = itk_props[?"xstart"];
	y = itk_props[?"y"];
	yprevious = itk_props[?"yprevious"];
	ystart = itk_props[?"ystart"];


}
