/// @description Insert description here
// You can write your code in this editor
switch(object_class)
{
	case obj_class.bed:

	object_group="Bed"
	break;
}

//get closest table
if flag=0
{
	flag=1
if is_undefined(Placed_Map[? object_class])
Placed_Map[? object_class]=1
else
	Placed_Map[? object_class]++

}



var ret=noone;
	var closest=900000;
if object_class=obj_class.chair{
	with(oObject)
	{
		if id!=other && object_class=obj_class.dining_table{// && Get_Variable(variable)=value{
			//ss()
			var dis= point_distance(other.x,other.y,x,y)
		if dis<closest{
			closest=dis
			ret=id

		}
		}
	}
closest_table=ret;
if exists(closest_table){
var direction_to_table=point_direction(x,y,closest_table.x,closest_table.y);
if direction_to_table>0 && direction_to_table<180
facing_direction="Up"
else
facing_direction="Down"
}
}

depth=-y-700
if object_class=obj_class.floor_decor
depth=-y-610
else
depth=-y-700

if object_class=obj_class.dining_table
depth=-y-700

if object_class=obj_class.shelf_decor || object_class=obj_class.cash_register || 
object_class=obj_class.merch
depth=-y-720
if object_class=obj_class.storage
depth=-y-700

if object_class=obj_class.light
depth=-y-723

if first=1{
	if object_class=obj_class.food_prep
	{
		//ss()
		interactable=instance_create_depth(x,y,0,oInteractable)
		interactable.owner=id
	}
my_room=Rooms_Grid[# grid_x,grid_y]
ds_list_add(Furn_List_X,grid_x)
ds_list_add(Furn_List_Y,grid_y)
ds_list_add(Furn_List_Type,object_type)
ds_list_add(Furn_List_Id,Furn_Id_Count)
list_id=Furn_Id_Count
Furn_Id_Count++
first=0
Add_Object_To_Room(id,my_room,object_class)
}

if Held_Furniture=id{
	grid_x=mouse_small_grid_x+1
		grid_y=mouse_small_grid_y+1
 		var x_position=House_Start_X+grid_x*Tile_Width;
		var y_position=House_Start_Y+grid_y*Tile_Height;
x=x_position;
y=y_position;		



}




	if Edit_Mode=edit.object
if  Item_Being_Placed=noone && Cant_Pickup=0{
	

if Held_Furniture=noone{
	


	if position_meeting(mouse_x,mouse_y,id){
	mark=1
	
if Chosen_To_Pick_Up=noone || Chosen_To_Pick_Up.depth>depth{
Chosen_To_Pick_Up=id

}
	

}
}

}