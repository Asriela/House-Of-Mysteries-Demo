/// @description Insert description here
// You can write your code in this editor
draw_set_color(c_white)
draw_set_font(f_Events_Small)
draw_set_alpha(alpha)
alpha-=fade_speed*World_Speed
draw_text(x,y,word)
if alpha<0
instance_destroy()

if up
{
	y-=0.2
}
else
{
	y+=0.2
}


