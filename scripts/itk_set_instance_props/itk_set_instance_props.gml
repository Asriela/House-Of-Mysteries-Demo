/// @description  This script sets an instance's properties
function itk_set_instance_props(argument0) {
	/*  Arguments: 0. properties (ds_map)
	 *
	 *  Returns: none
	 *
	 *  Remarks: none
	 *
	 */

	itk_props = ds_map_create();
	var key = ds_map_find_first(argument0);
	for(var i = 0;i < ds_map_size(argument0);i++) {
	    if (key == "children") {
	        key = ds_map_find_next(argument0,key);  // Update next key
	        continue;    // Skip list of children
	    }
	    ds_map_add(itk_props,key,ds_map_find_value(argument0,key)); // Shallow copy...
	    key = ds_map_find_next(argument0,key);
	}
	event_user(itk_set_event);
	ds_map_destroy(itk_props);
	itk_props = -1;


}
