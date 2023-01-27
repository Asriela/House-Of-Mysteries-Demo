/// @description Insert description here
// You can write your code in this editor




if draw_sprite_index=noone
draw_self()
else
draw_sprite_ext(draw_sprite_index,0,x,y,image_xscale,image_yscale,0,c_white,1)

start_x=x-sprite_width/2-300-32
start_y=y-sprite_height/2-300+30-100+100
if Obj_Food_Back=id
with(oGame){
	if Sub_Menu="Ingredient"
						if Selected_Recipe!=noone{

					Calculate_Recipe_Values(Recipies_Map[? Selected_Recipe])
					draw_set_font(fStoryLarge)
					draw_set_color(c_white)
					draw_text(other.x,other.y+130,Selected_Recipe)
draw_set_font(fStandard)
					//DRAW UI
					bars=recipe_values.physical_etheric+3;

					draw_sprite_ext(sGUI_Select_Rec_Value,bars,other.start_x+126,other.start_y+52,1,1,0,c_white,1)
					bars=recipe_values.soft_hard+3;
					draw_sprite_ext(sGUI_Select_Rec_Value,bars,other.start_x+331,other.start_y+52,1,1,0,c_white,1)
					bars=recipe_values.bitter_sweet+3;
					draw_sprite_ext(sGUI_Select_Rec_Value,bars,other.start_x+492,other.start_y+52,1,1,0,c_white,1)
					bars=recipe_values.veg_meat+3;
					draw_sprite_ext(sGUI_Select_Rec_Value,bars,other.start_x+697,other.start_y+52,1,1,0,c_white,1)		
						}
}