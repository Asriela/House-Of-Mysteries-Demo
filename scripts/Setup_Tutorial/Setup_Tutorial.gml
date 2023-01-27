enum tu{
	start,
		ask_for_news,
		talk_about,
		take_bags,
		prep_food,
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
	Tutorial_Map[? tu.start]="Housed together is a game about running a hostel for fantasy creatures and trying to have everyone get along. Guest pay you at the end of each day based of their mood, so make sure to keep their mood up. Click on the [Door Icon] at the bottom left to start building your first room."
		Tutorial_Map[? tu.add_new_room]="Now click on the room type you want to make and then simply left click to paint it in, right click when you are done making a room and want to make a new one. Make one dining room of 6 tiles and TWO bedrooms of 4 tiles Select doors and click on walls to place them."
Tutorial_Map[? tu.trade]="This is the trading menu where you buy furniture, get one of each here and then press [X]"
Tutorial_Map[? tu.add_furniture]="First go back to the room editor - [Door icon] and make sure you have placed doors on the walls, then click on object editor [Chair Icon] place the beds in the grey (bedroom) and the TWO chairs and dining table and pot in the red (dining room). When you are DONE press on the X at the bottom left to go back to normal view. "
		Tutorial_Map[? tu.arrival]="Your first guests has arrived. Here you can see their needs, press Accept to allow them to begin their stay."
	Tutorial_Map[? tu.arrival2]="The toad and gnome have arrived, take their bags to their rooms"
	
	Tutorial_Map[? tu.ask_for_news]="Click on [Ask] and then [News]."
	Tutorial_Map[? tu.talk_about]="Now click back and then choose [Say] and then click [Mysterious Rabbit] and you will see that what she said is now something you can tell others about, click [X] to exit"
Tutorial_Map[? tu.take_bags]=" press [space] by the orange bag next to guests and move with [wasd] to take it to the bedroom you want them to stay in, press [space] again to drop it there"
		Tutorial_Map[? tu.prep_food]="Now head over to the kitchen further up and press [space] by the pot to cook the cabbage bowl recipe"
		Tutorial_Map[? tu.give_food]="up top you will see its currently time to eat, wait for the guests to sit at the table then take the bowl to each guest and press [space] to have them eat "		
		Tutorial_Map[? tu.social]="notice how the guests talk when they are near each other, this satisfies their need to socialize but it can also lead to them arguing and reducing each others mood "		
		Tutorial_Map[? tu.ghost]="the ghost has a request for us, guests often have requests unique to who they are, filliling them improves their mood but you or others may not always like what they request. Click on the ghost to see what they want."
				Tutorial_Map[? tu.instruct]=" motivate the ghost to confess their feelings by instructing them to talk to the rabbit click on [BACK] then click [Action] then [Speak to] then the rabbit to do so "
						Tutorial_Map[? tu.ending]="END OF DEMO"
						Tutorial_Map[? tu.review]="the amount of money your guests give you depend on their mood so you have to keep them happy. Their happiness also impacts your reputation in a certain field. Since the ghost was haunting the gnome couldnt fullfil his need to sleep, thus lowering his mood. "
Tutorial_Map[? tu.no_sleep]="when the ghost is sad it haunts the house, waking people up"
		Tutorial_Map[? tu.expand]="Three more guests will be arriving, to prepare for their arrival, expand the house with the hallway option under rooms [Door Icon] and then adding three more bedrooms."
		Tutorial_Map[? tu.trade2]="lets a bed for each new bedroom and place it in their respective rooms"
			Tutorial_Map[? tu.recipes]="click on the [recipes] option in the bottom left, here we can make more recipies. Click [create new recipe] and then drag ingredients from the left into the bowl to make a recipe. Click [Save recipe] to save  your recipe then [x] or [none] to exit this."
			Tutorial_Map[? tu.get_ingredients]="Now click on [None] at the bottom left to go back into walking mode and collect some ingredients outside by pressing [space] near them."
		Tutorial_Map[? tu.give_news_or_leave]="A guests willingness to answer questions or provide news depends on their openess as you can see marked there. When you give them info they open up to you allowing you to ask them for info. You can choose to tell the vampire what you know with [Say] button, or you can just press [Exit]"	
			Tutorial_Map[? tu.gnome]="Here you can see what the guest wants to be satisfied, keep an eye out for the top bar, red is eating times when you have to give them food, dark blue is when they go to sleep"	
	Tutorial_Map[? tu.none]=""	
		Tutorial_Map[? tu.alien]="A new guest has arrived build a room for the alien and then left click on them so we can use their action ability to calm down the ghost"	
}