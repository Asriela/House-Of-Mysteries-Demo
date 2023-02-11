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
		take_bags,
		make_food
	}
function Setup_Tutorial(){

		Tutorial_Map[? tutorial.add_beds]="TODO: Add Beds For Guests"	
		Tutorial_Sub_Map[? tutorial.add_beds]=ds_list_create();

		var	list=Tutorial_Sub_Map[? tutorial.add_beds];
		list[| 1]="goto Objects Mode"	
		list[| 2]="select the wild furniture style"	
		list[| 3]="select the swamp bed"
		list[| 4]="press the 2 key to go to the second floor"	
		list[| 5]="place the gnome bed in the bedroom"	
		list[| 6]="select the arcane furniture style"	
		list[|7]="select the ghost bed"	
		list[| 8]="place the ghost bed in the bedroom"	
		
Tutorial_Sub_Map[? tutorial.take_bags]=ds_list_create();

		Tutorial_Map[? tutorial.take_bags]="TODO: Place the guests bags in their rooms"	
		//
		
	list=Tutorial_Sub_Map[? tu.take_bags];
		list[| 1]="goto Walk Mode"	
		list[| 2]="WASD to walk to guests"	
		list[| 3]="press space to pick up guests bag"	
		list[| 4]="go to the stairs"	
		list[| 5]="walk up until you get to the upper floor"
		list[| 6]="head to the bedroom you want the guest to sleep in and press space"
		list[| 7]="take the other guests bag to the remaining room"
		
		Tutorial_Map[? tu.prep_food]="cook food for guests"	
		Tutorial_Map[? tu.place_dish_on_tray]="take your cooked dish to tray"	



}