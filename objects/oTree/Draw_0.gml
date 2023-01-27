/// @description Insert description here
// You can write your code in this editor
image_xscale=1
image_yscale=1
draw_sprite_ext(sprite_index,image_index,x,y,1,1,0,c_white,image_alpha)

if image_alpha<1
image_alpha+=0.1

var ww, hh;
ww = sprite_get_bbox_left(sprite_index) - sprite_get_bbox_right(sprite_index);
hh = sprite_get_bbox_bottom(sprite_index) - sprite_get_bbox_top(sprite_index);

if collision_rectangle(x-ww/2,y-hh,x+ww/2,y,oCharacter,0,1)
image_alpha=0.2