/// @description Insert description here
// You can write your code in this editor
//Draw_NightDay_Bar()
depth=-9000
draw_text(80,20,st(fps_real)+"\n"+st(Held_Furniture))
//draw_text(View_Width-80,20,st(mouse_x)+" "+st(mouse_y))
//draw_text(View_Width-80,20,item_to_hold)

draw_sprite(sGui_Pears_Bar,DayTime,View_Width/2,30)

//Draw_Time_Table()
var center_x=View_Width/2
var center_y=90;
draw_sprite(sGui_Events_Bar,DayTime,View_Width/2,90)
draw_set_font(f_Events)
current_event=-1
text="NO EVENT"
draw_set_color(c_gray)
var list=Hour_Slots_Array[@ World_Hour];
if list!=0
	if !is_undefined( list){

	var the_event=list[| 0];
	if the_event{
	//sm(the_event)
current_event=the_event
event_type_enum=Unique_Events_Map[? the_event][? event_detail.kind]
end_hour_gui=Unique_Events_Map[? the_event][? event_detail.ending]
var hours=string(end_hour_gui-World_Hour)

draw_set_color(Get_Event_Bar_Color(event_type_enum))
var text=Event_Enum_To_String(event_type_enum)
	var text=string_upper(text)+"["+hours+" left]"

	}
	}
	

draw_text(center_x-90,center_y-4,text)
	event_type_enum=event.none
	var hour_count=0;
	var the_h=World_Hour
	var end_this=0
	for (h=World_Hour;h<50;h++){
		if end_this=0{
		if the_h>24
		the_h=1
			
			var list=Hour_Slots_Array[@ the_h];
			if list!=0
			if !is_undefined( list){

			var the_event=list[| 0];
			if the_event && the_event!=current_event{
				
				event_type_enum=Unique_Events_Map[? the_event][? event_detail.kind]
				
				end_this=1
			}
	}
		}
		else
		break;
	if end_this=0{
	the_h++
	hour_count++
	}
	}
	if event_type_enum!=event.none{
draw_set_color(c_white)
draw_text(center_x,center_y-4,"")
draw_set_alpha(01)
var hours=string(hour_count)
draw_set_font(f_Events_Small)

draw_set_color(Get_Event_Bar_Color(event_type_enum))
var text="next up:"+string_upper(Event_Enum_To_String(event_type_enum))+"[in "+hours+"h]"
draw_text(center_x+90,center_y-4,text)
draw_set_alpha(1)
	}
if Visualize[? vis.console]=1{
	
	if Console_Mode=con.show_objects_room_data
{
	
	var the_object_id=Console_Inspected_Item_Map[? con_item.prime_id];
	var temp_room=Console_Inspected_Item_Map[? con_item.secondary_id];
	var temp_object_class=the_object_id.object_class
	var temp_list=Rooms_Objects_Map[? temp_room][? temp_object_class]
	console_text="Items like "+the_object_id.object_type+" in room "+st(temp_room)
	for(var o=0;o<ds_list_size(temp_list);o++)
	{
		console_text+="\n"+temp_list[| o].object_type+" =>"+st(temp_list[| o])
	}
}
else
	if Console_Mode=con.guest_memories && Console_Inspected_Item_Map[? con_item.prime_id]!=noone
	{	
			var the_object_id=Console_Inspected_Item_Map[? con_item.prime_id];
			var object_char_id=the_object_id.guest_id
			
			var all_people=Guest_Map[? object_char_id][? guest_detail.people_memories_map]
			console_text="MEMORIES OF "+st(Guest_Map[? object_char_id][? guest_detail.name])+"\n==========="+"\n===========\n"
			var person=ds_map_find_first(all_people)
		for(var p=0;p<ds_map_size(all_people );p++)
		{
			console_text+="TRUTHS ABOUT:\n"+st(Guest_Map[? person][? guest_detail.name])+"\n================\n"
			var all_truths=Guest_Map[? object_char_id][? guest_detail.people_memories_map][? person]
				var truths=ds_map_find_first(all_truths)
				for(var t=0;t<ds_map_size(all_truths );t++)
				{
				console_text+=st(Truths_Map[? person][? truths][? truth.short_text])+"\n"
				
				truths=ds_map_find_next(all_truths,truths)
				}
				
			var person=ds_map_find_next(all_people,person)
		}
	}
else
console_text=string_copy(Main_Log,string_length(Main_Log)-700,700)


var start_x=View_Width-50;
var start_y=View_Height-10;
debug_panel_width=290+40
draw_set_color(c_my_orange)
draw_set_alpha(0.3)
draw_rectangle(start_x,start_y,start_x-debug_panel_width,10,0)
draw_set_alpha(1)
draw_rectangle(start_x,start_y,start_x-debug_panel_width,10,1)
draw_set_color(c_white)
draw_set_halign(fa_left)
draw_set_valign(fa_left)
draw_text_ext(start_x-debug_panel_width+10,40,console_text,20,debug_panel_width-10)
draw_set_color(c_my_orange)
draw_set_valign(fa_center)
}
/*
	var down_length=30
	draw_sprite_ext(sStory_Back,0,View_Width/2,View_Height-down_length,2,2,0,c_white,1)
draw_set_font(fStory)
draw_set_halign(fa_center)
draw_set_color(c_black)

if story_alpha<1
story_alpha+=0.005
draw_set_alpha(story_alpha)
draw_text_ext(View_Width/2,View_Height-down_length,st(current_page)+" "+Story_Text[| current_page],22,880)
*/
draw_set_alpha(1)
draw_set_font(f_Events_Small)
draw_set_color(c_white)
//draw_sprite_ext(sStats_Back,0,View_Width/2,10,2,2,0,c_white,1)
//draw_sprite_ext(sGui_Cash,0,View_Width/2-25-70,33,01,01,0,c_white,0.5)
draw_set_alpha(1)
draw_set_halign(fa_center)
if DayTime=0
draw_set_color(c_white)
else
draw_set_color(c_style_black)
draw_text(View_Width/2+10-80,33,st(int64(Cash))+"$")
draw_text(View_Width/2+70,33,Floor)


var element= style.lodge
col=Get_Class_Color(element)
		draw_set_color(col)
		draw_sprite_ext(sGUI_Elements_Small,element,View_Width/2-130-2-2,30,1,1,0,col,1)
		draw_text(View_Width/2-148-2-2,30,st(int64(Style_Progression_Map[? element]))+"")
var element= style.arcane
col=Get_Class_Color(element)
		draw_set_color(col)
		draw_sprite_ext(sGUI_Elements_Small,element,View_Width/2+150+6,30,1,1,0,col,1)
		draw_text(View_Width/2+150-13,30,st(int64(Style_Progression_Map[? element]))+"")
var element= style.wild
col=Get_Class_Color(element)
		draw_set_color(col)
		draw_sprite_ext(sGUI_Elements_Small,element,View_Width/2+150+40+8+6,30,1,1,0,col,1)
		draw_text(View_Width/2+150+40-13+6,30,st(int64(Style_Progression_Map[? element]))+"")
var element= style.sci_fi
col=Get_Class_Color(element)
		draw_set_color(col)
		draw_sprite_ext(sGUI_Elements_Small,element,View_Width/2-150-28-3,30,1,1,0,col,1)
		draw_text(View_Width/2-170-33+2,30,st(int64(Style_Progression_Map[? element]))+"")

draw_set_font(f_Events_Big)
draw_set_alpha(1)
var hour_string=st(World_Hour)
if string_length(hour_string)=1
hour_string="0"+hour_string
min_string=45
if World_Minutes<15
min_string=0
else
if World_Minutes<30
min_string=15
else
if World_Minutes<45
min_string=30
else
if World_Minutes<59
min_string=45
var min_string=st(min_string)


if DayTime=0
draw_set_color(c_white)
else
draw_set_color(c_style_black)

if string_length(min_string)=1
min_string="0"+min_string
draw_text(View_Width/2,30,st(hour_string)+":"+st(min_string))

draw_sprite(sCursor,Mouse_Icon_Type,device_mouse_x_to_gui(0),device_mouse_y_to_gui(0))


//draw_text(device_mouse_x_to_gui(0),device_mouse_y_to_gui(0),Item_Being_Placed)