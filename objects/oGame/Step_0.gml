/// @description
Last_World_Speed=World_Speed
Game_Controls()
Debug_Controls()
Mouse_Icon_Type=0
if Selected_Room!=noone
Mouse_Icon_Type=1

if World_Hour>10 && World_Hour<18
DayTime=1
else
DayTime=0

if World_Hour<12
darkness=1.2-World_Hour/12
if World_Hour>=12
darkness=1.2-(24-World_Hour)/12

if World_Hour>11 && World_Hour<17
Gift_Shop_Open=1
else
Gift_Shop_Open=0

if Gift_Shop_Open{
	if Tourist_Spawn_Timer<=0
	if ds_list_size(Tourists_Present_List)<4{
	Spawn_Tourist()
	Tourist_Spawn_Timer=rr(15,200)
	}
}

if Edit_Mode=edit.room ||Edit_Mode=edit.object
World_Darkness=darkness- 0.5
else{
World_Darkness=darkness-0.3
}
	var our_ghost=Get_Guest_Object(char.ghost);
	var our_hare=Get_Guest_Object(char.gnor_the_gnome)
if Current_Event!=event.eat && Chosen_Tutorial=tu.social && our_ghost!=-1 && our_hare!=-1
{
	Chosen_Tutorial=tu.ghost 
Give_Quest(our_ghost,quest.ask_out)
	our_ghost.has_quest=quest.ask_out

//with(our_ghost)
//sm(Get_Variable("person_to_meet"))
	Guest_Map[? char.ghost][? guest_detail.visual_description]="the ghost appears to be showing you by creating forms out of their hands that they are in love with Bella the rabbit they seem to want to know whether you think they should confess their love "

}


if Chosen_Tutorial=tu.give_news_or_leave && Edit_Mode!=edit.speak{
//Chosen_Tutorial=tu.add_new_room
}
// You can write your code in this editor
	if Edit_Mode!=edit.guest_leave &&  ds_list_size(Guests_That_Are_Leaving_List)>0{
	 Left_Guest=Guests_That_Are_Leaving_List[| 0]
	 		Edit_Mode=edit.guest_leave
			ds_list_delete(Guests_That_Are_Leaving_List,0)
	}


if Slow_Down
World_Speed=0.01
else{

if World_Speed<1
World_Speed+=0.04


}
Slow_Down=0
//Game_Camera_Setup(Zoom)
if Edit_Mode!=edit.speak && Edit_Mode!=edit.guest_arrive && Edit_Mode!=edit.guest_leave && Freeze_Time=0{
World_Seconds+=World_Seconds_Speed*World_Speed

//	if Current_Event=event.sleep
//World_Speed=5


}


	if Current_Event!=event.sleep && World_Speed=5
World_Speed=1



if Edit_Mode=edit.review_day
World_Speed=0
if Add_Minutes>0{
	World_Seconds=61
	Add_Minutes--
}

if World_Seconds>60
{
	World_Seconds-=60
	World_Minutes+=1
	Tourist_Spawn_Timer-=1
	
	

	Manage_Timed_Variables()

}
if keyboard_check_pressed(ord("E")){
//Add_Minutes=61
World_Minutes=61
}
/*
if World_Hour>10 && World_Hour<12
	global.ambientShadowIntensity =(12-World_Hour)/2+0.1
	else
	if World_Hour<15 && World_Hour>=12
	global.ambientShadowIntensity =1-(20-World_Hour)/13+0.1
	else
	*/
	global.ambientShadowIntensity =0.95

	
	

	
		guest_arriving=Guest_Arrival_By_Hour_List[| World_Hour]
	if guest_arriving!=undefined && guest_arriving!=0
	{
		for(var j=0;j<ds_list_size(Guest_Arrival_By_Hour_List[| World_Hour]);j++)
		{
			guest_arriving=Guest_Arrival_By_Hour_List[| World_Hour][| j]
				if guest_arriving!=undefined && guest_arriving!=0
				{

//+rr(-5,30


		

					if  Edit_Mode!=edit.guest_arrive{
						person_spawn_count++
									var spawned_guest=House_Add_Person(guest_arriving,Monster_Entrance_X+person_spawn_count*5,Monster_Entrance_Y,0,Guest_Map[? guest_arriving][? guest_detail.sprite],guest_arriving)
		Arrived_Guest=spawned_guest//Get_Guest_Object(char.hare_runaway_watch)
		
		if Game_Mode!=game_mode.quick
	Edit_Mode=edit.guest_arrive
	


		spawned_guest.my_type=Guest_Map[? guest_arriving][? guest_detail.type]
		
		var bag = instance_create_depth(spawned_guest.x+10,spawned_guest.y,0,oCarryItem)
		bag.sprite_index=asset_get_index("sCarry_"+Guest_Map[? guest_arriving][? guest_detail.bag])
		bag.owner=spawned_guest
		bag.mask=instance_create(x,y,oBag_Mask)
		bag.mask.owner=bag
		bag.item_type=carry_item_type.bag
		Auto_Add_Bag(bag)

			
			
		
		
								//we are part of the house now, events effect us
								if Start_States[? start_state.first_char_has_room]=1{
					spawned_guest.my_current_event[? my_event.event]=event.none
		     		spawned_guest.my_current_event[? my_event.room]=2
					spawned_guest.my_bedroom=2
								}
								
													
											ds_list_delete(Guest_Arrival_By_Hour_List[| World_Hour],j)
											break
					
	
					}

		
	}
	}
	}
	else
	person_spawn_count=0
	
if World_Minutes>60
{
	if World_Hour=6
Edit_Mode=edit.review_day

	World_Minutes-=60
	World_Hour++
	Trade_Hour--
	if Trade_Hour<1{
//	Edit_Mode=edit.trade
	Trade_Hour=48
	}
	
	Check_If_Characters_Have_To_Leave()

	
	//Get_Guest_Object(char.hare_runaway_watch)
	Manage_Events()
	


	//sm("hour passed")
	Total_World_Hours++
	if World_Hour>=24{
	World_Hour-=24
	if World_Hour<1
	World_Hour=1
	World_Days++
	}
}



if Edit_Mode=edit.none{
with(oGame)
{
		if exists(box_tracker){
	MultiTrackCamera.Stop_Tracking_Objects(box_tracker);

	instance_destroy(box_tracker);
	object_is_tracked = false;
		}
}
}

		 


		  
		 
/*
 if Look_Around=0 && object_is_tracked=true {
	 	MultiTrackCamera.Stop_Tracking_Objects(box_tracker);
	instance_destroy(box_tracker);
	object_is_tracked = false;
 }
 else
 if object_is_tracked=false
 {
	box_tracker = instance_create_layer(x,y,"Instances",o_BoxViewTracker);
	box_tracker.AttachToOwner(id);
	MultiTrackCamera.Track_Objects(box_tracker);
	object_is_tracked = true;
 }
//if hour has passed
/*
for(i=0;i<ds_list_size(Time_Table_List)-1;i++)
{
	
var name= Time_Table_List[| i][? "name"];
var start= Time_Table_List[| i][? "start"];
var ending= Time_Table_List[| i][? "ending"];
if World_Hour>= start && World_Hour<= ending
Events_Map[? name][? "event_is_live"]=true;
else
Events_Map[? name][? "event_is_live"]=false;
}