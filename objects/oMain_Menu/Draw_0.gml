/// @description Insert description here
// You can write your code in this editor
globalvar Has_Pressed_Button_This_Step;
Has_Pressed_Button_This_Step=0

draw_set_color(c_white)
draw_set_font(f_Info)
draw_set_halign(fa_left)
draw_text(10,room_height-20,"contact: summerairfeeling@gmail.com")
draw_set_font(f_Main_Menu)
var start_x=200
var start_y=room_height/2-140
if Button_Pressed(start_x,start_y,300,100,0,"Start",c_white,c_navy,0,0,1,controls.left_click,0,shape.square,0){
	room_goto_next()
}
if Button_Pressed(start_x,start_y+140,300,100,0,"Exit",c_white,c_navy,0,0,1,controls.left_click,0,shape.square,0){
game_end()
}