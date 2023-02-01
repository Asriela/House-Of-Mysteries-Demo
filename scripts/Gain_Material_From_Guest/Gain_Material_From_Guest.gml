// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Gain_Material_From_Guest(guest,mood){
var mat_type=noone
var amount=0
mood+=10
		if mood>0
		switch(guest)
		{
			case char.gnor_the_gnome: 


				var chance=choose(0,1)
					if chance
					{
					mat_type="sMat_Ceramic"
					amount=1*mood
					}
					else
					{
					mat_type="sMat_Wood"
					amount=1*mood
					}

			break;
		case char.ghost: 



					mat_type="sMat_Ectoplasm"
					amount=1*mood


			break;
		}
		
		if mat_type!=noone
		{
			if is_undefined(materials_gained_map[? guest][? mat_type])
			materials_gained_map[? guest][? mat_type]=floor(amount)
			else
			materials_gained_map[? guest][? mat_type]+=floor(amount)
		}
	
}