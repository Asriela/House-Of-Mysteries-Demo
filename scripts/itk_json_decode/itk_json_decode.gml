/// @description  This script decodes an instance from JSON format
function itk_json_decode(argument0) {
	/*  Arguments: 0. JSON formatted instance (string)
	 *
	 *  Returns: newly created instance ID (real, integer ID)
	 */

	var data = json_decode(argument0);

	var root = itk_ds_to_instance(data);

	ds_map_destroy(data);

	return root;


}
