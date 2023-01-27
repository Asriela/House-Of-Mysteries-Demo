/// @description Insert description here
// You can write your code in this editor
if Item_Being_Placed= room_type.door
{
	
	if Wall_Grid[# xx-1,yy]!=0 && Wall_Grid[# xx+1,yy]!=0{
			door=instance_create_depth(x,y,0,oDoor)
		door.angle=ang.hor	
		door.grid_x=xx;
		door.grid_y=yy;		


		
Delete_Wall(id)
Remove_Wall(xx,yy)
Remove_Wall(xx-1,yy)
Remove_Wall(xx+1,yy)
Remove_Wall(xx-2,yy)
Remove_Wall(xx+2,yy)


Delete_Wall(Wall_Grid[# xx-1,yy])
Delete_Wall(Wall_Grid[# xx+1,yy])

Delete_Wall(Wall_Grid[# xx-2,yy])
Delete_Wall(Wall_Grid[# xx+2,yy])

	}
	if Wall_Grid[# xx,yy-1]!=0 && Wall_Grid[# xx,yy+1]!=0{
			door=instance_create_depth(x,y,0,oDoor)
	door.angle=ang.ver
		door.grid_x=xx;
		door.grid_y=yy;		
	
	
Delete_Wall(id)
Delete_Wall(Wall_Grid[# xx,yy-1])
Delete_Wall(Wall_Grid[# xx,yy+1])
Delete_Wall(Wall_Grid[# xx,yy-2])
Delete_Wall(Wall_Grid[# xx,yy+2])


Remove_Wall(xx,yy)
Remove_Wall(xx,yy-1)
Remove_Wall(xx,yy+1)
Remove_Wall(xx,yy-2)
Remove_Wall(xx,yy+2)


	}	

}

