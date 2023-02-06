//Creates Quad with two triangles. Used to make the shadows. 
//Z coordinate is used as a flag to determine if the vertex will be repositioned in the shader
function Quad(_vb,_x1,_y1,_x2,_y2){
    //Upper triangle
    vertex_position_3d(_vb,_x1,_y1,0);
    vertex_position_3d(_vb,_x1,_y1,1); //repositioned vertex
    vertex_position_3d(_vb,_x2,_y2,0);
    
    //Lower Triangle
   vertex_position_3d(_vb,_x1,_y1,1); //repositioned vertex
  vertex_position_3d(_vb,_x2,_y2,0);
   vertex_position_3d(_vb,_x2,_y2,1); //repositioned vertex
}


//Construct the vertex buffer with every wall
//Instead of using the four edges as the walls, we use the diagonals instead (Optimization)
vertex_begin(vb,vf);
var _vb = vb;
var avoid=mWall_0
	switch(Floor)
	{
		case 1:  avoid=mWall_1 break;
		case 2:  avoid=mWall_2 break;
		case 3:  avoid=mWall_3 break;
	}
with(avoid){
	Quad(_vb,x,y,x+sprite_width,y+sprite_height); //Negative Slope Diagonal Wall
	Quad(_vb,x+sprite_width,y,x,y+sprite_height); //Positive Slope Diagonal Wall
}
vertex_end(vb);


//view movement controls
extra_y += (keyboard_check(ord("J"))-keyboard_check(ord("U")))*4; 
extra_x += (keyboard_check(ord("K"))-keyboard_check(ord("H")))*4; 



if Edit_Mode=edit.none || Edit_Mode=edit.food_prep{
camera_set_view_size(view_camera[0],View_Width/3,View_Height/3)
vx=MultiTrackCamera.x-View_Width/6+extra_x
vy=MultiTrackCamera.y-View_Height/6+extra_y
}
else
if Edit_Mode=edit.recipies{
		vx=MultiTrackCamera.x-View_Width/2+extra_x
vy=MultiTrackCamera.y-View_Height/2+extra_y
camera_set_view_size(view_camera[0],View_Width,View_Height)
}
else{
	vx=MultiTrackCamera.x-View_Width/4+extra_x
vy=MultiTrackCamera.y-View_Height/4+extra_y
camera_set_view_size(view_camera[0],View_Width/2,View_Height/2)
}
camera_set_view_pos(view_camera[0],vx,vy);
//var vm = matrix_build_lookat(x,y,-10, x,y,0,0,1,0);

//add lights by left clicking. For testing purposes
if (keyboard_check_pressed(ord("T"))){
		instance_create_depth(mouse_x,mouse_y,depth,obj_light);	
}

