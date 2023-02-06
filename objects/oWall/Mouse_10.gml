/// @description Insert description here
// You can write your code in this editor
if floor_i_am_on!=Floor
|| Item_Being_Placed!= room_type.door  exit;
//ss()

	if Wall_Grid[| floor_i_am_on][# xx-1,yy]!=0 && Wall_Grid[| floor_i_am_on][# xx+1,yy]!=0{
		Door_Orientation=1
	}
	
		if Wall_Grid[| floor_i_am_on][# xx,yy-1]!=0 && Wall_Grid[| floor_i_am_on][# xx,yy+1]!=0{
					Door_Orientation=0
		}


