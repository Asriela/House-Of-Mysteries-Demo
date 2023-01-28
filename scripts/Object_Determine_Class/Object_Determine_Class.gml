// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Object_Determine_Class(type){
	ret=obj_class.none;
	if type="Doorway"
	ret=obj_class.doorway
	else{
		switch(type)
		{
			case "Chair": ret = obj_class.chair break;
			case "Bed": ret = obj_class.bed break;
			case "Merch": ret = obj_class.merch break;
					case "Table": ret = obj_class.table break;
					case "Cash_register": ret = obj_class.cash_register break;
										case "Shop_entrance_sign": ret = obj_class.tourist_spawn break;
					
		}
	}
	
	return ret;
}