function Game_Enums(){
	enum need{
		none,
		sleep,
		eat,
		social,
		hygene
	}
	enum merch_type{
		stations,
		bottled,
		statue,
		clothing
		
	}
	enum obj_class{
		none, 
		bed,
		tourist_spawn,
		cash_register,
		storage,
		doorway,
		food_prep,
		chair,
		dining_table,
		floor_decor,
		standing_decor,
		hanging_decor,
		shelf_decor,
		light,
		doorway_point
	}
	enum start_state{
		first_char_has_room,
		character_spawns_at
	}
	enum action{
		none,
		talk_to,
		avoid
	}
	enum talk_menu{
		news,
		up_to,
		main,
		question,
		question_people,
		question_things,
		statement,
		statement_people,
		statement_things,
		statement_feelings,
		instruct,
		instruct_to_who
	}
	enum ing_value_type{
		soft_hard,
		veg_meat,
		physical_etheric,
		bitter_sweet
	}
	enum con{
		state_data,
		show_objects_room_data
	}
	enum con_item{
		prime_id,
		secondary_id
	}
	enum char_dev_menu{
		emotions
	}
	enum dev_help{
		auto_book_in,
		immediate_quest,
		access_object_room_data,
		auto_accept_guests,
		trigger_emotions
	
	}
	enum carry_item_type{
		bag
	}
	enum vis{
		path,
		console,
		grid,
		grid_numbers,
		states,
		needs,
		doorways
	}
	enum gui{
		console,
		recipe
	}
enum dir
{
	left,
	right,
	up,
	down
}
enum ang
{
	hor,
	ver}
enum tile_details
{
	type,
	frame,
	room_id

}
enum menu_mode
{
	no_menu,
	talk_menu,
	game_menu,
	call_someone_menu
	
}
enum directionType
{
	up,
	down,
	left,
	right
}
enum shape{
	square,
	circle
	
}
enum controls{
	left_click,
	right_click
}
enum my_event{
	event,
	room
}
enum ingredient
{
	cabbage,
	tomato,
	carrot,
	fly,
	worm,
	white_mushroom,
	blue_mushroom,
	blue_crystal
}
enum event
{
	has_no_room,
	undefined,
	sleep,
	eat,
	drink,
	read,
	leave,
	none
}
enum room_properties
{
	type
	,number
}
enum tile_type
{
	none,
	floor,
	wall,
	door
}

enum memory_detail{
	emotion,
	memory_about,
	memory_secrecy,
	memory_word,
	news_memory,
	memory_talked_about,
	shared_with
}
enum news_detail{
	news_text,
	news_tag_array
}
enum memory_people{
	wogs,
	hares,
	mages,
	pookas,
	golums,
	gnomes,
	toads,
	vampires,
	cats

	
}
enum memory_things{
		the_event,
		omes,
		paw_unity
		
}
enum mem_secrecy{
	darkest_secret,//-3
	very_secret,//-2
	secret,//-1
	personal,//0
	if_i_dont_hate_you,//1
	will_share//2
	//1
	
}
enum memory_feeling{
	good,
	loyalty,
	bad,
	scared,
	in_love,
	joyous,
	hate
}
enum mem_type{
	people,
	things
}
enum event_detail{
	span,
	start,
	ending,
	kind,
	characters,
	lane
	
}
enum emotion{
	custom,
	neutral,
	sad,
	worried,
	happy,
	in_love,
	angry,
	frustrated,
	fearful
}
enum guest_detail{

	name,
		vip,
	cash,
	prefix,
	pronoun,
	pronoun2,
	element,
	type,
	sprite,
	body_height,
	noise_resistance,
	stay_length_days,
	stay_length,
	up_to,
	introduction,
	has_arrive_panel,
	has_leave_panel,
	speak_on_arrival,
	satisfaction_map,
	openness,
	impression_of_player,
	resistance_to_open,
	visual_description,
	needs_list,
	people_memories_map,
	things_memories_map,
	opinions_list,
	story_goals_list,
	news_list,
	scripted_people_memories_map,
	scripted_things_memories_map,
	bag,
	portrait,
	phy_eth_love_high,
	phy_eth_love_low,
	phy_eth_like_high,
	phy_eth_like_low,
	phy_eth_dislike_high,
	phy_eth_dislike_low,
	phy_eth_hate_high,
	phy_eth_hate_low,
	soft_hard_love_high,
	soft_hard_love_low,
	soft_hard_like_high,
	soft_hard_like_low,
	soft_hard_dislike_high,
	soft_hard_dislike_low,
	soft_hard_hate_high,
	soft_hard_hate_low,
	bitter_sweet_love_high,
	bitter_sweet_love_low,
	bitter_sweet_like_high,
	bitter_sweet_like_low,
	bitter_sweet_dislike_high,
	bitter_sweet_dislike_low,
	bitter_sweet_hate_high,
	bitter_sweet_hate_low,
	veg_meat_love_high,
	veg_meat_love_low,
	starting_emotion,
	starting_mood,
	our_needs
}
enum class_pref{
	pos,
	neg
}
enum floor_detail{
	style,
	style_level,
	desc
}
enum object_menu{
	none,
	furniture,
	floors,
	merchanise
}
enum furn_style{
	none,
	lodge,
	arcane,
	wild,
	regal,
	sci_fi
}
enum ani_type{
	random,
	reverse,
	loop
}
enum furn{
	named,
	desc,
	race,
	price,
	level,
	decor_points,
	style1,
	style1_level,
	style2_level,
	style2,
	class,
	light_color_1,
	light_color_2,
	light_brightness,
	light_instablility,
	light_strength,
	light_radius,
	light_direction,
	start_y,
	start_x,
	xsize,
	ysize,
	animation_type,
	is_merch
	
}
enum guest_need{
	rest,
	food,
	decor,
	social,
	drink,
	read,
	music,
	study,
	summon,
	go_wild,
	dance,
	mood
	
}
enum state_var{
	carrying_item
}
enum game_mode{
	quick,
		no_save,
			normal,
	no_loading,
block_out,

	dev
}

enum room_type
{
none,
	bedroom,
	hallway,
	dining,
	drinking,
	kitchen,
	reading,
	door,
	gift_shop
	
}
enum building{
	dirt,
	grass
}
enum edit
{
	blah,
	guest_arrive,
	guest_leave,
	none,
	speak,
	trade,
	building,
	room,
	house,
	tile,
	object,
	food_prep,
	character,
	event,
	recipies,
	character_preferences,
	review_day
}

enum hull
{
	type,
	angle,
	x,
	y
}


}