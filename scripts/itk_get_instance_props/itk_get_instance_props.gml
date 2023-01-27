/// @description  This script gets an instance's properties
function itk_get_instance_props() {
	/*  Arguments: none
	 *
	 *  Returns: custom properties (ds_map)
	 *
	 *  Remarks: none
	 *
	 */

	itk_props = ds_map_create();
	event_user(itk_get_event);
	return itk_props;


}
