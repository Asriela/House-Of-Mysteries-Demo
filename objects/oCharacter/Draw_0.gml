	/// @description Insert description here
// You can write your code in this editor
if floor_i_am_on!=Floor
visible=0
else
visible=1

added_depth=0//-250
if inside || collision_rectangle(House_Start_X,House_Start_Y,House_Start_X+Tile_Width*100,House_Start_Y+Tile_Height*100,id,0,0)
added_depth=-690

if our_animation_name="Sleep"
added_depth-=200
depth=-y+added_depth
Character_Draw()
if Visualize[? vis.path]
with(lead){
	if p_path!=-1
draw_path(p_path,path_start_x,path_start_y,0)
}
draw_set_font(f_small)
//draw_text(x,y,social_tension)

if Visualize[? vis.states]=1{
	draw_set_font(f_tiny)
draw_text(x,y,Event_Enum_To_String(my_current_event[? my_event.event]))
}

if Visualize[? vis.move_to_point]=1{
	draw_set_color(c_red)
	draw_circle(target_x,target_y,2,1)

}


