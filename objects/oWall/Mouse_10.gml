/// @description Insert description here
// You can write your code in this editor

	if Wall_Grid[# xx-1,yy]!=0 && Wall_Grid[# xx+1,yy]!=0{
		Door_Orientation=1
	}
	
		if Wall_Grid[# xx,yy-1]!=0 && Wall_Grid[# xx,yy+1]!=0{
					Door_Orientation=0
		}


