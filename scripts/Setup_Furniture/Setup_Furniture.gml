function Setup_Furniture(){

var is_merch,item,name,name,desc,class,price,race,style1,style1_level,style2,style2_level,points,start_x,start_y,size_x,size_y,is_merch;
style2_level=0
style2=noone
is_merch=1
//RACE : MERCH
//=====================
race=char.none
style1=merch_type.bottled
	
	//LEVEL 0:
	style1_level=0
		item="Merch_Ectoplasm_Salve"
	name="Ectoplasm salve"
	desc="bring back your youth with the goop of the dead"
	class=obj_class.merch
	price=10
	points=0
		start_x=0
	start_y=0
	size_x=1
	size_y=1
	Set_Furniture_Item(item,name,desc,class,price,race,style1,style1_level,style2,style2_level,points,start_x,start_y,size_x,size_y,is_merch)

style1=merch_type.stations
	item="GiftShop_Cash_Register"
	name="cash register"
	desc="ring up tourists here"
	class=obj_class.cash_register
	price=10
	points=0
	start_x=1
	start_y=1
	size_x=2
	size_y=2
	Set_Furniture_Item(item,name,desc,class,price,race,style1,style1_level,style2,style2_level,points,start_x,start_y,size_x,size_y,is_merch)	
		
	style1=merch_type.stations
		item="GiftShop_Entrace_Sign"
	name="entrance sign"
	desc="tourists arrive from here "
	class=obj_class.tourist_spawn
	price=10
	points=0
	start_x=1
	start_y=1
	size_x=2
	size_y=2
	Set_Furniture_Item(item,name,desc,class,price,race,style1,style1_level,style2,style2_level,points,start_x,start_y,size_x,size_y,is_merch)		
		
		
	is_merch=0
	name=""
//RACE : GIFT SHOP
//=====================
race=char.none
style1=furn_style.lodge
	
	//LEVEL 0:
	style1_level=0
		item="GiftShop_Rug_Red"
	desc="gift shop rug red"
	class=obj_class.floor_decor
	price=10
	points=0
		start_x=2
	start_y=1
	size_x=5
	size_y=2
	Set_Furniture_Item(item,name,desc,class,price,race,style1,style1_level,style2,style2_level,points,start_x,start_y,size_x,size_y,is_merch)
	
	item="GiftShop_Medium_Table"
	desc="medium gift shop table"
	class=obj_class.table
	price=10
	points=0
	start_x=4
	start_y=2
	size_x=8
	size_y=3
	Set_Furniture_Item(item,name,desc,class,price,race,style1,style1_level,style2,style2_level,points,start_x,start_y,size_x,size_y,is_merch)
	
	item="GiftShop_Short_Table"
	desc="short gift shop table"
	class=obj_class.table
	price=10
	points=0
	start_x=3
	start_y=1
	size_x=6
	size_y=2
	Set_Furniture_Item(item,name,desc,class,price,race,style1,style1_level,style2,style2_level,points,start_x,start_y,size_x,size_y,is_merch)
	
	item="GiftShop_Decor_Log_Book"
	desc=" log book"
	class=obj_class.shelf_decor
	price=10
	points=0
	start_x=0
	start_y=0
	size_x=1
	size_y=2
	Set_Furniture_Item(item,name,desc,class,price,race,style1,style1_level,style2,style2_level,points,start_x,start_y,size_x,size_y,is_merch)	
	

		item="GiftShop_Decor_Box_Of_Questions"
	desc="box of questions"
	class=obj_class.shelf_decor
	price=10
	points=0
	start_x=0
	start_y=0
	size_x=1
	size_y=1
	Set_Furniture_Item(item,name,desc,class,price,race,style1,style1_level,style2,style2_level,points,start_x,start_y,size_x,size_y,is_merch)	
		item="GiftShop_Decor_No_Refunds"
	desc="no refunds"
	class=obj_class.shelf_decor
	price=10
	points=0
	start_x=0
	start_y=0
	size_x=2
	size_y=2
	Set_Furniture_Item(item,name,desc,class,price,race,style1,style1_level,style2,style2_level,points,start_x,start_y,size_x,size_y,is_merch)	
//RACE : START
//=====================
race=char.none
style1=furn_style.lodge
	
	//LEVEL 0:
	style1_level=0
	
	item="Bed_0"
	desc="rag bed"
	class=obj_class.bed
	price=10
	points=0
	start_x=4
	start_y=2
	size_x=9
	size_y=5
	Set_Furniture_Item(item,name,desc,class,price,race,style1,style1_level,style2,style2_level,points,start_x,start_y,size_x,size_y,is_merch)
	
	item="Dining_Chair_0"
	desc="dining chair"
	class=obj_class.chair
	price=10
	points=0
	start_x=1
	start_y=1
	size_x=3
	size_y=3
	Set_Furniture_Item(item,name,desc,class,price,race,style1,style1_level,style2,style2_level,points,start_x,start_y,size_x,size_y,is_merch)
	
	item="Rug_0"
	desc="rug torn"
	class=obj_class.floor_decor
	price=10
	points=0
		start_x=5
	start_y=2
	size_x=11
	size_y=5
	Set_Furniture_Item(item,name,desc,class,price,race,style1,style1_level,style2,style2_level,points,start_x,start_y,size_x,size_y,is_merch)
	
	item="Bedside_Table_1"
	desc="bedside table"
	class=obj_class.table
	price=10
	points=0
	start_x=1
	start_y=1
	size_x=2
	size_y=2
	Set_Furniture_Item(item,name,desc,class,price,race,style1,style1_level,style2,style2_level,points,start_x,start_y,size_x,size_y,is_merch)
	
	item="Candle"
	desc="candle"
	class=obj_class.light
	price=10
	points=0
	start_x=0
	start_y=-1
	size_x=1
	size_y=1
	Set_Furniture_Item(item,name,desc,class,price,race,style1,style1_level,style2,style2_level,points,start_x,start_y,size_x,size_y,is_merch)
	Furniture_Map[? item][? furn.light_color_1]=make_color_hex("FBE541") 
	Furniture_Map[? item][? furn.light_color_2]=make_color_hex("EADAAF")
	Furniture_Map[? item][? furn.light_brightness]=200	
	Furniture_Map[? item][? furn.light_instablility]=0.6	
		Furniture_Map[? item][? furn.light_direction]=200	
	Furniture_Map[? item][? furn.light_radius]=200	
	Furniture_Map[? item][? furn.light_strength]=1.2	
	Furniture_Map[? item][? furn.light_instablility]=0.9
	
	

	
		item="Fireplace"
	desc="fireplace"
	class=obj_class.light
	price=10
	points=0
	start_x=5
	start_y=2
	size_x=11
	size_y=4
	Set_Furniture_Item(item,name,desc,class,price,race,style1,style1_level,style2,style2_level,points,start_x,start_y,size_x,size_y,is_merch)
	Furniture_Map[? item][? furn.light_color_1]=make_color_hex("FFEF8B") 
	Furniture_Map[? item][? furn.light_color_2]=make_color_hex("CA6B1B")
	Furniture_Map[? item][? furn.light_brightness]=1200	
	Furniture_Map[? item][? furn.light_direction]=200	
	Furniture_Map[? item][? furn.light_radius]=200	
	Furniture_Map[? item][? furn.light_strength]=1
	Furniture_Map[? item][? furn.light_instablility]=0.9		
	
	
	item="Dining_Table"
	desc="dining table"
	class=obj_class.table
	price=10
	points=0
	start_x=5
	start_y=2
	size_x=11
	size_y=5
	Set_Furniture_Item(item,name,desc,class,price,race,style1,style1_level,style2,style2_level,points,start_x,start_y,size_x,size_y,is_merch)
	
	item="Kitchen_Pot_0"
	desc="pot"
	class=obj_class.food_prep
	price=10
	points=0
		start_x=1
	start_y=1
	size_x=3
	size_y=3
	Set_Furniture_Item(item,name,desc,class,price,race,style1,style1_level,style2,style2_level,points,start_x,start_y,size_x,size_y,is_merch)
	//RACE : NORMAL
//=====================
race=char.aliens
style1=furn_style.sci_fi
	
	//LEVEL 0:
	style1_level=1
	
	item="Alien_Bed"
	desc="alien bed"
	class=obj_class.bed
	price=10
	points=0
	start_x=4
	start_y=2
	size_x=9
	size_y=5
	Set_Furniture_Item(item,name,desc,class,price,race,style1,style1_level,style2,style2_level,points,start_x,start_y,size_x,size_y,is_merch)
	Furniture_Map[? item][? furn.animation_type]=ani_type.reverse
	
		item="Alien_Lamp_Aqua"
	desc="alien light"
	class=obj_class.light
	price=10
	points=0
	start_x=1
	start_y=1
	size_x=2
	size_y=2
	Set_Furniture_Item(item,name,desc,class,price,race,style1,style1_level,style2,style2_level,points,start_x,start_y,size_x,size_y,is_merch)
	Furniture_Map[? item][? furn.light_color_1]=make_color_hex("00D8FF") 
	Furniture_Map[? item][? furn.light_color_2]=make_color_hex("00D8FF")
Furniture_Map[? item][? furn.light_brightness]=400	
	Furniture_Map[? item][? furn.light_instablility]=0.6	
		Furniture_Map[? item][? furn.light_direction]=200	
	Furniture_Map[? item][? furn.light_radius]=200	
	Furniture_Map[? item][? furn.light_strength]=0.5
	Furniture_Map[? item][? furn.light_instablility]=0.9

	
//RACE : NORMAL
//=====================
race=char.ghosts
style1=furn_style.arcane
	
	//LEVEL 0:
	style1_level=1
	
	item="Bed_Ghost_1"
	desc="ghost bed"
	class=obj_class.bed
	price=10
	points=0
	start_x=4
	start_y=2
	size_x=9
	size_y=5
	Set_Furniture_Item(item,name,desc,class,price,race,style1,style1_level,style2,style2_level,points,start_x,start_y,size_x,size_y,is_merch)
	
		item="Ghost_Bedside_Table"
	desc="ghost bedside table"
	class=obj_class.table
	price=10
	points=0
	start_x=1
	start_y=1
	size_x=2
	size_y=2
	Set_Furniture_Item(item,name,desc,class,price,race,style1,style1_level,style2,style2_level,points,start_x,start_y,size_x,size_y,is_merch)
	
		item="Ghost_Light"
	desc="ghost light"
	class=obj_class.light
	price=10
	points=0
	start_x=1
	start_y=1
	size_x=2
	size_y=2
	Set_Furniture_Item(item,name,desc,class,price,race,style1,style1_level,style2,style2_level,points,start_x,start_y,size_x,size_y,is_merch)
	Furniture_Map[? item][? furn.light_color_1]=make_color_hex("D2F3F8") 
	Furniture_Map[? item][? furn.light_color_2]=make_color_hex("B1E3EC")
	Furniture_Map[? item][? furn.light_brightness]=400	
	Furniture_Map[? item][? furn.light_instablility]=0.6	
	Furniture_Map[? item][? furn.light_direction]=200	
	Furniture_Map[? item][? furn.light_radius]=400	
	Furniture_Map[? item][? furn.light_strength]=0.1
	Furniture_Map[? item][? furn.light_instablility]=0.9
	
	
		
		item="Monster_Pink_Lamp"
	desc="monster light"
	class=obj_class.light
	price=10
	points=0
	start_x=1
	start_y=1
	size_x=2
	size_y=2
	Set_Furniture_Item(item,name,desc,class,price,race,style1,style1_level,style2,style2_level,points,start_x,start_y,size_x,size_y,is_merch)
	Furniture_Map[? item][? furn.light_color_1]=make_color_hex("E00061") 
	Furniture_Map[? item][? furn.light_color_2]=make_color_hex("E00061")
Furniture_Map[? item][? furn.light_brightness]=400	
	Furniture_Map[? item][? furn.light_instablility]=0.6	
		Furniture_Map[? item][? furn.light_direction]=200	
	Furniture_Map[? item][? furn.light_radius]=200	
	Furniture_Map[? item][? furn.light_strength]=0.5
	Furniture_Map[? item][? furn.light_instablility]=0.9

		item="Candle_Red"
	desc="candle"
	class=obj_class.light
	price=10
	points=0
	start_x=0
	start_y=-1
	size_x=1
	size_y=1
	Set_Furniture_Item(item,name,desc,class,price,race,style1,style1_level,style2,style2_level,points,start_x,start_y,size_x,size_y,is_merch)
	Furniture_Map[? item][? furn.light_color_1]=make_color_hex("FF6881") 
	Furniture_Map[? item][? furn.light_color_2]=make_color_hex("E50026")
	Furniture_Map[? item][? furn.light_brightness]=200	
	Furniture_Map[? item][? furn.light_instablility]=0.6	
		Furniture_Map[? item][? furn.light_direction]=200	
	Furniture_Map[? item][? furn.light_radius]=200	
	Furniture_Map[? item][? furn.light_strength]=0.5
	Furniture_Map[? item][? furn.light_instablility]=0.9
	
		item="Candle_Aqua"
	desc="candle"
	class=obj_class.light
	price=10
	points=0
	start_x=0
	start_y=-1
	size_x=1
	size_y=1
	Set_Furniture_Item(item,name,desc,class,price,race,style1,style1_level,style2,style2_level,points,start_x,start_y,size_x,size_y,is_merch)
	Furniture_Map[? item][? furn.light_color_1]=make_color_hex("00BBFF") 
	Furniture_Map[? item][? furn.light_color_2]=make_color_hex("00BBFF")
	Furniture_Map[? item][? furn.light_brightness]=200	
	Furniture_Map[? item][? furn.light_instablility]=0.6	
		Furniture_Map[? item][? furn.light_direction]=200	
	Furniture_Map[? item][? furn.light_radius]=200	
	Furniture_Map[? item][? furn.light_strength]=0.5
	Furniture_Map[? item][? furn.light_instablility]=0.9
//RACE : NORMAL
//=====================
race=char.toads
style1=furn_style.wild
	
	//LEVEL 0:
	style1_level=1
	
	item="Bed_Toad_1"
	desc="lillypad bed"
	class=obj_class.bed
	price=10
	points=0
	start_x=3
	start_y=2
	size_x=7
	size_y=5
	Set_Furniture_Item(item,name,desc,class,price,race,style1,style1_level,style2,style2_level,points,start_x,start_y,size_x,size_y,is_merch)
	
	item="Lillypad_Table"
	desc="lillypad bedside table"
	class=obj_class.shelf_decor
	price=10
	points=0
	start_x=1
	start_y=1
	size_x=3
	size_y=3
	Set_Furniture_Item(item,name,desc,class,price,race,style1,style1_level,style2,style2_level,points,start_x,start_y,size_x,size_y,is_merch)
	
		item="SwampRug"
	desc="swamp rug"
	class=obj_class.floor_decor
	price=10
	points=0
	start_x=3
	start_y=2
	size_x=7
	size_y=5
	Set_Furniture_Item(item,name,desc,class,price,race,style1,style1_level,style2,style2_level,points,start_x,start_y,size_x,size_y,is_merch)
	
	item="Plant_Reeds"
	desc="Reeds"
	class=obj_class.standing_decor
	price=10
	points=0
	start_x=1
	start_y=3
	size_x=3
	size_y=5
	Set_Furniture_Item(item,name,desc,class,price,race,style1,style1_level,style2,style2_level,points,start_x,start_y,size_x,size_y,is_merch)
	
	item="Plant_Lillypads"
	desc="Lillypads"
	class=obj_class.standing_decor
	price=10
	points=0
	Set_Furniture_Item(item,name,desc,class,price,race,style1,style1_level,style2,style2_level,points)
	
	item="Glow_Shroom_Blue"
	desc="glow shroom green"
	class=obj_class.light
	price=10
	points=0
	start_x=1
	start_y=1
	size_x=3
	size_y=3
	Set_Furniture_Item(item,name,desc,class,price,race,style1,style1_level,style2,style2_level,points,start_x,start_y,size_x,size_y,is_merch)
	Furniture_Map[? item][? furn.light_color_1]=make_color_hex("17F73C") 
	Furniture_Map[? item][? furn.light_color_2]=make_color_hex("0E8E2A")
	Furniture_Map[? item][? furn.light_brightness]=200	
	Furniture_Map[? item][? furn.light_instablility]=0.6	
	Furniture_Map[? item][? furn.light_direction]=200	
	Furniture_Map[? item][? furn.light_radius]=200	
	Furniture_Map[? item][? furn.light_strength]=0.8	
	Furniture_Map[? item][? furn.light_instablility]=0.9
	
//RACE : NORMAL
//=====================
race=char.gnomes
style1=furn_style.wild
	style2=furn_style.wild
	//LEVEL 0:
	style1_level=1
	style2_level=1
	
	item="Bed_Gnome_1"
	desc="gnome bed"
	class=obj_class.bed
	price=10
	points=0
	start_x=3
	start_y=2
	size_x=6
	size_y=5
	Set_Furniture_Item(item,name,desc,class,price,race,style1,style1_level,style2,style2_level,points,start_x,start_y,size_x,size_y,is_merch)
	
	item="Plant_Berry_1"
	desc="Berry branch"
	class=obj_class.standing_decor
	price=10
	points=0
	start_x=1
	start_y=2
	size_x=3
	size_y=4
	Set_Furniture_Item(item,name,desc,class,price,race,style1,style1_level,style2,style2_level,points,start_x,start_y,size_x,size_y,is_merch)
	
	item="Table_Gnome_1"
	desc="tree stump table"
	class=obj_class.table
	price=10
	points=0
	start_x=3
	start_y=2
	size_x=7
	size_y=5
	Set_Furniture_Item(item,name,desc,class,price,race,style1,style1_level,style2,style2_level,points,start_x,start_y,size_x,size_y,is_merch)

	item="Chair_Gnome_1"
	desc="tree stump chair"
	class=obj_class.chair
	price=10
	points=0
	start_x=1
	start_y=2
	size_x=4
	size_y=3
	Set_Furniture_Item(item,name,desc,class,price,race,style1,style1_level,style2,style2_level,points,start_x,start_y,size_x,size_y,is_merch)
}