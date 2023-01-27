// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Draw_Food_Prep_Gui(){
draw_sprite(sGUI_FoodBack,0,View_Width/2,View_Height/2)
draw_sprite_ext(sIng_Bowl,0,View_Width/2,View_Height/2,2,2,0,c_white,1)

}
function Mouse_In_Rectangle(x_start,y_start,width,height)
{
		var ret=0;
	if point_in_rectangle(mouse_x,mouse_y,x_start-width/2,y_start-height/2,x_start+width/2,y_start+height/2)
	ret=1
	return ret;
}
function Gui_Mouse_In_Rectangle(x_start,y_start,width,height)
{
	var ret=0;
	if point_in_rectangle(device_mouse_x_to_gui(0),device_mouse_y_to_gui(0),x_start,y_start,x_start+width,y_start+height)
	ret=1
	return ret;
}
function Ingredient_Enum_To_Text(item){
	var ret=noone;
	switch(item)
	{
		case ingredient.tomato: ret="Tomato" break;
		case ingredient.cabbage: ret="Cabbage" break;
		case ingredient.blue_crystal: ret="Blue_Crystal" break;
		case ingredient.carrot: ret="Carrot" break;
		case ingredient.fly: ret="Fly" break;
		case ingredient.white_mushroom: ret="White_Mushroom" break;
		case ingredient.blue_mushroom: ret="Blue_Mushroom" break;
		case ingredient.worm: ret="Worm" break;

	}
	return ret;
}

