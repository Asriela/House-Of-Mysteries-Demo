// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Create_Object(xx,yy,type, var_floor){
 obj=instance_create_depth(xx,yy,1,oObject)
 obj.object_type=type
 obj.grid_x=xx
 obj.grid_y=yy
 obj.floor_i_am_on=var_floor
 		var x_position=House_Start_X+xx*Tile_Width;
		var y_position=House_Start_Y+yy*Tile_Height;
obj.x=x_position;
obj.y=y_position;
if !is_undefined(Furniture_Map[? type]){
obj.object_class=Furniture_Map[? type][? furn.class]
if obj.object_class=obj_class.cash_register
{
	obj.my_stairs_mask=instance_create(x,y,mTill)
	obj.my_stairs_mask.owner=obj
}
if obj.object_class=obj_class.work_bench
{
	obj.my_stairs_mask=instance_create(x,y,mCrafting_Station)
	obj.my_stairs_mask.owner=obj
}
if obj.object_class=obj_class.food_prep
{
	obj.my_stairs_mask=instance_create(x,y,mFood_Prep)
	obj.my_stairs_mask.owner=obj
}
if obj.object_class=obj_class.staircase
{
	obj.my_stairs_mask=instance_create(x,y,oStairs)
	obj.my_stairs_mask.owner=obj
}
if obj.object_class=obj_class.monster_spawn
{
	Monster_Entrance_X=xx
	Monster_Entrance_Y=yy
}
if obj.object_class=obj_class.tourist_spawn
{

		Tourist_Spawn_X=xx
		Tourist_Spawn_Y=yy
		
		Entrance_X=x_position
		Entrance_Y=y_position
		Entrance_Placed=1
	with(oHouse){
	  player.x=Entrance_X
 player.y=Entrance_Y
	}
	//	ss()
}

if is_undefined(Furniture_Map[? type][? furn.animation_type])
obj.animation_type=ani_type.random
else
obj.animation_type=Furniture_Map[? type][? furn.animation_type]
}
else
obj.animation_type=ani_type.random//Furniture_Map[? type][? furn.animation_type]





 return obj;
}

function Create_Structure_Tile(xx,yy,type){
 obj=instance_create_depth(xx,yy,1,oStructure_Tile)
 obj.block_type=type
 obj.grid_x=xx
 obj.grid_y=yy
 if type=building.dirt
 Available_Building_Space_Grid[# xx,yy]=1
 else
  Available_Building_Space_Grid[# xx,yy]=-1
 		var x_position=oHouse.House_Start_X+xx*Tile_Width;
		var y_position=oHouse.House_Start_Y+yy*Tile_Height;
obj.x=x_position;
obj.y=y_position;
 return obj;
}