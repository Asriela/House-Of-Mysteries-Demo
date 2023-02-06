/// @description Insert description here
// You can write your code in this editor
if Item_Being_Placed= room_type.door
{
	if floor_i_am_on=Floor
	if Wall_Grid[| floor_i_am_on][# xx-1,yy]!=0 && Wall_Grid[| floor_i_am_on][# xx+1,yy]!=0{
		//ss()
			door=instance_create_depth(x,y,0,oDoor)
		door.angle=ang.hor	
		door.grid_x=xx;
		door.grid_y=yy;		
		door.floor_i_am_on=floor_i_am_on


		
Delete_Wall(id)
Remove_Wall(xx,yy,floor_i_am_on)
Remove_Wall(xx-1,yy,floor_i_am_on)
Remove_Wall(xx+1,yy,floor_i_am_on)
Remove_Wall(xx-2,yy,floor_i_am_on)
Remove_Wall(xx+2,yy,floor_i_am_on)


Delete_Wall(Wall_Grid[| Floor][# xx-1,yy])
Delete_Wall(Wall_Grid[| Floor][# xx+1,yy])

Delete_Wall(Wall_Grid[| Floor][# xx-2,yy])
Delete_Wall(Wall_Grid[| Floor][# xx+2,yy])

	}
	if Wall_Grid[| Floor][# xx,yy-1]!=0 && Wall_Grid[| Floor][# xx,yy+1]!=0{
			door=instance_create_depth(x,y,0,oDoor)
	door.angle=ang.ver
		door.grid_x=xx;
		door.grid_y=yy;		
	door.floor_i_am_on=floor_i_am_on
	
Delete_Wall(id)
Delete_Wall(Wall_Grid[| Floor][# xx,yy-1])
Delete_Wall(Wall_Grid[| Floor][# xx,yy+1])
Delete_Wall(Wall_Grid[| Floor][# xx,yy-2])
Delete_Wall(Wall_Grid[| Floor][# xx,yy+2])


Remove_Wall(xx,yy,floor_i_am_on)
Remove_Wall(xx,yy-1,floor_i_am_on)
Remove_Wall(xx,yy+1,floor_i_am_on)
Remove_Wall(xx,yy-2,floor_i_am_on)
Remove_Wall(xx,yy+2,floor_i_am_on)


	}	

}

