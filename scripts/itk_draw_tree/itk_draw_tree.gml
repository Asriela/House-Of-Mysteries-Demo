/// @description  Debug script to draw (part of) an instance tree
/// @function  Debug script to draw 
/// @param part of
function itk_draw_tree() {
	/*  Arguments: 0. root instance ID (real, integer ID)
	 *             1. x position (real)
	 *             2. y position (real)
	 *             3. [output properties (bool, default false)]
	 *             4. [x indent count (real)]
	 *             5. [y line count (real)]
	 *
	 *  Returns: number of lines written (multiply by text_height to get next line position)
	 *
	 *  Usage: itk_draw_tree(instance_id,x,y) or itk_draw_tree(instance_id,x,y,true)
	 *
	 *  Remarks: * arguments 4 and 5 are used internally to allow for indentation and should 
	 *             not be passed to the script
	 *
	 *
	 */

	var indent_width, text_height;
	indent_width = 20;
	text_height = 20;

	var indent, line, props;
	switch (argument_count) {
	    case 3:
	        indent = 0;
	        line = 0;
	        props = false;
	        break;
	    case 4:
	        indent = 0;
	        line = 0;
	        props = argument[3];
	        break;
	    case 6:
	        indent = argument[4];
	        line = argument[5];
	        props = argument[3];
	        break;
	}

	var start = line;   // Remember line count at start

	with (argument[0]) {
	    draw_text(argument[1]+indent*indent_width,argument[2]+(line++)*text_height,string_hash_to_newline(object_get_name(object_index) + "-" + string(id)));
    
	    if (props) {
	        var map = itk_get_instance_props();
	        var key = ds_map_find_first(map);
	        for(var i = 0;i < ds_map_size(map);i++) {
	            if (key == "children") continue;    // Skip list of children
	            draw_text(argument[1]+indent_width/2+indent*indent_width,argument[2]+(line++)*text_height,string_hash_to_newline(string(key) + ":" + string(ds_map_find_value(map,key))));
	            key = ds_map_find_next(map,key);
	        }
	        ds_map_destroy(map);
	    }
    
	    indent++;
	    for(var i = 0;i < ds_list_size(children);i++) {
	        var ins = ds_list_find_value(children,i);
	        line += itk_draw_tree(ds_list_find_value(children,i),argument[1],argument[2],props,indent,line);
	        line++;
	    }
	    indent--;
	}

	return line-start-1;    // Return number of lines written


}
