/// @description Insert description here
// You can write your code in this editor

draw_self()

var _col = c_white
var _scl = 2
if outline=1
outline_draw_sprite_ext(sprite_index, 0, x, y, _scl, _scl, 0, -1, 1, 1, _col, 1, 0.9, 1, 0.8, true)
outline=0
