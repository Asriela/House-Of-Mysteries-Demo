/// @description Insert description here
// You can write your code in this editor
//ss()


Wall_Grid[# xx,yy]=id
depth=-y+4-710

count=0
if my_house.tile_room_grid[# xx-1,yy]!=my_room
count++
if my_house.tile_room_grid[# xx,yy+1]!=my_room
count++
if my_house.tile_room_grid[# xx+1,yy]!=my_room
count++
if my_house.tile_room_grid[# xx,yy-1]!=my_room
count++
if my_house.tile_room_grid[# xx-1,yy-1]!=my_room
count++
if my_house.tile_room_grid[# xx+1,yy+1]!=my_room
count++
if my_house.tile_room_grid[# xx+1,yy-1]!=my_room
count++
if my_house.tile_room_grid[# xx-1,yy+1]!=my_room
count++

if count<1{
Delete_Wall(id)
	
	
}

//if my_house.Wall_Grid[# xx-2,yy]=1
//instance_destroy(id)

