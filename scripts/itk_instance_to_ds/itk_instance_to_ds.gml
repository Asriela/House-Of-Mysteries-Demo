/// @description  This script encodes a single instance into a data structure
function itk_instance_to_ds(argument0) {
	/*  Arguments: 0. instance ID
	 *
	 *  Returns: data structure containing instance representation (ds_map)
	 *
	 *  Remarks: don't forget to destroy the returned data structure after use
	 *
	 */

	var ins_ds = ds_map_create();

	// Add custom properties
	var props;
	with(argument0) {
	    props = itk_get_instance_props();
	}

	var name_to_write;
	if (argument0.override_name == "") {
	    name_to_write = object_get_name(argument0.object_index);
	} else {
	    name_to_write = argument0.override_name;
	}
	ds_map_add_map(ins_ds,name_to_write,props);

	// Add child instances
	var child_list = ds_list_create();
	ds_map_add_list(props,"children",child_list);

	for(var i = 0;i < ds_list_size(argument0.children);i++) {
	    ds_list_add(child_list,itk_instance_to_ds(ds_list_find_value(argument0.children,i)));
	    ds_list_mark_as_map(child_list,ds_list_size(child_list)-1);
	}

	return ins_ds;


}
