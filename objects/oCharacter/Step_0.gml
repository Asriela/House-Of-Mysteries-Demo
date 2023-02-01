/// @description Insert description here
// You can write your code in this editor
Get_Gui_X_Y()
if is_player && Chosen_Tutorial=tu.social{
	tu_count++
		
	if tu_count>700{

World_Minutes=61
World_Hour=20
	}

}
show_tip=""

if is_player=0 && is_tourist{
	if Get_Variable("leave")=1
	instance_destroy()
}


if is_player && near_cash_register && near_tourist && Get_Variable_From(near_tourist,"finnished_shopping"){

show_tip="press space to ring up customer"
if keyboard_check_pressed(vk_space)
{
	var object=Get_Variable_From(near_tourist,"item_to_buy")
	var price=Furniture_Map[? object][? furn.price]
	Cash+=price
	Set_Variable_Of(near_tourist,"paid",1)

	Set_Variable_Of(near_tourist,"finnished_shopping",0)		
	var cash=instance_create_depth(x,y,-7000,oCashWord)
	cash.cash_amount=price
	cash.xx=gui_x
	cash.yy=gui_y
}

}
near_tourist=-1

selected=0
	if point_in_rectangle(mouse_x,mouse_y,x-10,y-50,x+10,y){
		selected=1
	}
if is_player=0 && selected && Edit_Mode!=edit.food_prep && Edit_Mode!=edit.trade
&& Edit_Mode!=edit.recipies && Edit_Mode!=edit.speak
{

		if mouse_check_button_released(mb_left) && Edit_Mode=edit.none{

Open_Dialogue(id)
	

		
	}
}


if point_in_rectangle(mouse_x,mouse_y,x-40,y-50,x+10,y) && Dev_Help[? dev_help.trigger_emotions]=1 
{
Slow_Down=1
}
if leave=1
{
	if Edit_Mode!=edit.speak
	instance_destroy(id)
}


	grid_x=floor(floor((x-(House_Start_X+Bigger_Tile_Width/2))/Bigger_Tile_Width)*6+6);
	
	grid_y=floor(floor((y-(House_Start_Y+Bigger_Tile_Height/2))/Bigger_Tile_Height)*6+6);
	room_im_in=Rooms_Grid[# grid_x,grid_y]
	



if !is_undefined(room_im_in) && room_im_in!=noone{
	
	room_type_im_in=Room_Type_Map[? room_im_in]
	inside=1
}
	else{
		room_im_in=noone
		room_type_im_in=noone
		inside=0
	}
//>>>>>>   🎮   <<<<<<
if is_player>0
	{
		
Player_Object=id
	Character_Player_Controls()
	 if !(Edit_Mode=edit.room || Edit_Mode=edit.object) 
	Character_Move_Player()

if instance_exists(oIngredient){
var the_ingredient= instance_nearest(x,y,oIngredient)
if point_distance(x,y,the_ingredient.x,the_ingredient.y)<20
{
	the_ingredient.outline=1
		show_tip="Press space to pick up ingredient"
	if keyboard_check_pressed(vk_space)
	{
		if Chosen_Tutorial=tu.get_ingredients && get_ingredient!=-10{
			get_ingredient++
			
			if get_ingredient>2
			{
				get_ingredient=-10

			}
		}
		if is_undefined(ds_map_find_value(backpack_map,the_ingredient.kind)) 
		
		backpack_map[? the_ingredient.kind]=1
		else
				backpack_map[? the_ingredient.kind]++
		instance_destroy(the_ingredient)

	}
}}
//CARRY BOWL
/*
if Get_Variable(state_var.carrying_item )!=noone{

	nearest_interaction= Get_Closest_Character_With(id,state_var.carrying_item ,noone)


		if nearest_interaction!=-1{
	//sm(nearest_interaction)
	if point_distance(x,y,nearest_interaction.x,nearest_interaction.y)<40
{
	//ss()
	nearest_interaction.selected=1
	show_tip="Press space to give bowl"
	if keyboard_check_pressed(vk_space){
		//pass on plate to person if they are at the table
		if nearest_interaction.temp_state_variables_map[? "at_table"]
{

if Chosen_Tutorial=tu.give_food {
	Chosen_Tutorial=tu.social 


	}
		Give_Variable(id,nearest_interaction,state_var.carrying_item)
		var item=Get_Variable(state_var.carrying_item)
		item.holder=nearest_interaction


	Set_Variable(state_var.carrying_item,noone)

}
	}
}
else
	nearest_interaction=noone

	
		}
}
*/
if Edit_Mode!=edit.food_prep
interacting_with=noone
if interacting_with!=noone
	if point_distance(x,y,interacting_with.x,interacting_with.y)>70{
	interacting_with=noone
	Edit_Mode=edit.none
	}
	//MAKE FOOD
if instance_number(oInteractable)>0
{

	if interacting_with=noone{
		
	nearest_interaction= instance_nearest(x,y,oInteractable)
		
	//sm(nearest_interaction)
	if point_distance(x,y,nearest_interaction.x,nearest_interaction.y)>40
	nearest_interaction=noone
	else{
		if nearest_interaction.owner.object_class=obj_class.food_prep
				show_tip="Press space to prepare food"
				
					if nearest_interaction.owner.object_class=obj_class.work_bench
				show_tip="Press space to craft merch"
				
									if nearest_interaction.owner.object_class=obj_class.tray{
										
									if Get_Variable(state_var.carrying_item)!=noone
				show_tip="Press space to place dish in tray"
									}
				
	if keyboard_check_pressed(vk_space){
	interacting_with=nearest_interaction.owner

//	ss()
	Do_Object_Interaction(id,interacting_with)
	}}
	if interacting_with!=noone
	if point_distance(x,y,interacting_with.x,interacting_with.y)>40
	interacting_with=noone

	}
	
	
		/*	if nearest_interaction!=noone &&instance_exists(nearest_interaction) && !is_undefined(nearest_interaction.owner){
		//sm(nearest_interaction)
	nearest_interaction.owner.outline=1
}*/

}

//BAG
//if carry items exist
if instance_number(oBag_Mask)>0
{
	//find nearest

		var nearest_bag= instance_nearest(x,y,oBag_Mask).owner


if point_distance(x,y,nearest_bag.x,nearest_bag.y)<20 
{

	
	if nearest_interaction=noone
	nearest_bag.outline=1
	show_tip="Press space to pick up guest luggage to take to their room"
	if keyboard_check_pressed(vk_space)
	{
		//not carrying anything yet so pick up the bag
			if carrying_item=noone
			{
					carrying_item=nearest_bag
					nearest_bag.holder=id	
			}
			else//we are carrying so put down bag
			{
				carrying_item.room_im_in=room_im_in
				carrying_item.room_type_im_in=room_type_im_in
				nearest_bag.holder=noone
				carrying_item=noone
				nearest_bag=noone
				
			}

	}
}
}
	//camera_set_view_target(view_camera[0], id); 

	}
	

//>>>>>>   🧠   <<<<<<
else
	{

//mp_grid_path(House_Path_Grid,path,grid_x,grid_y,goal_grid_x,goal_grid_y,1)
		Perform_Runs(id)
		if start_thinking
		Run_State(id)
	
		Perform_Quest()
		Run_Emotions()
		Run_Emotion_Actions()
		Run_Passive_Actions()
	
		
}
