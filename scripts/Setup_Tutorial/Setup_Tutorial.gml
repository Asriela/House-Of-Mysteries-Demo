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
	
function Setup_Tutorial(){
		Tutorial_Map[? tu.add_beds]="add a bed to each empty bedroom"	
		Tutorial_Map[? tu.take_bags]="place the guests bags in their rooms"	
		Tutorial_Map[? tu.prep_food]="cook food for guests"	
		Tutorial_Map[? tu.place_dish_on_tray]="take your cooked dish to tray"	

}