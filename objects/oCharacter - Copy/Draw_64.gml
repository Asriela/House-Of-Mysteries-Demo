/// @description Insert description here
// You can write your code in this editor

if show_tip!=""{
draw_set_font(fHandwritten)

var length=string_width(show_tip)/2+40
var width=string_height(show_tip)/2+40
draw_set_color(c_black)
var sx=View_Width/2//gui_x
var sy=View_Height-100//gui_y
draw_sprite(sGui_Tip_Bar,DayTime,sx,sy)
//draw_rectangle(sx-length,sy-width,sx+length,sy+width,0)
draw_set_color(c_white)
draw_set_halign(fa_center)
draw_text(sx,sy,show_tip)

}




busy_sleeping=0