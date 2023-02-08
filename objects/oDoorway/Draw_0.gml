/// @description Insert description here
// You can write your code in this editor
if Floor=floor_i_am_on
if Visualize[? vis.doorways]=1{
if has_bag
draw_set_color(c_lime)
else
draw_set_color(c_red)

//if Rooms_Type_Map[? my_room]=room_type.bedroom
draw_set_alpha(0.3)
draw_circle(x,y,5,0)
draw_set_alpha(1)
draw_set_color(c_black)

draw_text(x,y,st(floor_i_am_on))
}