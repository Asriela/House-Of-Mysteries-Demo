/// @description  This script moves the given instance to another parent
function itk_instance_move(argument0) {
	/*  Arguments: 0. new parent instance ID (real, integer ID)
	 *
	 *  Remarks: * to be called as an instance method of obj_itk_object
	 *           * move to noone to make the instance a parentless instance
	 *
	 *  Usage: with(instance_id) itk_instance_move(new_parent)
	 *
	 */

	// Same parent => no change required
	if (parent == argument0) exit;

	// Check if new parent is actually child of instance to move
	if (argument0 != noone) {
	    var ins = argument0;
	    var check = false;
	    while ((ins.parent == noone || ins.parent == id)) {
	        if (ins.parent == id) {
	            check = true;
	            break;
	        }
	        ins = ins.parent;
	    }
	    if (check) exit;
	}

	// Remove from original parent
	with(parent) {
	    ds_list_delete(children,ds_list_find_index(children,other.id));
	}

	// Change parent
	parent = argument0;

	// Add to new parent
	with(argument0) {
	    ds_list_add(children,other.id);
	}


}
