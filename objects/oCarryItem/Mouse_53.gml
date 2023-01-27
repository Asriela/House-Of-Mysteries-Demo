/// @description Insert description here
// You can write your code in this editor

if picked_up{
	picked_up=0
	}

/*

		if room_im_in!=noone
				if  room_type_im_in!=noone && room_type_im_in=room_type.bedroom && is_undefined(ds_map_find_value(Taken_Rooms_Map,room_im_in)) && bag.owner.my_bedroom=noone
				{
					//sm("owner"+st(bag.owner)+" bedroom:"+st(room_im_in))
					if Chosen_Tutorial=tu.take_bags { World_Hour=1 Chosen_Tutorial=tu.prep_food}
					Taken_Rooms_Map[? room_im_in]=bag.owner
					bag.owner.my_bedroom=room_im_in
					bag.placed_inside=1
					with(bag.owner){
						//we are part of the house now, events effect us
					my_current_event[? my_event.event]=event.none
										my_current_event[? my_event.room]=my_bedroom
					}

				}
				else
				{
										with(bag.owner){
						//we are part of the house now, events effect us
					my_current_event[? my_event.event]=event.has_no_room
					}
					
										bag.placed_inside=0
				}
				bag.holder=noone
						carrying_item=noone

			}
