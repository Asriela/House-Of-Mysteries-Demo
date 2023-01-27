/// @description  This script encodes an instance as a JSON string
function itk_json_encode(argument0) {
	/*  Arguments: 0. instance ID
	 *
	 *  Returns: instance in JSON format (string, JSON)
	 *
	 */

	var data = itk_instance_to_ds(argument0);

	var json = json_encode(data);

	ds_map_destroy(data);

	return json;


}
