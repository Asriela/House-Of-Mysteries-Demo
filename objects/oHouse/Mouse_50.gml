if Edit_Mode=edit.room
Place_Room(mouse_grid_x,mouse_grid_y,0)

if Edit_Mode=edit.object && Object_Menu_Mode=2 && Over_Gui = false
{
	var tiledata, upper, lower;
//	sm(Item_Being_Placed)
switch(Item_Being_Placed)
{
	case "sTile_Carpet_Red":
				tiledata = irandom_range(1,3);
				lower = 1;
				upper = 3;
				break;
	case "sTile_Kitchen":
				tiledata = 4;
				lower = 4;
				upper = 4;
				break;
	case "sTile_Wood_Red":
				tiledata = irandom_range(5,10);
				lower = 5;
				upper = 10;
				break;
	case "sTile_Wood_Yellow":
				tiledata = irandom_range(11,24);
				lower = 11;
				upper = 24;
				break;
	case "sTile_Wood_Brown":
				tiledata = irandom_range(25,34);
				lower = 25;
				upper = 34;
				break;
	case "sTile_Spooky_Wood":
				tiledata = irandom_range(35,48);
				lower = 35;
				upper = 48;
				break;
	case "sTile_Alien":
				tiledata = irandom_range(49,55);
				lower = 49;
				upper = 55;
				break;
	case "sTile_Dirt_Mud":
				tiledata = irandom_range(56,61);
				lower = 56;
				upper = 61;
				break;
	case "sTile_DarkStone":
				tiledata = irandom_range(62,69);
				lower = 62;
				upper = 69;
				break;
	default:
				tiledata = 1;
				lower = 1;
				upper = 3;
				break;
}

if Tile_Bush_Size=2
{
	if tile_room_grid[| Floor][# mouse_small_grid_x,mouse_small_grid_y] != 0 && Buildable_Grid[# mouse_small_grid_x,mouse_small_grid_y] == 0
		PlaceTile(lower, upper, mouse_x,mouse_y,mouse_small_grid_x,mouse_small_grid_y);
}
	if Tile_Bush_Size=1
		{
					if tile_room_grid[| Floor][# mouse_small_grid_x+(1),mouse_small_grid_y+(1)] != 0 && Buildable_Grid[# mouse_small_grid_x+(1),mouse_small_grid_y+(1)] == 0
						PlaceTile(lower, upper, mouse_x+8,mouse_y+8,mouse_small_grid_x+(1),mouse_small_grid_y+(1));
					if tile_room_grid[| Floor][# mouse_small_grid_x-(1),mouse_small_grid_y-(1)] != 0 && Buildable_Grid[# mouse_small_grid_x-(1),mouse_small_grid_y-(1)] == 0
						PlaceTile(lower, upper, mouse_x-8,mouse_y-8,mouse_small_grid_x-(1),mouse_small_grid_y-(1));
					if tile_room_grid[| Floor][# mouse_small_grid_x+(1),mouse_small_grid_y-(1)] != 0 && Buildable_Grid[# mouse_small_grid_x+(1),mouse_small_grid_y-(1)] == 0
						PlaceTile(lower, upper, mouse_x+8,mouse_y-8,mouse_small_grid_x+(1),mouse_small_grid_y-(1));
					if tile_room_grid[| Floor][# mouse_small_grid_x-(1),mouse_small_grid_y+(1)] != 0 && Buildable_Grid[# mouse_small_grid_x-(1),mouse_small_grid_y+(1)] == 0
						PlaceTile(lower, upper, mouse_x-8,mouse_y+8,mouse_small_grid_x-(1),mouse_small_grid_y+(1));
					if tile_room_grid[| Floor][# mouse_small_grid_x-(2),mouse_small_grid_y+(1)] != 0 && Buildable_Grid[# mouse_small_grid_x-(2),mouse_small_grid_y+(1)] == 0
						PlaceTile(lower, upper, mouse_x-16,mouse_y+8,mouse_small_grid_x+(2),mouse_small_grid_y+(1));
					if tile_room_grid[| Floor][# mouse_small_grid_x+(2),mouse_small_grid_y+(1)] != 0 && Buildable_Grid[# mouse_small_grid_x+(2),mouse_small_grid_y+(1)] == 0	
						PlaceTile(lower, upper, mouse_x+16,mouse_y+8,mouse_small_grid_x+(2),mouse_small_grid_y+(1));
					if tile_room_grid[| Floor][# mouse_small_grid_x-(2),mouse_small_grid_y-(1)] != 0 && Buildable_Grid[# mouse_small_grid_x-(2),mouse_small_grid_y-(1)] == 0	
						PlaceTile(lower, upper, mouse_x-16,mouse_y-8,mouse_small_grid_x-(2),mouse_small_grid_y-(1));
					if tile_room_grid[| Floor][# mouse_small_grid_x+(2),mouse_small_grid_y+(1)] != 0 && Buildable_Grid[# mouse_small_grid_x+(2),mouse_small_grid_y+(1)] == 0
						PlaceTile(lower, upper, mouse_x+16,mouse_y-8,mouse_small_grid_x+(2),mouse_small_grid_y+(1));
					if tile_room_grid[| Floor][# mouse_small_grid_x-(1),mouse_small_grid_y+(2)] != 0 && Buildable_Grid[#  mouse_small_grid_x-(1),mouse_small_grid_y+(2)] == 0	
						PlaceTile(lower, upper, mouse_x-8,mouse_y+16,mouse_small_grid_x-(1),mouse_small_grid_y+(2));
					if tile_room_grid[| Floor][# mouse_small_grid_x-(1),mouse_small_grid_y-(2)] != 0 && Buildable_Grid[# mouse_small_grid_x-(1),mouse_small_grid_y-(2)] == 0	
						PlaceTile(lower, upper, mouse_x-8,mouse_y-16,mouse_small_grid_x-(1),mouse_small_grid_y-(2));
					if tile_room_grid[| Floor][# mouse_small_grid_x+(1),mouse_small_grid_y+(2)] != 0 && Buildable_Grid[# mouse_small_grid_x+(1),mouse_small_grid_y+(2)] == 0	
						PlaceTile(lower, upper, mouse_x+8,mouse_y+16,mouse_small_grid_x+(1),mouse_small_grid_y+(2));
					if tile_room_grid[| Floor][# mouse_small_grid_x+(1),mouse_small_grid_y-(2)] != 0 && Buildable_Grid[# mouse_small_grid_x+(1),mouse_small_grid_y-(2)] == 0	
						PlaceTile(lower, upper, mouse_x+8,mouse_y-16,mouse_small_grid_x+(1),mouse_small_grid_y-(2));
					if tile_room_grid[| Floor][# mouse_small_grid_x-(2),mouse_small_grid_y+(2)] != 0 && Buildable_Grid[# mouse_small_grid_x-(2),mouse_small_grid_y+(2)] == 0	
						PlaceTile(lower, upper, mouse_x-16,mouse_y+16,mouse_small_grid_x-(2),mouse_small_grid_y+(2));
					if tile_room_grid[| Floor][# mouse_small_grid_x+(2),mouse_small_grid_y+(2)] != 0 && Buildable_Grid[#  mouse_small_grid_x-(2),mouse_small_grid_y+(2)] == 0	
						PlaceTile(lower, upper, mouse_x+16,mouse_y+16,mouse_small_grid_x+(2),mouse_small_grid_y+(2));
					if tile_room_grid[| Floor][# mouse_small_grid_x-(2),mouse_small_grid_y-(2)] != 0 && Buildable_Grid[# mouse_small_grid_x-(2),mouse_small_grid_y-(2)] == 0	
						PlaceTile(lower, upper, mouse_x-16,mouse_y-16,mouse_small_grid_x-(2),mouse_small_grid_y-(2));
					if tile_room_grid[| Floor][# mouse_small_grid_x+(2),mouse_small_grid_y-(2)] != 0 && Buildable_Grid[# mouse_small_grid_x+(2),mouse_small_grid_y-(2)] == 0	
						PlaceTile(lower, upper, mouse_x+16,mouse_y-16,mouse_small_grid_x+(2),mouse_small_grid_y-(2));
					if tile_room_grid[| Floor][# mouse_small_grid_x-(2),mouse_small_grid_y+(2)] != 0 && Buildable_Grid[#mouse_small_grid_x-(2),mouse_small_grid_y+(2)] == 0	
						PlaceTile(lower, upper, mouse_x-16,mouse_y+16, mouse_small_grid_x-(2),mouse_small_grid_y+(2));
					if tile_room_grid[| Floor][# mouse_small_grid_x-(2),mouse_small_grid_y-(2)] != 0 && Buildable_Grid[# mouse_small_grid_x-(2),mouse_small_grid_y-(2)] == 0
						PlaceTile(lower, upper, mouse_x-16,mouse_y-16, mouse_small_grid_x-(2),mouse_small_grid_y-(2));
					if tile_room_grid[| Floor][# mouse_small_grid_x+(2),mouse_small_grid_y+(2)] != 0 && Buildable_Grid[# mouse_small_grid_x+(2),mouse_small_grid_y+(2)] == 0	
						PlaceTile(lower, upper, mouse_x+16,mouse_y+16,mouse_small_grid_x+(2),mouse_small_grid_y+(2));
					if tile_room_grid[| Floor][# mouse_small_grid_x+(2),mouse_small_grid_y-(2)] != 0 && Buildable_Grid[# mouse_small_grid_x+(2),mouse_small_grid_y-(2)] == 0	
						PlaceTile(lower, upper, mouse_x+16,mouse_y-16,mouse_small_grid_x+(2),mouse_small_grid_y-(2));
					if tile_room_grid[| Floor][# mouse_small_grid_x,mouse_small_grid_y] != 0 && Buildable_Grid[# mouse_small_grid_x,mouse_small_grid_y] == 0	
						PlaceTile(lower, upper, mouse_x,mouse_y,mouse_small_grid_x,mouse_small_grid_y);
					if tile_room_grid[| Floor][# mouse_small_grid_x+(1),mouse_small_grid_y] != 0 && Buildable_Grid[# mouse_small_grid_x+(1),mouse_small_grid_y] == 0	
						PlaceTile(lower, upper, mouse_x+8,mouse_y,mouse_small_grid_x+(1),mouse_small_grid_y);
					if tile_room_grid[| Floor][# mouse_small_grid_x+(2),mouse_small_grid_y] != 0 && Buildable_Grid[# mouse_small_grid_x+(2),mouse_small_grid_y] == 0
						PlaceTile(lower, upper, mouse_x+16,mouse_y, mouse_small_grid_x+(2),mouse_small_grid_y);
					if tile_room_grid[| Floor][# mouse_small_grid_x,mouse_small_grid_y+(1)] != 0 && Buildable_Grid[# mouse_small_grid_x,mouse_small_grid_y+(1)] == 0	
						PlaceTile(lower, upper, mouse_x,mouse_y+8,mouse_small_grid_x,mouse_small_grid_y+(1));
					if tile_room_grid[| Floor][# mouse_small_grid_x,mouse_small_grid_y+(2)] != 0	&& Buildable_Grid[# mouse_small_grid_x,mouse_small_grid_y+(2)] == 0
						PlaceTile(lower, upper, mouse_x,mouse_y+16,mouse_small_grid_x,mouse_small_grid_y+(2));
					if tile_room_grid[| Floor][# mouse_small_grid_x-(1),mouse_small_grid_y] != 0 && Buildable_Grid[#  mouse_small_grid_x-(1),mouse_small_grid_y] == 0	
						PlaceTile(lower, upper, mouse_x-8,mouse_y,mouse_small_grid_x-(1),mouse_small_grid_y);
					if tile_room_grid[| Floor][# mouse_small_grid_x-(2),mouse_small_grid_y] != 0 && Buildable_Grid[#  mouse_small_grid_x-(2),mouse_small_grid_y] == 0
						PlaceTile(lower, upper, mouse_x-16,mouse_y,mouse_small_grid_x-(2),mouse_small_grid_y);
					if tile_room_grid[| Floor][# mouse_small_grid_x,mouse_small_grid_y-(1)] != 0 && Buildable_Grid[# mouse_small_grid_x,mouse_small_grid_y-(1)] == 0	
						PlaceTile(lower, upper, mouse_x,mouse_y-8, mouse_small_grid_x,mouse_small_grid_y-(1));
					if tile_room_grid[| Floor][# mouse_small_grid_x,mouse_small_grid_y-(2)] != 0 && Buildable_Grid[# mouse_small_grid_x,mouse_small_grid_y-(2)] == 0	
						PlaceTile(lower, upper, mouse_x,mouse_y-16,mouse_small_grid_x,mouse_small_grid_y-(2));
		}
}

function PlaceTile(lower, upper, mouseX, mouseY, smallX, smallY)
{
	tile =irandom_range(lower,upper);
	tilemap_set_at_pixel(global.tilemap_Floor[Floor],tile,mouseX,mouseY);
	Floor_Grid[| Floor][# smallX ,smallY]=asset_get_index(Item_Being_Placed)

}


