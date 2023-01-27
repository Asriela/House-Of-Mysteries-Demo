/// @description Insert description here
// You can write your code in this editor
Player_Object.backpack_map[? ingredient.cabbage]=2


ini_open("save.ini")
if Game_Mode!=game_mode.no_loading{
	



/*
				var start_text=ini_read_string("a","event_star_hour",0);
	var end_text=ini_read_string("a","event_end_hour",0);
	var type_text=ini_read_string("a","event_type",0);
		if start_text !=0 && end_text!=0{
				var start_list=ds_list_create()
	var end_list=ds_list_create()
	var type_list=ds_list_create()
		ds_list_read(start_list,start_text)
	ds_list_read(end_list,end_text)
	ds_list_read(type_list,type_text)
	
	
			for (l=0;l<ds_list_size(start_list);l++)
		{
								var start=start_list[| l]
			var ending=end_list[| l]
			var type=type_list[| l]
			with(oGame){Create_New_Event(type,start,ending)}

		
		}
		ds_list_destroy(start_list)
		ds_list_destroy(end_list)
		ds_list_destroy(type_list)
		
		}
*/
	var list_text=ini_read_string("a","recipe_list","")
var all_recipies_list=ds_list_create()
var ing_text=""
if list_text!=""
{
	ds_list_read(all_recipies_list,list_text)
	for(i=0;i<ds_list_size(all_recipies_list);i++){
		var rec=all_recipies_list[| i];
		ing_text=ini_read_string("recipies", rec,"")
		if ing_text!=""{
			if is_undefined(Recipies_Map[? rec]){
				Recipies_Map[? rec]=ds_list_create()
			}
		ds_list_read(Recipies_Map[? rec] ,ing_text)
		}
	}
}

				var xx_list=ini_read_string("a","furn_x",0);
	var yy_list=ini_read_string("a","furn_y",0);
	var angle_list=ini_read_string("a","furn_type",0);
		if xx_list !=0 && yy_list!=0{
				var xx_list_real=ds_list_create()
	var yy_list_real=ds_list_create()
	var angle_list_real=ds_list_create()
		ds_list_read(xx_list_real,xx_list)
	ds_list_read(yy_list_real,yy_list)
	ds_list_read(angle_list_real,angle_list)
	
	
			for (l=0;l<ds_list_size(xx_list_real);l++)
		{
								grid_x=xx_list_real[| l]
			grid_y=yy_list_real[| l]
			angle_var=angle_list_real[| l]
			Create_Object(grid_x,grid_y,angle_var)

		
		}
		ds_list_destroy(xx_list_real)
		ds_list_destroy(yy_list_real)
		ds_list_destroy(angle_list_real)
		}
		
	//doors
		var x_list=ini_read_string("a","saved_doors_x",0);
	var y_list=ini_read_string("a","saved_doors_y",0);
			var xx_list=ini_read_string("a","saved_doors_xx",0);
	var yy_list=ini_read_string("a","saved_doors_yy",0);
	var angle_list=ini_read_string("a","saved_doors_angle",0);
	if x_list !=0 && y_list!=0{
	var x_list_real=ds_list_create()
	var y_list_real=ds_list_create()
	var xx_list_real=ds_list_create()
	var yy_list_real=ds_list_create()
	var angle_list_real=ds_list_create()
	ds_list_read(x_list_real,x_list)
	ds_list_read(y_list_real,y_list)
	ds_list_read(xx_list_real,xx_list)
	ds_list_read(yy_list_real,yy_list)
	ds_list_read(angle_list_real,angle_list)
		for (l=0;l<ds_list_size(x_list_real);l++)
		{
		xx=x_list_real[| l]
			yy=y_list_real[| l]
					grid_x=xx_list_real[| l]
			grid_y=yy_list_real[| l]
			angle_var=angle_list_real[| l]
			door=instance_create_depth(xx,yy,0,oDoor)
			door.grid_x=grid_x
				door.grid_y=grid_y
		door.angle=angle_var

		}
	}

	
	
	
	
	var x_list=ini_read_string("a","remove_tiles_list_x",0);
	var y_list=ini_read_string("a","remove_tiles_list_y",0);
	if x_list !=0 && y_list!=0{
	var x_list_real=ds_list_create()
	var y_list_real=ds_list_create()
	
	ds_list_read(x_list_real,x_list)
	ds_list_read(y_list_real,y_list)
	
	ds_list_read(Remove_Tiles_List_X,x_list)
	ds_list_read(Remove_Tiles_List_Y,y_list)	

		for (l=0;l<ds_list_size(x_list_real);l++)
		{
			grid_x=x_list_real[| l]
			grid_y=y_list_real[| l]
			with(oWall)
			{
				if xx=other.grid_x && yy=other.grid_y
				Delete_Wall(id)
			}
		}
	}

ini_close()
}
/*




if Game_Mode=game_mode.normal
Selected_Room=-1



var doors_x_map=ini_read_string("save","doors_x_map",0);
var doors_y_map=ini_read_string("save","doors_y_map",0);
var doors_flip_map=ini_read_string("save","doors_flip_map",0);


if doors_x_map!=0 && doors_y_map!=0 && doors_flip_map!=0
{

	var doors_map_x=ds_map_create();
	var doors_map_y=ds_map_create();
	var doors_map_flip=ds_map_create();
		ds_map_read(doors_map_x,doors_x_map)
		ds_map_read(doors_map_y,doors_y_map)
			ds_map_read(doors_map_flip,doors_flip_map)
		var the_door=ds_map_find_first(doors_map_x)
		
				//sm(ds_map_size(doors_map_x))
			for(i=0;i<ds_map_size(doors_map_x);i++)
			{
			//	sm(the_door)
				var the_door_x=ds_map_find_value(doors_map_x,the_door);
				var the_door_y=ds_map_find_value(doors_map_y,the_door);			
				var the_door_flip=ds_map_find_value(doors_map_flip,the_door);		
				
if the_door_flip=ang.hor{				
	//sm(the_door_x)
	var first_wall=Wall_Grid[# the_door_x,the_door_y];
if instance_exists(first_wall){
door=instance_create_depth(first_wall.x,first_wall.y,0,oDoor)
		door.angle=ang.hor	
		door.grid_x=the_door_x
		door.grid_y=the_door_y	
		
Delete_Wall(first_wall)
Delete_Wall(Wall_Grid[# the_door_x-1,the_door_y])
Delete_Wall(Wall_Grid[# the_door_x+1,the_door_y])
Delete_Wall(Wall_Grid[# the_door_x-2,the_door_y])
Delete_Wall(Wall_Grid[# the_door_x+2,the_door_y])
			
	}
}

if the_door_flip=ang.ver{				
	var first_wall=Wall_Grid[# the_door_x,the_door_y];
if instance_exists(first_wall){

		door=instance_create_depth(first_wall.x,first_wall.y,0,oDoor)
		door.angle=ang.hor	
		door.grid_x=the_door_x
		door.grid_y=the_door_y	
Delete_Wall(first_wall)
Delete_Wall(Wall_Grid[# the_door_x,the_door_y-1])
Delete_Wall(Wall_Grid[# the_door_x,the_door_y+1])
Delete_Wall(Wall_Grid[# the_door_x,the_door_y-2])
Delete_Wall(Wall_Grid[# the_door_x,the_door_y+2])
}
}		
						ds_map_find_next(doors_map_x,the_door)		
			}

}
}

ini_close()