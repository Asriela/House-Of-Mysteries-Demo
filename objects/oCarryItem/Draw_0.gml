/// @description Insert description here
// You can write your code in this editor


if Floor=floor_i_am_on{
draw_self()

var _col = c_white
var _scl = 2
if holder!=noone{
	outline_draw_sprite_ext(sprite_index, 0, x, y, _scl, _scl, 0, -1, 1, 1,c_aqua , 1, 0.9, 1, 0.8, true)
}
else
if outline=1
outline_draw_sprite_ext(sprite_index, 0, x, y, _scl, _scl, 0, -1, 1, 1, c_white, 1, 0.9, 1, 0.8, true)
outline=0
}