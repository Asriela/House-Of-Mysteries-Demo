/// @main
// You can write your code in this editor
randomize()
globalvar Log_Observed_Character,Remove_Tiles_List_Floor,Saved_Doors_Floor_List,Furn_List_Floors,Spawn_Starter_Guests,Floor,Tutorial_Highlight_Alpha,Tutorial_Highlight_Button,Dishes_Map,Last_Selected,Materials_Count_Map,materials_gained_map,Monster_Entrance_X,Monster_Entrance_Y,c_my_aqua,Entrance_X,Entrance_Y,Entrance_Placed,Shop_Room,Add_Minutes,Tourist_Spawn_X,Tourist_Spawn_Y,Tourists_Present_List,Tourist_Spawn_Timer,Gift_Shop_Open,Selected_Furniture,Chosen_To_Pick_Up,DayTime,Tile_Bush_Size,Floor_Map,Floor_Count_Map,Cant_Pickup,Object_Menu_Mode,Floor_Grid,Object_Category,c_dark_brown,Last_World_Speed,Slow_Down,World_Speed,Room_Placement_Type_List,Room_Placement_X_List,Room_Placement_Y_List,Console_Inspected_Item_Map,Console_Mode,Dev_Help,Minute_Speed,Chosen_Object,Mouse_Icon_Type,AStar_Map,Placed_Bags,Current_Event,Dining_Room_Count,World_Seconds_Speed,Do_Review,Has_Pressed_Button_This_Step,Current_Housed_Guests_List,Chosen_Action,c_my_green,c_my_red,Freeze_Time,Bedroom_Count,Selected_Name,Placed_Map,Can_Save,Last_Tutorial,Chosen_Tutorial,Tutorial_Map,Style_Progression_Map,Arrived_Guest,Guests_That_Are_Leaving_List,Left_Guest,Trade_Hour,Furniture_Map,Relationships_Map,Furn_Id_Count,Furn_List_Id,Last_Edit_Mode,Held_Furniture,Move_Furniture_Mode,Furniture_Count_Map,Could_Find_News,Skip_First,Chosen_Fact,Chosen_Person_Id,Chosen_Person,Player_Object,Furn_List_Y,Furn_List_X,Furn_List_Type,Truths_Map,Character_Truths_List,Start_States,Visualize,Game_Mode,Chosen_Feeling,Memory_Word,Last_Talk_Menu,Chosen_Memory,Known_People_Memory_Tags_List,Known_Things_Memory_Tags_List,Current_Guest,Talk_Menu_Text,Talk_Menu,Obj_Food_Back,Held_Ingredient,Button_Was_Pressed,Selected_Recipe,Last_Sub_Menu,Recipies_Map,Remove_Tiles_List_X,Remove_Tiles_List_Y,Rooms_Type_Map,Global_ID_Index,All_Instances_List,Spawn_Point_X,Spawn_Point_Y,c_my_dark_aqua,Available_Building_Space_Grid,Over_Building_Block,Cash,Zoom,Guest_Map,color_bedroom,Clicked,Sub_Menu,Events_Lanes_List,Unique_Events_Map,Event_Id_Count,Over_Button_Id,c_my_navy,World_Seconds,World_Days,World_Minutes,World_Hour,Time_Table_List,Twitch_commands_list,tribal_base_game_dir,c_my_orange,Over_Gui,View_Width,View_Height,colour,Selected_Room,Global_Room_Number,Half_Tile_Height,Half_Tile_Width,Item_Being_Placed,Tile_Width,Tile_Height,Edit_Mode,Item_List;
Floor=1
Gui_Active=ds_map_create()
Dishes_Map=ds_map_create()
materials_gained_map=ds_map_create()
Materials_Count_Map=ds_map_create()
Tourist_Spawn_X=0
Tutorial_Highlight_Alpha=0
Spawn_Starter_Guests=0
Shop_Room=noone
Log_Observed_Character=noone
just_selected_object=0
Tourist_Spawn_Y=0
Last_Selected=0
Gift_Shop_Open=0
Add_Minutes=0
Entrance_X=0
Monster_Entrance_X=0
Monster_Entrance_Y=0
Entrance_Y=0;
Entrance_Placed=0
Tourist_Spawn_Timer=40
Chosen_To_Pick_Up=noone
Selected_Furniture=noone
Placed_Map=ds_map_create()
Dev_Help=ds_map_create()
Floor_Count_Map=ds_map_create()
Floor_Map=ds_map_create()
Object_Category=style.lodge
Cant_Pickup=0
DayTime=0
Tile_Bush_Size=1
Console_Inspected_Item_Map=ds_map_create()

Mouse_Icon_Type=0
Object_Menu_Mode=1
Slow_Down=0
Hour_Slots_Array=array_create(24,0)
Minute_Speed=0
Last_World_Speed=1
Arrived_Guest=noone
Trade_Hour=48
Event_Id_Count=1
Placed_Bags=0
Tutorial_Highlight_Button=noone
Current_Event=event.none
Bedroom_Count=0
Has_Pressed_Button_This_Step=0
 Selected_Name=""
 Dining_Room_Count=0
 Console_Mode=noone
 Do_Review=1
 Chosen_Object=0
 Unique_Events_Map=ds_map_create()
Furniture_Count_Map=ds_map_create()
Furniture_Map=ds_map_create()
Relationships_Map=ds_map_create()
Style_Progression_Map=ds_map_create()
Guest_Arrival_By_Hour_List=ds_list_create()
Current_Housed_Guests_List=ds_list_create()
Room_Placement_X_List=ds_list_create()
Room_Placement_Y_List=ds_list_create()
Room_Placement_Type_List=ds_list_create()
Tourists_Present_List=ds_list_create()
person_spawn_count=0
Tutorial_Map=ds_map_create()
Move_Furniture_Mode=0
obj_gui_back=noone
box_tracker=noone
Setup_Tutorial()
portrait_animation=0
end_hour_gui=1
item_to_hold=noone
/*

var button=instance_create(x,y,oButton)
button.sprite_index=sGui_Pie_Menu_1
button.turn_on_value=edit.room

var button=instance_create(x,y,oButton)
button.sprite_index=sGui_Pie_Menu_2
button.turn_on_value=edit.room

var button=instance_create(x,y,oButton)
button.sprite_index=sGui_Pie_Menu_3
button.turn_on_value=edit.room

var button=instance_create(x,y,oButton)
button.sprite_index=sGui_Pie_Menu_4
button.turn_on_value=edit.room
*/
Last_Edit_Mode=edit.none
Chosen_Person=noone
Held_Furniture=noone
Chosen_Fact=noone
Chosen_Action=0
Skip_First=0;
alarm[1]=5
Chosen_Person_Id=noone
Start_States=ds_map_create()
Gui_Active[? gui.console]=0
Visualize=ds_map_create()


Set_Guest_Furn_Class_Preferences()
Player_Object=noone
Could_Find_News=0
All_Instances_List=ds_list_create()
Guests_That_Are_Leaving_List=ds_list_create()
Character_Truths_List=ds_map_create()
Furn_List_Id=ds_list_create()
Truths_Map=ds_map_create()
Furn_Id_Count=0
Setup_Truths()
Last_Talk_Menu=noone
spoke_about_about=0
c_my_green=make_color_hex("4DFF0C")
c_my_red=make_color_hex("B6000C")

c_my_aqua=make_color_hex("0094FF")
spoke_about_news=0
Memory_Word=""
Known_People_Memory_Tags_List=ds_list_create()
Known_Things_Memory_Tags_List=ds_list_create()
Furn_List_Y=ds_list_create()
Furn_List_Type=ds_list_create()
Furn_List_Floors=ds_list_create()
Furn_List_X=ds_list_create()
Current_Guest=noone
Button_Was_Pressed=0
Chosen_Memory=noone
Chosen_Feeling=noone
Talk_Menu=talk_menu.main
Talk_Menu_Text=""
guest_speaking_text=""
Held_Ingredient=noone
Remove_Tiles_List_X=ds_list_create()
Remove_Tiles_List_Y=ds_list_create()
Remove_Tiles_List_Floor=ds_list_create()
Tile_Width=8
Recipies_Map=ds_map_create()
Spawn_Point_X=3570
Spawn_Point_Y=3577
Last_Sub_Menu=noone
Selected_Recipe=noone
recipe_values = {};

Zoom=1
Available_Building_Space_Grid=ds_grid_create(100,100)
Over_Building_Block=noone
Sub_Menu=""
Clicked=0

Tile_Height=8
Over_Gui=0
skip_frame=0
last_guest_speaking_text=""
typed_guest_text=""
flash_openess=c_white
last_flash_openess=c_white
flash_value=0
Selected_Event=-1
World_Minutes=59

World_Seconds=0
Twitch_commands_list=ds_list_create()
Twitch_Response_Waiting_Time=10*60
Half_Tile_Width=Tile_Width/2
Half_Tile_Height=Tile_Height/2
			text_alpha=1
			time_until_next_word=1
Item_Being_Placed=room_type.hallway
Global_Room_Number=0

Guest_Map=ds_map_create()
Guests_List=ds_list_create()
ds_list_add(Guests_List,"Milda")
ds_list_add(Guests_List,"Rabbit_Jack")
ds_list_add(Guests_List,"Toad_King")
ds_list_add(Guests_List,"Gnome_Standard")
count=0
c_my_orange=make_color_hex("FF8700")
c_my_red=make_color_hex("8F2655")
c_my_navy=make_color_hex("050C2D")
c_my_purple =make_color_hex("643E6B")
 c_my_blue=make_color_hex("3C4368")
c_my_light_red= make_color_hex("FD5144")
 c_my_light_navy= make_color_hex("3E5060")
  c_my_dark_aqua= make_color_hex("1F8CB7")
  c_dark_brown=make_color_hex("211309")
  c_light_brown=make_color_hex("33261D")
object_is_tracked=false
Global_ID_Index=0



globalvar c_light_brown,Furn_Save_X,Furn_Save_Type,Furn_Save_Y,Draw_Held_Furn,mouse_small_grid_x,mouse_small_grid_y,Saved_Doors_YY_List,Saved_Doors_XX_List,Saved_Doors_Angle_List,Saved_Doors_X_List,Saved_Doors_Y_List,Hour_Slots_Array,Gui_Active,Building_Grid,Story_Text,Total_World_Hours,Guest_Arrival_By_Hour_List,Placed_Hallway,Hallway_Room,Skip_Frame,color_dining,color_drinking,color_drinking,color_reading;
mouse_small_grid_x=0
mouse_small_grid_y=0
Draw_Held_Furn=0


repeat(0)
instance_create_depth(random(room_width),random(room_height),0,obj_vertexgrass)
Saved_Doors_X_List=ds_list_create()
Saved_Doors_Y_List=ds_list_create()
Saved_Doors_XX_List=ds_list_create()
Saved_Doors_YY_List=ds_list_create()
Saved_Doors_Angle_List=ds_list_create()
Saved_Doors_Floor_List=ds_list_create()
color_bedroom=c_my_light_navy;

color_dining=c_my_light_red
color_drinking=c_my_orange
color_reading=c_my_purple
Skip_Frame=0;
Hallway_Room=-1
Placed_Hallway=0
Total_World_Hours=0
Setup_Guests()

randomize()
Story_Text=ds_list_create()
ds_list_add(Story_Text,"")
current_page=0
Add_Story("Once long ago deep in the forest there resided a place called the Hollow... it started as nothing more than"
+" a simple hole in the ground. The digger of this hole? The last remaining forest nymp, Milda... ")




Building_Grid=ds_grid_create(100,100)



Selected_Hours=ds_list_create()
Over_Button_Id=0;

Events_Order_List=ds_list_create()

Events_Start_Map=ds_map_create()

Events_Lanes_List=ds_list_create()

started_creating_new_event=0
for(i=1;i<=24;i++)
{
	Hour_Slots_Array[@ i]= ds_list_create()
	Selected_Hours[| i]=0
}

colour =
{
    purple : make_color_hex(c_my_purple),
    blue : make_color_hex(c_my_blue)
};

last_edit_mode=0

Create_Nature()
Quick_Settings()
if Dev_Help[? dev_help.immediate_quest]=1
alarm[3]=1
Last_Tutorial=Chosen_Tutorial
Selected_Room=-1
Selected_Room=noone

Game_Globals()
Setup_Directory()
Load_In_Runs()
Load_In_States()
	Log_Main("Initialization complete \n===============")
alarm[0]=1



function Game_Camera_Setup(the_scale)
{
	/*var scale = the_scale

	View_Width = window_get_width() / scale; View_Height = window_get_height() / scale;
var w=View_Width;
var h= View_Height;
	display_set_gui_size(w, h);

	var cam = view_get_camera(0);

	view_set_wport(0, w); view_set_hport(0, h);

	camera_set_view_size(cam, view_wport[0], view_hport[0]);

	// leave this part out if you don't use views to follow an object. camera_set_view_target(view_camera[0], player_obj); camera_set_view_border(view_camera[0], w/2, h/2);

	camera_set_view_border(view_camera[0], w, h)
	camera_set_view_target(view_camera[0], oHouse)
	surface_resize(application_surface, w, h);
*/
}
window_set_fullscreen(0)
View_Width = window_get_width() 
View_Height = window_get_height() 