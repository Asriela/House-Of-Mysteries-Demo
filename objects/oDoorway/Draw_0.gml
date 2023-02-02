/// @description Insert description here
// You can write your code in this editor
if Visualize[? vis.doorways]=1{
if has_bag
draw_set_color(c_lime)
else
draw_set_color(c_red)

if Rooms_Type_Map[? my_room]=room_type.bedroom
draw_circle(x,y,5,0)
}