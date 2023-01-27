/// @description  This script executes the given script for all instances
function itk_script_execute() {
	/*  Arguments: 0. script index (valid script index)
	 *             1. [arguments required by the script]
	 *                  .
	 *                  .
	 *                  .
	 *             15.[arguments required by the script]
	 *
	 *  Returns: none
	 *
	 *  Remarks: to be called as an instance method of obj_itk_object
	 *
	 */

	// Execute with me
	switch(argument_count) {
	    case 1:
	        script_execute(argument[0]);
	        break;
	    case 2:
	        script_execute(argument[0],argument[1]);
	        break;
	    case 3:
	        script_execute(argument[0],argument[1],argument[2]);
	        break;
	    case 4:
	        script_execute(argument[0],argument[1],argument[2],argument[3]);
	        break;
	    case 5:
	        script_execute(argument[0],argument[1],argument[2],argument[3],argument[4]);
	        break;
	    case 6:
	        script_execute(argument[0],argument[1],argument[2],argument[3],argument[4],argument[5]);
	        break;
	    case 7:
	        script_execute(argument[0],argument[1],argument[2],argument[3],argument[4],argument[5],argument[6]);
	        break;
	    case 8:
	        script_execute(argument[0],argument[1],argument[2],argument[3],argument[4],argument[5],argument[6],argument[7]);
	        break;
	    case 9:
	        script_execute(argument[0],argument[1],argument[2],argument[3],argument[4],argument[5],argument[6],argument[7],argument[8]);
	        break;
	    case 10:
	        script_execute(argument[0],argument[1],argument[2],argument[3],argument[4],argument[5],argument[6],argument[7],argument[8],argument[9]);
	        break;
	    case 11:
	        script_execute(argument[0],argument[1],argument[2],argument[3],argument[4],argument[5],argument[6],argument[7],argument[8],argument[9],argument[10]);
	        break;
	    case 12:
	        script_execute(argument[0],argument[1],argument[2],argument[3],argument[4],argument[5],argument[6],argument[7],argument[8],argument[9],argument[10],argument[11]);
	        break;
	    case 13:
	        script_execute(argument[0],argument[1],argument[2],argument[3],argument[4],argument[5],argument[6],argument[7],argument[8],argument[9],argument[10],argument[11],argument[12]);
	        break;
	    case 14:
	        script_execute(argument[0],argument[1],argument[2],argument[3],argument[4],argument[5],argument[6],argument[7],argument[8],argument[9],argument[10],argument[11],argument[12],argument[13]);
	        break;
	    case 15:
	        script_execute(argument[0],argument[1],argument[2],argument[3],argument[4],argument[5],argument[6],argument[7],argument[8],argument[9],argument[10],argument[11],argument[12],argument[13],argument[14]);
	        break;
	    case 16:
	        script_execute(argument[0],argument[1],argument[2],argument[3],argument[4],argument[5],argument[6],argument[7],argument[8],argument[9],argument[10],argument[11],argument[12],argument[13],argument[14],argument[15]);
	        break;
	    default:
	        ;
	}

	// Execute with children
	for(var i = 0;i < ds_list_size(children);i++) {
	    with(ds_list_find_value(children,i)) {
	        switch(argument_count) {
	            case 1:
	                itk_script_execute(argument[0]);
	                break;
	            case 2:
	                itk_script_execute(argument[0],argument[1]);
	                break;
	            case 3:
	                itk_script_execute(argument[0],argument[1],argument[2]);
	                break;
	            case 4:
	                itk_script_execute(argument[0],argument[1],argument[2],argument[3]);
	                break;
	            case 5:
	                itk_script_execute(argument[0],argument[1],argument[2],argument[3],argument[4]);
	                break;
	            case 6:
	                itk_script_execute(argument[0],argument[1],argument[2],argument[3],argument[4],argument[5]);
	                break;
	            case 7:
	                itk_script_execute(argument[0],argument[1],argument[2],argument[3],argument[4],argument[5],argument[6]);
	                break;
	            case 8:
	                itk_script_execute(argument[0],argument[1],argument[2],argument[3],argument[4],argument[5],argument[6],argument[7]);
	                break;
	            case 9:
	                itk_script_execute(argument[0],argument[1],argument[2],argument[3],argument[4],argument[5],argument[6],argument[7],argument[8]);
	                break;
	            case 10:
	                itk_script_execute(argument[0],argument[1],argument[2],argument[3],argument[4],argument[5],argument[6],argument[7],argument[8],argument[9]);
	                break;
	            case 11:
	                itk_script_execute(argument[0],argument[1],argument[2],argument[3],argument[4],argument[5],argument[6],argument[7],argument[8],argument[9],argument[10]);
	                break;
	            case 12:
	                itk_script_execute(argument[0],argument[1],argument[2],argument[3],argument[4],argument[5],argument[6],argument[7],argument[8],argument[9],argument[10],argument[11]);
	                break;
	            case 13:
	                itk_script_execute(argument[0],argument[1],argument[2],argument[3],argument[4],argument[5],argument[6],argument[7],argument[8],argument[9],argument[10],argument[11],argument[12]);
	                break;
	            case 14:
	                itk_script_execute(argument[0],argument[1],argument[2],argument[3],argument[4],argument[5],argument[6],argument[7],argument[8],argument[9],argument[10],argument[11],argument[12],argument[13]);
	                break;
	            case 15:
	                itk_script_execute(argument[0],argument[1],argument[2],argument[3],argument[4],argument[5],argument[6],argument[7],argument[8],argument[9],argument[10],argument[11],argument[12],argument[13],argument[14]);
	                break;
	            case 16:
	                itk_script_execute(argument[0],argument[1],argument[2],argument[3],argument[4],argument[5],argument[6],argument[7],argument[8],argument[9],argument[10],argument[11],argument[12],argument[13],argument[14],argument[15]);
	                break;
	            default:
	                ;
	        }
	    }
	}


}
