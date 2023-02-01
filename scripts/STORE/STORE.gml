
   function Furniture_Button2(item,edit_mode_menu_x,edit_mode_menu_y,Object_Menu_Mode)
   {
	   var count=0
	    var col2=c_black
		if Object_Menu_Mode=1 || Object_Menu_Mode=3
		var count=Get_Furniture_Count(item)
		else
		if Object_Menu_Mode=2
				var count=Floor_Count_Map[? item]
		if count>0
		col2=c_old
		if Object_Menu_Mode=1 || Object_Menu_Mode=3
var item_name=Furniture_Map[? item][? furn.desc]
else
if Object_Menu_Mode=2
var item_name=Floor_Map[? item][? floor_detail.desc]
else
if Object_Menu_Mode=4
var item_name=Dishes_Map[? item][? dish.named]

var size=80
if count>0
var temp_item_placed=noone


var added_down=0
		if Object_Menu_Mode=1 || Object_Menu_Mode=3
		var sprite=asset_get_index("sObj_"+item);
		else
		if Object_Menu_Mode=2
		var sprite=asset_get_index(item) 
		else
		Object_Menu_Mode=4
		var sprite=asset_get_index("sDish_"+item) 
	//	draw_set_color(c_light_brown)
	//	draw_rectangle(edit_mode_menu_x+20-size/2,edit_mode_menu_y-size/2,edit_mode_menu_x+20+size/2,edit_mode_menu_y+size/2,0)

		    temp_item_placed = Button_Pressed(edit_mode_menu_x+20 , edit_mode_menu_y, size, size, sGUI_Back_Box, " ", col2, col2, Item_Being_Placed, item, 0, controls.left_click, 1, 0, 0);

        if (count>0 || Object_Menu_Mode=2 )&& temp_item_placed!=0 && temp_item_placed!=noone{
			//ss()
		Item_Being_Placed=temp_item_placed

		}
if temp_item_placed!=noone
Chosen_Object=1


draw_set_color(c_dark_brown)
draw_set_alpha(1)
//draw_rectangle(edit_mode_menu_x-20,edit_mode_menu_y-40,edit_mode_menu_x+60,edit_mode_menu_y-33+15,0)
		draw_set_color(c_dark_brown)
draw_set_font(f_Speak_Small)
		var the_scale=1
		if Over_Button_Id=1{
			
		Selected_Name=item_name
		//if Item_Being_Placed!=undefined
		//if Item_Being_Placed!=-4
				//sm(Item_Being_Placed)
draw_set_font(f_Speak_Small2)
		var the_scale=1.2;
		}


		draw_sprite_ext(sprite,0,edit_mode_menu_x+size/3-10,edit_mode_menu_y+10+added_down,the_scale,the_scale,0,c_white,1)
		
		if Object_Menu_Mode=1 || Object_Menu_Mode=3
		var class=Furniture_Map[? item][? furn.style1];
		else
		if  Object_Menu_Mode=2
		var class=Floor_Map[? item][? floor_detail.style];
		if Object_Menu_Mode!=3 && Object_Menu_Mode!=4
		var col=Get_Class_Color(class);
		else
		var col=c_style_dk_orange
				draw_set_color(col)
						if Object_Menu_Mode!=4
		draw_text(edit_mode_menu_x+53*the_scale,edit_mode_menu_y-33*the_scale,count)		
				
		Over_Button_Id=-1
		if Object_Menu_Mode!=3 && Object_Menu_Mode!=4{
draw_sprite_ext(sGUI_Elements_Small_Back,0,edit_mode_menu_x-13*the_scale,
edit_mode_menu_y-32*the_scale,the_scale,the_scale,0,c_white,1)

draw_sprite_ext(sGUI_Elements_Small,class,edit_mode_menu_x-13*the_scale,
edit_mode_menu_y-32*the_scale,the_scale,the_scale,0,c_white,1)
		}
		draw_sprite_ext(sGUI_Back_Box_Frame,0,edit_mode_menu_x+20 , edit_mode_menu_y,the_scale,the_scale,0,col,0.4)		
		if Object_Menu_Mode=1 || Object_Menu_Mode=3
var style_level=Furniture_Map[? item][? furn.style1_level]
else
if Object_Menu_Mode=2
var style_level=Floor_Map[? item][? floor_detail.style_level]
	if Object_Menu_Mode=1 || Object_Menu_Mode=2 || Object_Menu_Mode=3
		draw_text(edit_mode_menu_x+3*the_scale,edit_mode_menu_y-33*the_scale,style_level)
return temp_item_placed
   }
