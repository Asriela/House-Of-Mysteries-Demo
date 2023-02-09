function Character_Draw(){
	var dir_text="";
	x_scale=1
	
	if is_player
	{
		switch(Player_View_Direction)
		{
			case 90: dir_text="_Down"; break;
			case 270: dir_text="_Up"; break;
			case 180: dir_text="_Side_Walk";x_scale=-1 break;
			case 0: dir_text="_Side_Walk"; break;
		}
		
		if last_x!=x
		image_speed=1
		else
		if last_y!=y
		image_speed=0.1
		else
		image_speed=0
		

	}
	else
	if is_tourist
	{
				if last_y=y
				dir_text="_Idle"
				else
				dir_text="_Walk"
				if last_x!=x{
				if last_x>x
				x_scale=-1
				else
				x_scale=1
				}
	}
	else
	
	{
	
	
		if last_y<y
	{
	dir_text="_Down"	
	}
		if last_y>y
	{
	dir_text="_Up"	
	}	
		if last_y=y
	{
	dir_text="_Idle"	
	}	
		

//sm("sChar_"+character_type+dir_text)
	}
last_y=y
last_x=x


	if running_animation=0{
		if action_animation=noone{
		var sprite=asset_get_index("sChar_"+character_type+dir_text);		
		animation_name="running animation:  \nsChar_"+character_type+dir_text
		}
		else{
			var sprite=action_animation
			animation_name="action animation:  \n"+st(action_animation)
		}
			
		sprite_index=sprite
		if is_player=0{
			if is_tourist=0{
		if animate<0{
 image_index=random(image_number)///+=speed_we_moved/100;
 if dir_text="_Idle"
 animate=rr(10,100)
 else
  animate=10
		}
		animate-=1*World_Speed
		image_speed=0
			}
			else
			image_speed=1


		}
		
	}

		var x_position=my_House.x+my_x
		var y_position=my_House.y+my_y
		draw_x=x
		draw_y=y
	//	x=x_position;
//	y=y_position;
		my_scale=1
		
		/*
		switch(pointing_direction)
		{
			case dir.left:
			var x_scale=-my_scale;
			break;
			case dir.right:
			var x_scale=my_scale;
			break;
			case dir.up:
			var x_scale=my_scale;
			var sprite=asset_get_index("sChar_Torso_"+torso_clothes+"_Up");			
			break;
		}*/
		/*if is_player{
				if did_move
		image_speed=0.1
		else
		image_speed=0
		}
*/		
if can_draw
draw_sprite_ext(sprite_index,image_index,x,y-stairs_y,x_scale*my_scale,my_scale,image_angle,c_white,1)
if selected && can_draw
outline_draw_sprite_ext(sprite_index, image_index, x, y-stairs_y, x_scale*my_scale, my_scale, image_angle,c_white,1, 1,c_white,0.9, 0.7, 1,1, false)

//draw_text(x,y,st(grid_x)+"_"+st(grid_y))
if is_player=0 && is_tourist=0{
	var x_dif=0;
	if busy_sleeping{
	var height=20
	x_dif-=(my_height/2+5)
	}
	else
		var height=my_height;
	var col=merge_color(c_my_red,c_my_green,(my_mood)/100)
	if can_draw
draw_sprite_ext(my_emotion,0,x+x_dif,y-height,0.5,0.5,0,col,1)
}
else
if Get_Variable("finnished_shopping")=1
{
			var height=my_height;
			if can_draw
	draw_sprite_ext(sGUI_Finnished_Shopping,0,x,y-height,0.5,0.5,0,c_white,1)
}

}


