globalvar Door_Orientation,Floor_Variation_Grid,Buildable_Grid,House_Path_Floor,Floor_List,Game_Mode,Rooms_Objects_Map,Distinguished_Rooms,House_Grid_Width,Wall_Grid,Rooms_Map,Taken_Rooms_Map,House_Start_X,House_Start_Y,Bigger_Tile_Height,Bigger_Tile_Width,Rooms_Grid,down_key,up_key,left_key,right_key,Player_View_Direction,Player,mouse_grid_x,mouse_grid_y,House_Path_Grid,Spawn_X,Spawn_Y;
// You can write your code in this editor
grid_width= 100;
grid_height=100;
Door_Orientation=0

Buildable_Grid=ds_grid_create(grid_width,grid_height)
Rooms_Objects_Map=ds_map_create()
Taken_Rooms_Map=ds_map_create()
Distinguished_Rooms=ds_map_create()

	Bigger_Tile_Width=Tile_Width*6
	Bigger_Tile_Height=Tile_Height*6	
down_key=0
up_key=0
left_key=0
prev_room=0
right_key=0
done_once=0
alarm[1]=10

House_Grid_Width=grid_width
checked=0

//FLOOR VARIATION GRID tells us which image index a floor tile should hold to create variations in the appearance of the floor
Floor_Variation_Grid=ds_grid_create(grid_width,grid_height)
for(ix=0;ix<100;ix++)
for(iy=0;iy<100;iy++)
Floor_Variation_Grid[# ix,iy]=random(100)

//FLOOR LIST holds a list of all the places we have placed a floor
Floor_List=ds_list_create()
Floor_List[| 0]=ds_list_create()
Floor_List[| 1]=ds_list_create()
Floor_List[| 2]=ds_list_create()
Floor_List[| 3]=ds_list_create()

//FLOOR GRID holds the sprite of the tiles
Floor_Grid=ds_list_create()
Floor_Grid[| 0]=ds_grid_create(100,100)
Floor_Grid[| 1]=ds_grid_create(100,100)
Floor_Grid[| 2]=ds_grid_create(100,100)
Floor_Grid[| 3]=ds_grid_create(100,100)
ds_grid_clear(Floor_Grid[| 0],sTile_Wood_Red)
ds_grid_clear(Floor_Grid[| 1],sTile_Wood_Red)
ds_grid_clear(Floor_Grid[| 2],sTile_Wood_Red)
ds_grid_clear(Floor_Grid[| 3],sTile_Wood_Red)

//ROOMS GRID holds the unique room number identifyer in each of each tiles, so we can look at a tile on the grid
//and know what room this tile belongs to - basically an inverse of ROOMS_MAP
Rooms_Grid=ds_list_create()
Rooms_Grid[| 0]=ds_grid_create(100,100)
Rooms_Grid[| 1]=ds_grid_create(100,100)
Rooms_Grid[| 2]=ds_grid_create(100,100)
Rooms_Grid[| 3]=ds_grid_create(100,100)
ds_grid_clear(Rooms_Grid[|0],noone)
ds_grid_clear(Rooms_Grid[|1],noone)
ds_grid_clear(Rooms_Grid[|2],noone)
ds_grid_clear(Rooms_Grid[|3],noone)

//TILE ROOM GRID
tile_room_grid=ds_list_create()
tile_room_grid[| 0]=ds_grid_create(grid_width,grid_height)
tile_room_grid[| 1]=ds_grid_create(grid_width,grid_height)
tile_room_grid[| 2]=ds_grid_create(grid_width,grid_height)
tile_room_grid[| 3]=ds_grid_create(grid_width,grid_height)

//Rooms_Type_Map is a shorthand for us to quickly know what room type a certain room is
Rooms_Type_Map=ds_map_create()

//WALL GRID all the places we have walls on the grid
Wall_Grid=ds_list_create()
Wall_Grid[|0]=ds_grid_create(grid_width,grid_height)
Wall_Grid[|1]=ds_grid_create(grid_width,grid_height)
Wall_Grid[|2]=ds_grid_create(grid_width,grid_height)
Wall_Grid[|3]=ds_grid_create(grid_width,grid_height)
my_hull=ds_list_create()
my_hull_size=0;
//ROOMS MAP holds a list of x+y co-ordinatates for every tile that belongs to this room
Rooms_Map=ds_map_create()

//
Rooms_Map[? 0]=ds_map_create();
x=room_width/2
y=room_height/2-200
 House_Start_X=x-(grid_width/2)*Tile_Width;
House_Start_Y=y-(grid_height/2)*Tile_Height;

image_xscale=2
image_yscale=2
oGame.x=x
oGame.y=y+200
//House_Path_Grid = mp_grid_create(0,0,grid_width,grid_height,1,1)

Spawn_X=room_width/2;
Spawn_Y=room_height/2;
 player=House_Add_Person(char.player,100,100,1,"",char.player)
 player.character_type="Milda"


 player.x=room_width/2
 player.y=room_height/2+70
 
 player.mask=instance_create(x,y,mPlayer)
 player.mask.owner=player
player.floor_i_am_on=Dev_Help[? dev_help.player_starting_floor]
//display_mouse_set(player.x,player.y)
Spawn_X=player.x
 Spawn_Y=player.y
 player.object_is_tracked=false
Player=player;

with(player)
{

	box_tracker = instance_create_layer(x,y,"Instances",o_BoxViewTracker);
	box_tracker.AttachToOwner(id);
	MultiTrackCamera.Track_Objects(box_tracker);
	object_is_tracked = true;
	instance_create_depth(x,y,0,oView)

}


Create_New_Room(room_type.hallway)
Create_New_Room(room_type.hallway)


function House_Running_Variables(){


	mouse_grid_x=floor(floor((mouse_x-(House_Start_X+Bigger_Tile_Width/2))/Bigger_Tile_Width)*6+6);
	
	mouse_grid_y=floor(floor((mouse_y-(House_Start_Y+Bigger_Tile_Height/2))/Bigger_Tile_Height)*6+6);
	
		mouse_small_grid_x=floor(floor((mouse_x-(House_Start_X+Tile_Width/2))/Tile_Width));
	
	mouse_small_grid_y=floor(floor((mouse_y-(House_Start_Y+Tile_Width/2))/Tile_Width));
	
	if Game_Mode=game_mode.block_out && mouse_check_button(mb_left){
		ds_grid_set_region(Buildable_Grid,mouse_grid_x-3,mouse_grid_y-3,mouse_grid_x+3,mouse_grid_y+3,1)
	//Buildable_Grid[# mouse_grid_x,mouse_grid_y]=1
	}
}



for(xx=0;xx<grid_width;xx++)
for(yy=0;yy<grid_height;yy++)
{
		if xx<100
	t_xx="0"+st(xx);
	if yy<100
	t_yy="0"+st(yy);	
	
	if xx<10
	t_xx="00"+st(xx);
	if yy<10
	t_yy="00"+st(yy);	
	


//ds_map_add(Rooms_Map[? 0],t_xx+"_"+t_yy,1)
	tile_room_grid[| 0][# xx,yy]=0
	tile_room_grid[| 1][# xx,yy]=0
	tile_room_grid[| 2][# xx,yy]=0
	tile_room_grid[| 3][# xx,yy]=0
}

function Place_Room(place_x,place_y,automated)
{
	if Game_Mode=game_mode.block_out exit;
if !automated && (Over_Gui || (Available_Building_Space_Grid[# place_x,place_y]<1 && Game_Mode=game_mode.normal))   exit;//&& Cash>=10 exit;
if (place_x<0 || place_x>House_Grid_Width || place_y<0 || place_y>
House_Grid_Width) exit;

if Edit_Mode=edit.room || automated
if  automated || !(Buildable_Grid[# place_x,place_y]==1 && Cash-30<0)
{
	if !automated
	if Buildable_Grid[# place_x,place_y]==1{
	Buildable_Grid[# place_x,place_y]=2

	Cash-=30
	}
	
	
	if Item_Being_Placed!= room_type.door{
	House_Build_Room(automated,place_x,place_y,1,0,noone)
	

	
ds_list_add(Room_Placement_X_List,place_x)
ds_list_add(Room_Placement_Y_List,place_y)
ds_list_add(Room_Placement_Type_List,Item_Being_Placed)	
	}



{
	
}
}
//if Edit_Mode=edit.object
//House_Move_Object()


checked=0
Over_Building_Block=noone
}