//draw_sprite_ext(sprite_index,image_index,x,y,1,1,0,c_white,1)
// You can write your code in this editor

if Edit_Mode=edit.room{
draw_rectangle(House_Start_X,House_Start_Y,House_Start_X+Tile_Width*100,House_Start_Y+Tile_Height*100,1)
var x_start=House_Start_X+Bigger_Tile_Width*1.5
var y_start=House_Start_Y+Bigger_Tile_Width*1.5
draw_set_color(c_my_aqua)
draw_set_alpha(0.2)
for(ix=0;ix<100/6;ix++)
for(iy=0;iy<100/6;iy++)
{
	draw_rectangle(x_start+ix*Bigger_Tile_Width,y_start+iy*Bigger_Tile_Width,x_start+(ix+1)*Bigger_Tile_Width-1,y_start+(iy+1)*Bigger_Tile_Width-1,1)
//	draw_rectangle(x_start+ix*Bigger_Tile_Width+1,y_start+iy*Bigger_Tile_Width+1,x_start+(ix+1)*Bigger_Tile_Width-1,y_start+(iy+1)*Bigger_Tile_Width-1,1)
}
draw_set_alpha(1)
}


House_Draw()
draw_set_alpha(1)


//draw_text(mouse_x,mouse_y,st(House_Start_X)+" "+st(mouse_x))