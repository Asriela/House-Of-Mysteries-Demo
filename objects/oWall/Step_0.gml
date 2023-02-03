/// @description Insert description here
// You can write your code in this editor
//ss()


Wall_Grid[| floor_i_am_on][# xx,yy]=id
depth=-y+4-500

count=0
if my_house.tile_room_grid[| floor_i_am_on][# xx-1,yy]!=my_room
count++
if my_house.tile_room_grid[| floor_i_am_on][# xx,yy+1]!=my_room
count++
if my_house.tile_room_grid[| floor_i_am_on][# xx+1,yy]!=my_room
count++
if my_house.tile_room_grid[| floor_i_am_on][# xx,yy-1]!=my_room
count++
if my_house.tile_room_grid[| floor_i_am_on][# xx-1,yy-1]!=my_room
count++
if my_house.tile_room_grid[| floor_i_am_on][# xx+1,yy+1]!=my_room
count++
if my_house.tile_room_grid[| floor_i_am_on][# xx+1,yy-1]!=my_room
count++
if my_house.tile_room_grid[| floor_i_am_on][# xx-1,yy+1]!=my_room
count++
if count<1{
Delete_Wall(id)
	
	
}

//if my_house.Wall_Grid[| Floor][# xx-2,yy]=1
//instance_destroy(id)

