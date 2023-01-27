/// @description  This script creates an instance from the given data structure
function itk_ds_to_instance(argument0) {
	/*  Arguments: 0. data structure (real, integer ds_map)
	 *
	 *  Returns: ID of newly created instance
	 */

	// Required properties
	var _object_name = ds_map_find_first(argument0);
	var data = ds_map_find_value(argument0,_object_name);
	var _children = ds_map_find_value(data,"children");

	// Create the instance
	var ins = itk_instance_create(0,0,asset_get_index(_object_name));

	// Read children and additional properties
	with(ins) {
	    // Read additional properties
	    itk_set_instance_props(data);
    
	    // Read children
	    var no_children = ds_list_size(_children);
	    var i = 0;
	    repeat(no_children) {
	        itk_ds_to_instance(ds_list_find_value(_children,i++));
	    }
	}

	return ins;


}
