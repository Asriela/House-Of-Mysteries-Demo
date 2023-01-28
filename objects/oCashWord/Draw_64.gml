/// @description Insert description here
// You can write your code in this editor

draw_set_font(fHandwritten_Small)
yy-=1
xx+=choose(.5,-0.5)
image_alpha-=0.005
if image_alpha<0
instance_destroy()
draw_set_alpha(image_alpha)
draw_set_color(c_black)
draw_text(xx+3,yy+3,st(cash_amount)+"$")

draw_set_color(c_white)
draw_text(xx,yy,st(cash_amount)+"$")

draw_set_alpha(1)


