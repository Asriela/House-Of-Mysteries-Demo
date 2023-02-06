//Local variables setup
var _u_pos = u_pos;
var _u_zz = u_zz;
var _u_str = u_str;
var _u_pos2 = u_pos2;
var _vb = vb;
var _vx = vx;
var _vy = vy;

//Shadow surface setup
if (!surface_exists(shad_surf)){
	shad_surf = surface_create(Surf_Width,Surf_Height);
}

matrix_set(matrix_world,matrix_build(-vx,-vy,0,0,0,0,1,1,1));
surface_set_target(shad_surf);
draw_clear_alpha(c_black,0);
with(obj_light){
	if floor_i_am_on=Floor{
	//Draw the shadows (AKA light blockers)
	gpu_set_blendmode_ext_sepalpha(bm_zero,bm_one,bm_one,bm_zero);
	shader_set(shd_shadow);
	shader_set_uniform_f(_u_pos2,x,y);
	vertex_submit(_vb,pr_trianglelist,-1);
	
	//Draw the Light
	gpu_set_blendmode_ext_sepalpha(bm_inv_dest_alpha,bm_one,bm_zero,bm_zero);
	shader_set(shd_light);
	shader_set_uniform_f(_u_pos,x,y);
	shader_set_uniform_f(_u_zz,size);
	shader_set_uniform_f(_u_str,str);
//	draw_sprite_ext(sCarry_Backpack,0,_vx,_vy,1,1,0,color,1)
//draw_set_color(color)
//draw_circle(_vx,_vy,20,0)
	draw_rectangle_color(_vx,_vy,_vx+Surf_Width,_vy+Surf_Height,color,color,color,color,0); //canvas for drawing the light
	}}
surface_reset_target();
matrix_set(matrix_world,matrix_build(0,0,0,0,0,0,1,1,1));


//Draw and blend the shadow surface to the application surface
gpu_set_blendmode_ext(bm_zero,bm_src_color);
shader_set(shd_shadsurf);
draw_surface_ext(shad_surf,vx,vy,1,1,0,c_white,World_Darkness);


//reset shader and blendmode 
shader_reset();
gpu_set_blendmode(bm_normal);