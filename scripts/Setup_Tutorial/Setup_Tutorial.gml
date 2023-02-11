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
		make_food,
		talk_to_guest,
		use_alien_ability,
		craft_merchandise,
		make_a_sale
	}
function Setup_Tutorial(){

		Tutorial_Map[? tutorial.add_beds]="TODO: Add Beds For Guests"	
		Tutorial_Sub_Map[? tutorial.add_beds]=ds_list_create();

		var	steps=Tutorial_Sub_Map[? tutorial.add_beds];
		steps[| 1]="goto Objects Mode"	
		steps[| 2]="select the wild furniture style"	
		steps[| 3]="select the swamp bed"
		steps[| 4]="press the 2 key to go to the second floor"	
		steps[| 5]="place the gnome bed in the bedroom"	
		steps[| 6]="select the arcane furniture style"	
		steps[|7]="select the ghost bed"	
		steps[| 8]="place the ghost bed in the bedroom"	
		
Tutorial_Sub_Map[? tutorial.take_bags]=ds_list_create();

		Tutorial_Map[? tutorial.take_bags]="TODO: Place the guests bags in their rooms"	
		//
		
	steps=Tutorial_Sub_Map[? tu.take_bags];
		steps[| 1]="goto Walk Mode"	
		steps[| 2]="WASD to walk to guests"	
		steps[| 3]="press space to pick up guests bag"	
		steps[| 4]="go to the stairs"	
		steps[| 5]="walk up until you get to the upper floor"
		steps[| 6]="head to the bedroom you want the guest to sleep in and press space"
		steps[| 7]="take the other guests bag to the remaining room"
		
		Tutorial_Map[? tutorial.make_food]="TODO: Feed the guests"	
		Tutorial_Sub_Map[? tutorial.make_food]=ds_list_create();		
		steps=Tutorial_Sub_Map[? tutorial.make_food];
		steps[| 1]="go to the kitchen"
		steps[| 2]="press SPACE to use the counter"
		steps[| 3]="choose a recipe to make"
		steps[| 4]="take the dish to the tray in the living room and press SPACE"
		steps[| 5]="take the dish to the tray in the living room and press SPACE"
		
		Tutorial_Map[? tutorial.talk_to_guest]="TODO: Talk with guests"
		Tutorial_Sub_Map[? tutorial.talk_to_guest]=ds_list_create();		
		steps=Tutorial_Sub_Map[? tutorial.talk_to_guest];
			steps[| 1]="it is now the eat event wait for the guests to sit and begin eating"
			steps[| 2]="the ghost has a request for you, left click the ghost"
			steps[| 3]="click yes"
			steps[| 4]="..."
			steps[| 5]="oh no she rejected the ghost, now we have a haunting problem, left click the witch"
			steps[|6]="lets see if we can talk to the witch to make this better, click Ask"
			
		Tutorial_Map[? tutorial.use_alien_ability]="TODO: Calm down Ghost"	

		Tutorial_Map[? tutorial.craft_merchandise]="TODO: Craft Merchandise"	
		
		Tutorial_Map[? tutorial.make_a_sale]="TODO: Make a sale"

}