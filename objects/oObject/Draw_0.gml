/// @description Insert description here
// You can write your code in this editor
if object_type="DoorPoint" exit;
draw_x=x
draw_y=y
sprite_index=asset_get_index("sObj_"+object_type)
if Held_Furniture=id
image_alpha=0.7
else
image_alpha=1
var val1=World_Speed/2.5;
//image_speed=choose(val1,val1,val1,val1,-val1,-val1,-val1,val1*1.2,-val1*1.2)
if animation_type=ani_type.random{
if choose(0,0,0,0,0,0,1)
image_index=rr(0,image_number)
}
else
if animation_type=ani_type.reverse
{
	if animate_forward=1 && image_index<image_number-1
	image_index+=val1
	else
	animate_forward=0
	
	if animate_forward=0 && image_index>0//<image_number-1
	image_index-=val1
}
//if choose(0,0,0,0,0,0,0,0,0,0,0,1)
//image_index=random(image_number)
draw_sprite_ext(sprite_index,image_index,x,y,1,1,0,c_white,image_alpha)
//draw_text(x,y,st(grid_x)+"_"+st(grid_y))

var _col = c_white
var _scl = 1
if outline{

outline_draw_sprite_ext(sprite_index, 0, x, y, _scl, _scl, 0, -1, 1, 1, c_white, 1, 0.9, 1, 0.8, true)

}

outline=0

if Dev_Help[? dev_help.access_object_room_data]
if !is_undefined(my_room)
draw_text(x,y, my_room)
/*
draw_set_color(c_red)
if in_use
draw_circle(x,y,20,1)
draw_set_color(c_white)

