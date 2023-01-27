/// @description  This script deletes an instance and updates the other instances accordingly
function itk_instance_destroy() {
	/*  Arguments: none
	 *
	 *  Remarks: to be called as instance method
	 *
	 */
	var size = ds_list_size(children);
	for(var i = 0;i < size;i++) {
	    with(ds_list_find_value(children,0))
	        instance_destroy();
	}

	// Destroy properties map if exists
	if (itk_props != -1)
	    ds_map_destroy(itk_props);

	// No parent => No need to modify it
	if (parent == noone) exit;

	with(parent) {
	    ds_list_delete(children,ds_list_find_index(children,other.id));
	}


}
