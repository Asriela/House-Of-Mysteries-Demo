/// @description  This script adds a child instance to the current instance or creates a new one
function itk_instance_create(argument0, argument1, argument2) {
	/*  Arguments: 0. x (real)
	 *             1. y (real)
	 *             2. object type (must inherit from obj_itk_object)
	 *
	 *  Remarks: can also be called as an instance method (using with)
	 *  
	 *  Usage: var ins = itk_instance_create(x,y,type)          // Creates an instance without a parent
	 *         with (ins) itk_instance_create(x,y,type)         // Assigns the new instance to ins
	 *
	 */
	var ins = instance_create_depth(argument0,argument1,0,argument2);

	// Not a child of obj_itk_object, not called by obj_itk_object => return parentless instance
	if (!object_is_ancestor(object_index,obj_itk_object))
	    return ins;

	// Initialize instance
	with(ins) {
	    parent = other.id;
	}

	// Update parent
	ds_list_add(children,ins);

	// Return instance ID to allow for further customization
	return ins;


}
