function Moving_Details(image_speeds,ani_type,do_move)
		{
if do_move
stop_walking=0
else
stop_walking=1
			if move_speed<0.01{
	image_speed=image_speeds
	animation_type=ani_type
	switch(ani_type){
				case "Collect":
		head_level=9;
		break;
		case "Sit":
		head_level=9;
		break;
		case "Stand":
		head_level=17;
		break;		
	}

	}
}