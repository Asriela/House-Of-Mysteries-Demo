function Quick_Settings(){
	Game_Mode=game_mode.normal
//	Game_Mode=game_mode.quick
Game_Mode=game_mode.no_save
Freeze_Time=0
World_Seconds_Speed=2
Game_Mode=game_mode.dev
//Game_Mode=game_mode.block_out

//Game_Mode=game_mode.no_loading
Visualize[? vis.path]=1
Visualize[? vis.grid]=0
Visualize[? vis.room_grid]=0
Visualize[? vis.grid_numbers]=0
Visualize[? vis.console]=1
Visualize[? vis.states]=1
Visualize[? vis.needs]=0
Visualize[? vis.doorways]=0
Visualize[? vis.show_door]=0
Visualize[? vis.move_to_point]=0
Visualize[? vis.show_tutorial]=1
Visualize[?vis.character_lead]=1
Visualize[?vis.animation]=0
Visualize[?vis.food_left]=0

Console_Mode=con.state_data

Dev_Help[? dev_help.auto_book_in]=0
Dev_Help[? dev_help.immediate_quest]=0
Dev_Help[? dev_help.auto_dish_up]=0//"Gross_goop"
Dev_Help[? dev_help.access_object_room_data]=0
Dev_Help[? dev_help.auto_accept_guests]=1
Dev_Help[? dev_help.trigger_emotions]=1
Dev_Help[? dev_help.unlock_all_furniture]=1
Dev_Help[? dev_help.fast_player]=4
Dev_Help[? dev_help.guest_speed]=2

Edit_Mode=edit.none //edit.trade
Can_Save=1
Chosen_Tutorial=tu.add_beds
//Chosen_Tutorial=tu.social 
World_Speed=1
Cash=900
World_Hour=16
World_Days=0

Start_States[? start_state.first_char_has_room]=0
Start_States[? start_state.character_spawns_at]=World_Hour

//Add_Guest_To_Arrive(Start_States[? start_state.character_spawns_at],char.ghost)
//Add_Guest_To_Arrive(Start_States[? start_state.character_spawns_at],char.hare_merchant)

//Guest_Arrival_By_Hour_List[|3]=char.vampire_Arine_seeker
Style_Progression_Map[? style.lodge]=0
Style_Progression_Map[? style.regal]=0
Style_Progression_Map[? style.sci_fi]=0
Style_Progression_Map[? style.arcane]=0
Style_Progression_Map[? style.wild]=0
var name="sTile_Kitchen";
Floor_Count_Map[? name]=99
Floor_Map[?  name]=ds_map_create()
Floor_Map[?  name][? floor_detail.style]=style.lodge
Floor_Map[?  name][? floor_detail.style_level]=1
Floor_Map[?  name][? floor_detail.desc]="kitchen aqua"

name="sTile_Wood_Yellow";
Floor_Count_Map[? name]=99
Floor_Map[?  name]=ds_map_create()
Floor_Map[?  name][? floor_detail.style]=style.lodge
Floor_Map[?  name][? floor_detail.style_level]=2
Floor_Map[?  name][? floor_detail.desc]="yellow wood"

name="sTile_Spooky_Wood";
Floor_Count_Map[? name]=99
Floor_Map[?  name]=ds_map_create()
Floor_Map[?  name][? floor_detail.style]=style.arcane
Floor_Map[?  name][? floor_detail.style_level]=2
Floor_Map[?  name][? floor_detail.desc]="spooky wood"

name="sTile_Carpet_Red";
Floor_Count_Map[? name]=99
Floor_Map[?  name]=ds_map_create()
Floor_Map[?  name][? floor_detail.style]=style.lodge
Floor_Map[?  name][? floor_detail.style_level]=2
Floor_Map[?  name][? floor_detail.desc]="red carpet"

name="sTile_Wood_Red";
Floor_Count_Map[? name]=99
Floor_Map[?  name]=ds_map_create()
Floor_Map[?  name][? floor_detail.style]=style.lodge
Floor_Map[?  name][? floor_detail.style_level]=1
Floor_Map[?  name][? floor_detail.desc]="redwood"

name="sTile_Wood_Brown";
Floor_Count_Map[? name]=99
Floor_Map[?  name]=ds_map_create()
Floor_Map[?  name][? floor_detail.style]=style.lodge
Floor_Map[?  name][? floor_detail.style_level]=1
Floor_Map[?  name][? floor_detail.desc]="oakwood"

name="sTile_Dirt_Mud";
Floor_Count_Map[? name]=99
Floor_Map[?  name]=ds_map_create()
Floor_Map[?  name][? floor_detail.style]=style.wild
Floor_Map[?  name][? floor_detail.style_level]=1
Floor_Map[?  name][? floor_detail.desc]="dirt"

name="sTile_Alien";
Floor_Count_Map[? name]=99
Floor_Map[?  name]=ds_map_create()
Floor_Map[?  name][? floor_detail.style]=style.sci_fi
Floor_Map[?  name][? floor_detail.style_level]=1
Floor_Map[?  name][? floor_detail.desc]="alien plating"

name="sTile_DarkStone";
Floor_Count_Map[? name]=99
Floor_Map[?  name]=ds_map_create()
Floor_Map[?  name][? floor_detail.style]=style.arcane
Floor_Map[?  name][? floor_detail.style_level]=1
Floor_Map[?  name][? floor_detail.desc]="dark stone"
Setup_Merch_Recipies()
Setup_Meals()
Setup_Furniture()


Materials_Count_Map[? "sMat_Ceramic"]=9
Materials_Count_Map[? "sMat_Wood"]=9
Materials_Count_Map[? "sMat_Ectoplasm"]=9


Furniture_Count_Map[? "GiftShop_Short_Table"]=1
Furniture_Count_Map[? "Candle"]=3
Furniture_Count_Map[? "Candle_Red"]=3
Furniture_Count_Map[? "Candle_Aqua"]=3
Furniture_Count_Map[? "Bedside_Table_1"]=1

Furniture_Count_Map[? "Ghost_Light"]=1
Furniture_Count_Map[? "Ghost_Bedside_Table"]=1
Furniture_Count_Map[? "Bed_Ghost_1"]=1
Furniture_Count_Map[? "Glow_Shroom_Blue"]=10
Furniture_Count_Map[? "Bed_Gnome_1"]=10
Furniture_Count_Map[? "Table_Gnome_1"]=10
Furniture_Count_Map[? "Chair_Gnome_1"]=10

//??LOCKED ITEMS
if Dev_Help[? dev_help.unlock_all_furniture]=1
{
	Furniture_Count_Map[? "Tray"]=3
	Furniture_Count_Map[? "80s_BathShower"]=3
		Furniture_Count_Map[? "80s_Toilet"]=3
				Furniture_Count_Map[? "80s_Sink"]=3
				
Furniture_Count_Map[? "Stairs"]=3
Furniture_Count_Map[? "Kitchen_Counter"]=3
Furniture_Count_Map[? "Kitchen_Sink"]=3
Furniture_Count_Map[? "Kitchen_Fridge"]=3
Furniture_Count_Map[? "Workbench"]=3

Furniture_Count_Map[? "Merch_Ectoplasm_Salve"]=0
Furniture_Count_Map[? "Merch_Gnome"]=0
Furniture_Count_Map[? "GiftShop_Entrace_Sign"]=1
Furniture_Count_Map[? "GiftShop_Entrace_Monster"]=1

Furniture_Count_Map[? "GiftShop_Short_Table"]=1
Furniture_Count_Map[? "GiftShop_Medium_Table"]=1
Furniture_Count_Map[? "GiftShop_Rug_Red"]=1
Furniture_Count_Map[? "GiftShop_Decor_No_Refunds"]=1
Furniture_Count_Map[? "GiftShop_Decor_Box_Of_Questions"]=1
Furniture_Count_Map[? "GiftShop_Decor_Log_Book"]=4
Furniture_Count_Map[? "GiftShop_Cash_Register"]=1

Furniture_Count_Map[? "Candle"]=3
Furniture_Count_Map[? "Candle_Red"]=3
Furniture_Count_Map[? "Candle_Aqua"]=3
Furniture_Count_Map[? "Bedside_Table_1"]=1
Furniture_Count_Map[? "Dishup_Table"]=1
Furniture_Count_Map[? "Dining_Table"]=5
Furniture_Count_Map[? "Kitchen_Pot_0"]=1
Furniture_Count_Map[? "Dining_Chair_0"]=4
Furniture_Count_Map[? "Fireplace"]=1
Furniture_Count_Map[? "Rug_0"]=1
//Furniture_Count_Map[? "Bed_0"]=1

Furniture_Count_Map[? "Alien_Bed"]=1
Furniture_Count_Map[? "Alien_Lamp_Aqua"]=1
Furniture_Count_Map[? "Monster_Pink_Lamp"]=1


}

/*
Furniture_Count_Map[? "Candle"]=10
Furniture_Count_Map[? "Bedside_Table_1"]=10
Furniture_Count_Map[? "Eating_Matt_0"]=10
Furniture_Count_Map[? "Kitchen_Pot_0"]=10
Furniture_Count_Map[? "Dining_Chair_0"]=10
Furniture_Count_Map[? "Rug_0"]=10
Furniture_Count_Map[? "Bed_0"]=10
Furniture_Count_Map[? "Glow_Shroom_Blue"]=10
*/
Furniture_Count_Map[? "Bed_Toad_1"]=10
Furniture_Count_Map[? "Lillypad_Table"]=10
Furniture_Count_Map[? "Plant_Reeds"]=10
Furniture_Count_Map[? "SwampRug"]=10

//Furniture_Count_Map[? "Fireplace"]=10


Furniture_Count_Map[? "Plant_Berry_1"]=10

/*
Furniture_Count_Map[? "Ghost_Light"]=10
Furniture_Count_Map[? "Ghost_Bedside_Table"]=10
Furniture_Count_Map[? "Bed_Ghost_1"]=10
*/
/*
 Relationships_Map[? char.hares]=3
 Relationships_Map[? char.toads]=0
  Relationships_Map[? char.wogs]=0
   Relationships_Map[? char.golums]=0
    Relationships_Map[? char.gnomes]=0
 Relationships_Map[? char.pooka]=0
//  Relationships_Map[? char.magicians]=0
   Relationships_Map[? char.vampires]=-2
    Relationships_Map[? char.cats]=-1
*/

Create_New_Event(event.sleep,9, 16)

Create_New_Event(event.eat,20, 23)

}