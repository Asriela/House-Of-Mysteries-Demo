/// @description Insert description here
// You can write your code in this editor
switch(block_type){
	case building.dirt:
	sprite_index=sBlockDirt;
	break;
	case building.grass:
	sprite_index=sBlockGrass;
	break;
}
draw_sprite_ext(sprite_index,image_index,x,y,2,2,0,c_white,1)

