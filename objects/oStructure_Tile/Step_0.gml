/// @description Insert description here
// You can write your code in this editor
depth=-y-30

if block_type=building.grass
depth=-y-34

if Available_Building_Space_Grid[# grid_x,grid_y]=2 {
instance_destroy(id)
Cash-=10
}