/// @description Insert description here
// You can write your code in this editor
if (holder!=noone && holder.inside) || placed_inside
depth=-y-710
else
depth=-y-300

depth=-y-900
if holder!=noone &&  instance_exists(holder){
	x=lerp(x,holder.x,0.1)
		y=lerp(y,holder.y,0.1)
}

if !instance_exists(owner)
instance_destroy()


if picked_up
{
	x=mouse_x
	y=mouse_y
}


if item_type=carry_item_type.bag
if room_im_in!=noone
				if  room_type_im_in!=noone && room_type_im_in=room_type.bedroom 
				{
					//sm("owner"+st(bag.owner)+" bedroom:"+st(room_im_in))
					if is_undefined(ds_map_find_value(Taken_Rooms_Map,room_im_in))
					if owner.my_bedroom=noone
					{
						if Chosen_Tutorial=tu.take_bags {
							Placed_Bags++
							if Placed_Bags>1
							{ World_Hour=17 World_Minutes=45 Chosen_Tutorial=tu.prep_food}
						}
							Taken_Rooms_Map[? room_im_in]=owner
							owner.my_bedroom=room_im_in
							placed_inside=1
						with(owner)
						{
							//we are part of the house now, events effect us
								my_current_event[? my_event.event]=event.none
								my_current_event[? my_event.room]=my_bedroom
						}
						
					}

				}
				else
				{
					with(owner){
						//we are part of the house now, events effect us
					my_current_event[? my_event.event]=event.has_no_room
					}
					
					placed_inside=0
				}