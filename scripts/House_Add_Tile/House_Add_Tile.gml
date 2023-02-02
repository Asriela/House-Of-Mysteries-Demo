function Build_Wall(xxx,yyy,hori,vert){
	
	
if tile_room_grid[# xxx,yyy]!=Selected_Room{
		if !is_undefined(Rooms_Map[? Selected_Room])
	if !is_undefined(Rooms_Map[? Selected_Room][? st(xxx)+"_"+st(yyy)])
ds_map_delete(Rooms_Map[? Selected_Room],st(xxx)+"_"+st(yyy))
if exists(Wall_Grid[| Floor][# xxx,yyy])
Delete_Wall(Wall_Grid[| Floor][# xxx,yyy])

Create_Wall(xxx,yyy,hori,vert)
}

}
function Get_Room_Color(type)
{
	var ret=0;
	switch (type){
		case room_type.bedroom: ret=color_bedroom; break;
		case room_type.dining: ret=color_dining; break;		
		case room_type.drinking: ret=color_drinking; break;
		case room_type.reading: ret=color_reading; break;		
	}
	return ret;
}
	function no_to_s(value)
	{
	if value<10
	value="00"+st(value);
	else
	if value<100
	value="0"+st(value);	
	

	
	return value;
	}
function Create_Wall(xx,yy,vert,hori)
{

			var start_x=x-(grid_width/2)*Tile_Width;
	var start_y=y-(grid_height/2)*Tile_Height
				var wall=mWall_0
			switch(Floor)
			{
				case 1: wall=mWall_1 break;
				case 2: wall=mWall_2 break;
				case 3: wall=mWall_3 break;
			}
			
	var the_wall=instance_create_depth(start_x+xx*Tile_Width,start_y+yy*Tile_Height,-200,wall)
	Wall_Grid[| Floor][# xx,yy]=the_wall;
	the_wall.xx=xx;
	the_wall.yy=yy;
	the_wall.my_house=id;
	the_wall.my_room=Selected_Room
	the_wall.my_color=Get_Room_Color(Item_Being_Placed)
	if vert=-1 && hori=0
	the_wall.room_color[| dir.up]=the_wall.my_color
	if vert=1 && hori=0
	the_wall.room_color[| dir.down]=the_wall.my_color
	if hori=-1 && vert=0
	the_wall.room_color[| dir.left]=the_wall.my_color
	if hori=1 && vert=0
	the_wall.room_color[| dir.right]=the_wall.my_color
		tile_room_grid[# xx,yy]=Selected_Room
		mp_grid_add_cell(House_Path_Grid,xx,yy)
}

function House_Add_Tile(xx,yy,type,walls){

	if xx>5 && xx<=95 
	&& yy>5 && yy<=95{
//mp_grid_clear_cell(House_Path_Grid,xx,yy)

prev_room=	tile_room_grid[# xx,yy]
	tile_room_grid[# xx,yy]=Selected_Room
	

		if xx<100
	t_xx="0"+st(xx);
	if yy<100
	t_yy="0"+st(yy);	
	//if prev_room!=0
	if xx<10
	t_xx="00"+st(xx);
	if yy<10
	t_yy="00"+st(yy);	
	



if ds_list_find_index(Floor_List[| Floor],no_to_s(xx)+"_"+no_to_s(yy))=-1
ds_list_add(Floor_List[| Floor],no_to_s(xx)+"_"+no_to_s(yy)) 
Rooms_Grid[| Floor][# xx,yy]=Selected_Room

//sm(st(xx)+" "+st(yy))

if ds_list_find_index(Floor_List[| Floor],no_to_s(xx-1)+"_"+no_to_s(yy))=-1
ds_list_add(Floor_List[| Floor],no_to_s(xx-1)+"_"+no_to_s(yy)) 
//Rooms_Grid[| Floor][# xx-1,yy]=Selected_Room

if ds_list_find_index(Floor_List[| Floor],no_to_s(xx+1)+"_"+no_to_s(yy))=-1
ds_list_add(Floor_List[| Floor],no_to_s(xx+1)+"_"+no_to_s(yy)) 
//Rooms_Grid[| Floor][# xx+1,yy]=Selected_Room

if ds_list_find_index(Floor_List[| Floor],no_to_s(xx)+"_"+no_to_s(yy-1))=-1
ds_list_add(Floor_List[| Floor],no_to_s(xx)+"_"+no_to_s(yy-1)) 
//Rooms_Grid[| Floor][# xx,yy-1]=Selected_Room
if ds_list_find_index(Floor_List[| Floor],no_to_s(xx)+"_"+no_to_s(yy+1))=-1
ds_list_add(Floor_List[| Floor],no_to_s(xx)+"_"+no_to_s(yy+1)) 
//Rooms_Grid[| Floor][# xx,yy+1]=Selected_Room




if ds_list_find_index(Floor_List[| Floor],no_to_s(xx-1)+"_"+no_to_s(yy+1))=-1
ds_list_add(Floor_List[| Floor],no_to_s(xx-1)+"_"+no_to_s(yy+1)) 

if ds_list_find_index(Floor_List[| Floor],no_to_s(xx+1)+"_"+no_to_s(yy-1))=-1
ds_list_add(Floor_List[| Floor],no_to_s(xx+1)+"_"+no_to_s(yy-1)) 


if ds_list_find_index(Floor_List[| Floor],no_to_s(xx-1)+"_"+no_to_s(yy-1))=-1
ds_list_add(Floor_List[| Floor],no_to_s(xx-1)+"_"+no_to_s(yy-1)) 

if ds_list_find_index(Floor_List[| Floor],no_to_s(xx+1)+"_"+no_to_s(yy+1))=-1
ds_list_add(Floor_List[| Floor],no_to_s(xx+1)+"_"+no_to_s(yy+1)) 




Rooms_Grid[| Floor][# xx-1,yy]=Selected_Room
Rooms_Grid[| Floor][# xx+1,yy]=Selected_Room
Rooms_Grid[| Floor][# xx,yy-1]=Selected_Room
Rooms_Grid[| Floor][# xx,yy+1]=Selected_Room

Rooms_Grid[| Floor][# xx-1,yy-1]=Selected_Room
Rooms_Grid[| Floor][# xx+1,yy+1]=Selected_Room
Rooms_Grid[| Floor][# xx+1,yy-1]=Selected_Room
Rooms_Grid[| Floor][# xx-1,yy+1]=Selected_Room

	if walls{
with(Wall_Grid[| Floor][# xx,yy])
{
	instance_destroy()
}
	}
	
if walls{

Build_Wall(xx,yy-1,0,+1)
Build_Wall(xx,yy+1,0,-1)
Build_Wall(xx-1,yy-1,+1,+1)
Build_Wall(xx+1,yy-1,-1,+1)
Build_Wall(xx+1,yy+1,-1,-1)
Build_Wall(xx-1,yy+1,+1,-1)
Build_Wall(xx-1,yy,0,+1)
Build_Wall(xx+1,yy,-1,0)
}
}
}
function Add_Room_Tile(xx,yy,room_no)
{
			if xx<100
	t_xx="0"+st(xx);
	if yy<100
	t_yy="0"+st(yy);	
	if prev_room!=0
	if xx<10
	t_xx="00"+st(xx);
	if yy<10
	t_yy="00"+st(yy);	
		ds_map_delete(Rooms_Map[? prev_room],t_xx+"_"+t_yy)
	ds_map_add(Rooms_Map[? room_no],t_xx+"_"+t_yy,1)
}


