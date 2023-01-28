function Quick_Settings(){
	Game_Mode=game_mode.normal
//	Game_Mode=game_mode.quick
//Game_Mode=game_mode.no_save
Freeze_Time=0
World_Seconds_Speed=2
Game_Mode=game_mode.dev
//Game_Mode=game_mode.block_out
//Game_Mode=game_mode.no_loading
Visualize[? vis.path]=0
Visualize[? vis.grid]=0
Visualize[? vis.grid_numbers]=0
Visualize[? vis.console]=0
Visualize[? vis.states]=0
Visualize[? vis.needs]=0
Visualize[? vis.doorways]=0
Visualize[? vis.move_to_point]=0
Visualize[? vis.show_tutorial]=0

Console_Mode=con.state_data

Dev_Help[? dev_help.auto_book_in]=1
Dev_Help[? dev_help.immediate_quest]=0
Dev_Help[? dev_help.access_object_room_data]=0
Dev_Help[? dev_help.auto_accept_guests]=1
Dev_Help[? dev_help.trigger_emotions]=1


Edit_Mode=edit.none //edit.trade
Can_Save=1
Chosen_Tutorial=tu.start
//Chosen_Tutorial=tu.social 
World_Speed=1
Cash=900
World_Hour=15
World_Days=0

Start_States[? start_state.first_char_has_room]=0
Start_States[? start_state.character_spawns_at]=World_Hour

//Add_Guest_To_Arrive(Start_States[? start_state.character_spawns_at],char.ghost)
//Add_Guest_To_Arrive(Start_States[? start_state.character_spawns_at],char.hare_merchant)

//Guest_Arrival_By_Hour_List[|3]=char.vampire_Arine_seeker
Style_Progression_Map[? furn_style.lodge]=0
Style_Progression_Map[? furn_style.regal]=0
Style_Progression_Map[? furn_style.sci_fi]=0
Style_Progression_Map[? furn_style.arcane]=0
Style_Progression_Map[? furn_style.wild]=0

Floor_Count_Map[? sTile_Wood_Yellow]=99
Floor_Map[?  sTile_Wood_Yellow]=ds_map_create()
Floor_Map[?  sTile_Wood_Yellow][? floor_detail.style]=furn_style.lodge
Floor_Map[?  sTile_Wood_Yellow][? floor_detail.style_level]=2
Floor_Map[?  sTile_Wood_Yellow][? floor_detail.desc]="yellow wood"

Floor_Count_Map[? sTile_Carpet_Red]=99
Floor_Map[?  sTile_Carpet_Red]=ds_map_create()
Floor_Map[?  sTile_Carpet_Red][? floor_detail.style]=furn_style.lodge
Floor_Map[?  sTile_Carpet_Red][? floor_detail.style_level]=2
Floor_Map[?  sTile_Carpet_Red][? floor_detail.desc]="red carpet"

Floor_Count_Map[? sTile_Wood_Red]=99
Floor_Map[?  sTile_Wood_Red]=ds_map_create()
Floor_Map[?  sTile_Wood_Red][? floor_detail.style]=furn_style.lodge
Floor_Map[?  sTile_Wood_Red][? floor_detail.style_level]=1
Floor_Map[?  sTile_Wood_Red][? floor_detail.desc]="redwood"

Floor_Count_Map[? sTile_Alien]=99
Floor_Map[?  sTile_Alien]=ds_map_create()
Floor_Map[?  sTile_Alien][? floor_detail.style]=furn_style.sci_fi
Floor_Map[?  sTile_Alien][? floor_detail.style_level]=1
Floor_Map[?  sTile_Alien][? floor_detail.desc]="alien plating"

Floor_Count_Map[? sTile_DarkStone]=99
Floor_Map[?  sTile_DarkStone]=ds_map_create()
Floor_Map[?  sTile_DarkStone][? floor_detail.style]=furn_style.arcane
Floor_Map[?  sTile_DarkStone][? floor_detail.style_level]=1
Floor_Map[?  sTile_DarkStone][? floor_detail.desc]="dark stone"

Setup_Furniture()

Furniture_Count_Map[? "Merch_Ectoplasm_Salve"]=40
Furniture_Count_Map[? "GiftShop_Entrace_Sign"]=1

Furniture_Count_Map[? "GiftShop_Short_Table"]=1
Furniture_Count_Map[? "GiftShop_Medium_Table"]=1
Furniture_Count_Map[? "GiftShop_Rug_Red"]=1
Furniture_Count_Map[? "GiftShop_Decor_No_Refunds"]=1
Furniture_Count_Map[? "GiftShop_Decor_Box_Of_Questions"]=1
Furniture_Count_Map[? "GiftShop_Decor_Log_Book"]=1
Furniture_Count_Map[? "GiftShop_Cash_Register"]=1

Furniture_Count_Map[? "Candle"]=3
Furniture_Count_Map[? "Candle_Red"]=3
Furniture_Count_Map[? "Candle_Aqua"]=3
Furniture_Count_Map[? "Bedside_Table_1"]=1
Furniture_Count_Map[? "Dining_Table"]=1
Furniture_Count_Map[? "Kitchen_Pot_0"]=1
Furniture_Count_Map[? "Dining_Chair_0"]=4
Furniture_Count_Map[? "Fireplace"]=1
Furniture_Count_Map[? "Rug_0"]=1
//Furniture_Count_Map[? "Bed_0"]=1

Furniture_Count_Map[? "Alien_Bed"]=1
Furniture_Count_Map[? "Alien_Lamp_Aqua"]=1
Furniture_Count_Map[? "Monster_Pink_Lamp"]=1

Furniture_Count_Map[? "Ghost_Light"]=1
Furniture_Count_Map[? "Ghost_Bedside_Table"]=1
Furniture_Count_Map[? "Bed_Ghost_1"]=1
Furniture_Count_Map[? "Glow_Shroom_Blue"]=10
Furniture_Count_Map[? "Bed_Gnome_1"]=10
Furniture_Count_Map[? "Table_Gnome_1"]=10
Furniture_Count_Map[? "Chair_Gnome_1"]=10

/*
Furniture_Count_Map[? "Candle"]=10
Furniture_Count_Map[? "Bedside_Table_1"]=10
Furniture_Count_Map[? "Eating_Matt_0"]=10
Furniture_Count_Map[? "Kitchen_Pot_0"]=10
Furniture_Count_Map[? "Dining_Chair_0"]=10
Furniture_Count_Map[? "Rug_0"]=10
Furniture_Count_Map[? "Bed_0"]=10
Furniture_Count_Map[? "Glow_Shroom_Blue"]=10
Furniture_Count_Map[? "Bed_Toad_1"]=10
Furniture_Count_Map[? "Lillypad_Table"]=10
Furniture_Count_Map[? "Plant_Reeds"]=10
Furniture_Count_Map[? "SwampRug"]=10
Furniture_Count_Map[? "Fireplace"]=10


Furniture_Count_Map[? "Plant_Berry_1"]=10


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

Create_New_Event(event.sleep,23, 6)

Create_New_Event(event.eat,18, 19)

}