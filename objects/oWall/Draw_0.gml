/// @description Insert description here
// You can write your code in this editor
if floor_i_am_on!=Floor
can_draw=0
else
can_draw=1

width=20
height=31
//draw_sprite_ext(sRoomColor_Tile,0,x,y+height/2,2,2,0,room_color[| dir.down],1)
//draw_sprite_ext(sRoomColor_Tile,0,x,y-height,2,2,0,room_color[| dir.up],1)
//draw_sprite_ext(sRoomColor_Tile,0,x-width,y,2,2,0,room_color[| dir.left],1)
//draw_sprite_ext(sRoomColor_Tile,0,x+width,y,2,2,0,room_color[| dir.right],1)
if can_draw
draw_sprite_ext(sWall_Down,0,x,y,1,1,0,c_white,1)


//draw_sprite_ext(sWall_Top,image_index,x,y,2,2,0,my_color,1)
