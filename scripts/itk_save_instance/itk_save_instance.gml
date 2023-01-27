/// @description  This script saves a single instance to a file
function itk_save_instance(argument0, argument1) {
	/*  Arguments: 0. root instance ID
	 *             1. filename (string)
	 *
	 *  Remarks: none
	 *
	 */

	with(argument0) {
		
	    var json_string = itk_json_encode(id);
    
	    var file = file_text_open_write(argument1);
	    file_text_write_string(file,json_string);
	    file_text_close(file);
	}


}
