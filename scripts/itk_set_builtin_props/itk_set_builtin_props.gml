/// @description  This script sets all of GM's built-in instance properties
function itk_set_builtin_props() {
	/*  Arguments: none
	 *
	 *  Remarks: object index and instance ID are not used for obvious reasons
	 *
	 */

	var key;
	for(var i = 0;i < 12;i++) {
	    key = "alarm" + string(i);
	    itk_props[?key] = alarm[i];
	}
	//itk_props[?"bbox_bottom"] = bbox_bottom;      // Read-only
	//itk_props[?"bbox_left"] = bbox_left;          // Read-only
	//itk_props[?"bbox_right"] = bbox_right;        // Read-only
	//itk_props[?"bbox_top"] = bbox_top;            // Read-only
	itk_props[?"depth"] = depth;
	itk_props[?"direction"] = direction;
	itk_props[?"friction"] = friction;
	itk_props[?"gravity"] = gravity;
	itk_props[?"gravity_direction"] = gravity_direction;
	itk_props[?"hspeed"] = hspeed;
	itk_props[?"image_alpha"] = image_alpha;
	itk_props[?"image_angle"] = image_angle;
	itk_props[?"image_blend"] = image_blend;
	itk_props[?"image_index"] = image_index;
	//itk_props[?"image_number"] = image_number;    // Read-only
	//itk_props[?"image_single"] = image_single;    // Deprecated
	itk_props[?"image_speed"] = image_speed;
	itk_props[?"image_xscale"] = image_xscale;
	itk_props[?"image_yscale"] = image_yscale;
	itk_props[?"mask_index"] = mask_index;
	itk_props[?"path_endaction"] = path_endaction;
	//itk_props[?"path_index"] = path_index;        // Read-only
	itk_props[?"path_orientation"] = path_orientation;
	itk_props[?"path_position"] = path_position;
	itk_props[?"path_positionprevious"] = path_positionprevious;
	itk_props[?"path_scale"] = path_scale;
	itk_props[?"path_speed"] = path_speed;
	itk_props[?"persistent"] = persistent;
	itk_props[?"solid"] = solid;
	itk_props[?"speed"] = speed;
	//itk_props[?"sprite_height"] = sprite_height;  // Read-only
	itk_props[?"sprite_index"] = sprite_index;
	//itk_props[?"sprite_width"] = sprite_width;    // Read-only
	//itk_props[?"sprite_xoffset"] = sprite_xoffset;// Read-only
	//itk_props[?"sprite_yoffset"] = sprite_yoffset;// Read-only
	itk_props[?"timeline_index"] = timeline_index;
	itk_props[?"timeline_loop"] = timeline_loop;
	itk_props[?"timeline_position"] = timeline_position;
	itk_props[?"timeline_running"] = timeline_running;
	itk_props[?"timeline_speed"] = timeline_speed;
	itk_props[?"visible"] = visible;
	itk_props[?"vspeed"] = vspeed;
	itk_props[?"x"] = x;
	itk_props[?"xprevious"] = xprevious;
	itk_props[?"xstart"] = xstart;
	itk_props[?"y"] = y;
	itk_props[?"yprevious"] = yprevious;
	itk_props[?"ystart"] = ystart;


}
