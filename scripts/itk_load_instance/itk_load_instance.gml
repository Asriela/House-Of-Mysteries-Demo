/// @description  This script loads an instance from a file
function itk_load_instance(argument0) {
	/*  Arguments: 0. filename (string)
	 *
	 *  Returns: root instance ID (real, integer ID)
	 *
	 *  Remarks: none
	 *
	 */

	var file = file_text_open_read(argument0);
	var json_string = file_text_read_string(file);
	file_text_close(file);

	return itk_json_decode(json_string);


}
