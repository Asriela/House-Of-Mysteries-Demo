enum tu{
add_beds,
take_bags,
prep_food,
place_dish_on_tray,


	start,
		ask_for_news,
		talk_about,
		give_food,
		recipes,
		get_ingredients,
		give_news_or_leave,
		add_new_room,
		trade,
		add_furniture,
		arrival2,
		none,
		gnome,
		arrival,
		alien,
		expand,
		trade2,
		social,
		ghost,
		instruct,
		ending,
		no_sleep,
		review
	}
	enum tutorial{
		add_beds,
		take_bags
	}
function Setup_Tutorial(){

		Tutorial_Map[? tutorial.add_beds]="TODO: Add Beds For Guests"	
		Tutorial_Sub_Map[? tutorial.add_beds]=ds_list_create();

		var	list=Tutorial_Sub_Map[? tutorial.add_beds];
		list[| 1]="goto objects menu"	
		list[| 2]="select the wild furniture style"	
		list[| 3]="select the gnome bed"	
		list[| 4]="place the gnome bed in the bedroom"	
		list[| 5]="select the arcane furniture style"	
		list[| 6]="select the ghost bed"	
		list[| 7]="place the ghost bed in the bedroom"	
		
	//	Tutorial_Sub_Map[? tutorial.take_bags]=ds_list_create();

		Tutorial_Map[? tutorial.take_bags]="TODO: Place the guests bags in their rooms"	
		//
		
	//	list=Tutorial_Sub_Map[? tu.take_bags];
	//	list[| 1]="go to ba//g next to guest and press space"	
		//list[| 2]="go up the stairs and to the room and then press space once inside"	
		
		Tutorial_Map[? tu.prep_food]="cook food for guests"	
		Tutorial_Map[? tu.place_dish_on_tray]="take your cooked dish to tray"	



}