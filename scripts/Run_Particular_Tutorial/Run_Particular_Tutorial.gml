// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Run_Particular_Tutorial(){
	if Last_Chosent_Tutorial!=Chosen_Tutorial
	Tutorial_Sub_Step=1
	
	if Flash_Button_Alpha<0
	Flash_Button_Alpha=1
	Flash_Button_Alpha-=0.02
	
				if Dev_Help[? dev_help.spawn_guests_at]=Chosen_Tutorial
				{
						if Spawned_Starter_Guests=0
		{
	Spawned_Starter_Guests=1
			Add_Guest_To_Arrive(World_Hour+1,char.witch)
		Add_Guest_To_Arrive(World_Hour+1,char.ghost)
	World_Minutes=59
World_Seconds=59

		}
				}
			
				
				
	switch(Chosen_Tutorial)
	{
		case tutorial.add_beds:
		
			switch(Tutorial_Sub_Step)
			{
			case 1:
				Tutorial_Highlight_Button=tu_highlight_button.furniture
				if  Edit_Mode=edit.object{
				Tutorial_Sub_Step++
				
				}

			break;
			case 2:
				Tutorial_Highlight_Button=noone
				Flash_Button=style.wild
				if Flashing_Button_Was_Pressed
				Tutorial_Sub_Step++
			break;
			case 3:

				Flash_Button="Swamp_Bed"
				if Flashing_Button_Was_Pressed
				Tutorial_Sub_Step++
			break;
			case 4:

			Flash_Button=noone
			Flash_Tutorial=1
				if Floor=2{
				Tutorial_Sub_Step++
				Flash_Tutorial=0
				}
			break;
			case 5:

				Flash_Button=noone
				Flash_Room=5
				if exists(Object_That_Was_Placed)
				if Object_That_Was_Placed.object_type="Swamp_Bed" && Object_That_Was_Placed.my_room=5
				Tutorial_Sub_Step++
			break;
		case 6:
				Flash_Room=noone
				Flash_Button=style.arcane
				if Flashing_Button_Was_Pressed
				Tutorial_Sub_Step++
			break;
		case 7:

				Flash_Button="Bed_Ghost_1"
				if Flashing_Button_Was_Pressed
				Tutorial_Sub_Step++
			break;
		case 8:

				Flash_Button=noone
				Flash_Room=6
				if exists(Object_That_Was_Placed)
				if Object_That_Was_Placed.object_type="Bed_Ghost_1" && Object_That_Was_Placed.my_room=6{
				Chosen_Tutorial=tu.take_bags
				Flash_Room=noone
				Tutorial_Sub_Step=1
				}
			break;
			}
		
		break;
		case tutorial.take_bags:
		switch(Tutorial_Sub_Step)
			{
			case 1:
			if Spawned_Starter_Guests=0
		{
	Spawned_Starter_Guests=1
			Add_Guest_To_Arrive(World_Hour+1,char.witch)
		Add_Guest_To_Arrive(World_Hour+1,char.ghost)
	World_Minutes=59
World_Seconds=59

		}

				Tutorial_Highlight_Button=tu_highlight_button.none
				if  Edit_Mode=edit.none{
				Tutorial_Sub_Step++
				
				}
			break;
			case 2:
				Tutorial_Highlight_Button=noone
				if instance_number(oCarryItem)>0{
				Tutorial_Arrow=instance_nearest(x,y,oCarryItem)
				if  point_distance(mPlayer.x,mPlayer.y,Tutorial_Arrow.x,Tutorial_Arrow.y)<60{
				Tutorial_Sub_Step++
				}
				}
			break;				
				case 3:
				Flash_Tutorial=1
				Tutorial_Arrow=noone
				if keyboard_check_pressed(vk_space)
				Tutorial_Sub_Step++
				break;
				case 4:
				Flash_Tutorial=0
				Tutorial_Arrow=oStairs

				Tutorial_Arrow=instance_nearest(x,y,oStairs)
				if  point_distance(mPlayer.x,mPlayer.y,Tutorial_Arrow.x,Tutorial_Arrow.y)<60
				Tutorial_Sub_Step++
				break;
				case 5:
				Tutorial_Arrow=noone
				if Floor=2
				Tutorial_Sub_Step++
				
				break;
				case 6:
				Flash_Tutorial=1
				break;
				case 7:
				Flash_Tutorial=1
				break;
				case 8:
				Flash_Tutorial=0
				Chosen_Tutorial=tutorial.make_food
				Tutorial_Sub_Step=1
				break;
			}
		break;
		case tutorial.make_food:
		switch(Tutorial_Sub_Step)
		{
			case 1:

			if exists(mFood_Prep){
				Tutorial_Arrow=instance_nearest(x,y,mFood_Prep)
				if  point_distance(mPlayer.x,mPlayer.y,Tutorial_Arrow.x,Tutorial_Arrow.y)<60
				Tutorial_Sub_Step++
}
			break;
			case 2:
			Tutorial_Arrow=noone
			if Edit_Mode=edit.food_prep
			{
				
				Tutorial_Sub_Step++
			}
			break;
			case 3:
			
			Flash_Button="Gross_goop"
			
			break;
			case 4:
			if Get_Variable_From(Player_Object,state_var.carrying_item)=noone
			{
				Tutorial_Sub_Step=1
				Chosen_Tutorial=tutorial.talk_to_guest
				World_Hour=20
				World_Minutes=59
				
			}
			break;
		}
		break;
		case tutorial.talk_to_guest:
		switch(Tutorial_Sub_Step)
		{
			case 1:

			Flash_Tutorial=1
			break;
			case 2:
			if Last_Sub_Step=1{
				var our_ghost=Get_Guest_Object(char.ghost);
				var quest_text="the ghost appears to be showing you by creating forms out of their hands that they are in love with Weltiry the witch they seem to want to know whether you think they should confess their love "
		
				Give_Quest(our_ghost,quest.ask_out,quest_text)
				

					}


			if Edit_Mode=edit.speak
			Tutorial_Sub_Step++
			
			break;
			case 3:
			if Edit_Mode!=edit.speak
			Tutorial_Sub_Step++
			
			break;
			case 4:
			var our_ghost=Get_Guest_Object(char.ghost);
			if our_ghost.action_animation=sChar_Ghost_Haunt{
			Tutorial_Sub_Step++
			 Add_People_Memory( char.player,char.ghost,truth_ghost.loves_witch,mem_secrecy.will_share,0,emotion.custom)
			}
			break;
			case 5:
			if Edit_Mode=edit.speak
			{
				Tutorial_Sub_Step++
			}
			break;
		}
		break;
	
	}
}