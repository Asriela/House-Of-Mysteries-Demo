/// @description Insert description here
// You can write your code in this editor
// Button_Pressed(edit_mode_menu_x-50,edit_mode_menu_y-50,100,20,0,"room",c_white,c_black,Edit_Mode,edit.room,0) 
button_was_pressed=0
Has_Pressed_Button_This_Step=0
exit_plus=340
Over_Gui = 0;
if (Skip_Frame == 1)
    exit;
Draw_Held_Furn = 0;
var edit_mode_menu_x = 100
    ;
var edit_mode_menu_y = View_Height - 100
    ;
var default_input = controls
    .left_click;

chosen=0
switch(Edit_Mode)
{
	case edit.room: chosen =1; break;
	case edit.object: chosen =2; break;
	case edit.recipies: chosen =3; break;
}
draw_sprite_ext(sGui_Pie_Menu,chosen,edit_mode_menu_x+30,edit_mode_menu_y,1,1,0,c_white,1)
Edit_Mode = Button_Pressed(edit_mode_menu_x - 10, edit_mode_menu_y - 44, 80, 76, 0, "", -1, -1, Edit_Mode, edit.room, 0, default_input, 0, shape.square, 0);

Edit_Mode = Button_Pressed(edit_mode_menu_x - 10+80, edit_mode_menu_y - 44, 80, 76, 0, "", -1, -1, Edit_Mode, edit.object, 0, default_input, 0, shape.square, 0);

Edit_Mode = Button_Pressed(edit_mode_menu_x - 10+80, edit_mode_menu_y-44+80, 80, 76, 0, "", -1, -1, Edit_Mode, edit.recipies, 0, default_input, 0, shape.square, 0);
Edit_Mode = Button_Pressed(edit_mode_menu_x - 10, edit_mode_menu_y-44+80, 80, 76, 0, "", -1, -1, Edit_Mode, edit.none, 0, default_input, 0, shape.square, 0);
  

    
    if (Edit_Mode == edit.recipies && Sub_Menu="Ingredient" && obj_gui_back=noone)
    {
		    Item_Being_Placed = noone;
        obj_gui_back = instance_create_depth(MultiTrackCamera.x, MultiTrackCamera.y, -9000, oSolid);
        obj_gui_back.sprite_index = sGUI_FoodBack;
		
        
        ob_gui_bowl = instance_create_depth(MultiTrackCamera.x, MultiTrackCamera.y + 100, -9100, oSolid);
        ob_gui_bowl.sprite_index = sIng_Bowl_Matt;
        ob_gui_bowl.image_xscale = 2;
        ob_gui_bowl.image_yscale = 2;
        ob_gui_bowl.draw_sprite_index = sIng_Bowl;
        Obj_Food_Back = ob_gui_bowl;

    }
	else
    if ((last_edit_mode == edit.recipies && Edit_Mode != edit.recipies) || (Sub_Menu!="Ingredient" && Last_Sub_Menu="Ingredient"))
    {
		if obj_gui_back!=noone
		if exists(obj_gui_back){
        instance_destroy(obj_gui_back);
        instance_destroy(ob_gui_bowl);
		obj_gui_back=noone
		}
    }

Last_Sub_Menu = Sub_Menu;

Last_Edit_Mode=Edit_Mode
last_edit_mode = Edit_Mode;

var edit_mode_menu_y = 50
/// ITEM MENUS
;
switch (Edit_Mode)
{
			case edit.trade:
			draw_set_color(c_black)
			draw_set_alpha(0.7)
			draw_rectangle(0,0,room_width,room_height,0)
						draw_set_alpha(1)
			            var starting_x = View_Width / 2
            var starting_y = View_Height / 2+50
            draw_sprite(sGui_TradeBack, 0, starting_x, starting_y);
								draw_set_color(c_old)
			            draw_sprite_ext(sPort_PorcupineTrader, 0, starting_x, 235-30, 2, 2, 0, c_white, 1);
          draw_set_font(f_Speak_Large);
                    draw_text(starting_x, 235+90, "TRADER");
					down_value=395-25

					    draw_set_font(f_Speak);
						draw_set_alpha(0.7)
					           draw_text_ext(starting_x, down_value+10, "''I can only sell you things based on your reputation with the five elements of the forest.' said the porcupine looking at you curiously", 22, 950);
		           down_value+=70
				   draw_set_font(f_Speak_Small);
					 draw_set_alpha(0.7)
					 starting_x-=390
					 var image_alpha_var=0
down_value+=70
								var style1=furn_style.lodge 
								draw_set_color(Get_Class_Color(style1))
													var amount = Style_Progression_Map[? style1]
										draw_text(starting_x , down_value, "Neutral " + st(amount));

            draw_sprite_ext(sGui_Speak_Relationship_Bar_2, amount + 3, starting_x , down_value-20, 1, 1, 0, c_white, image_alpha_var);
starting_x+=200

								var style1=furn_style.wild draw_set_color(Get_Class_Color(style1))
													var amount = Style_Progression_Map[? style1]
										draw_text(starting_x , down_value, "Wild " + st(amount));

            draw_sprite_ext(sGui_Speak_Relationship_Bar_2, amount + 3, starting_x , down_value-20, 1, 1, 0, c_white, image_alpha_var);
			starting_x+=200


								var style1=furn_style.arcane draw_set_color(Get_Class_Color(style1))
													var amount = Style_Progression_Map[? style1]
										draw_text(starting_x , down_value, "Spirit " + st(amount));

            draw_sprite_ext(sGui_Speak_Relationship_Bar_2, amount + 3, starting_x , down_value-20, 1, 1, 0, c_white, image_alpha_var);
			
starting_x+=200
								var style1=furn_style.sci_fi draw_set_color(Get_Class_Color(style1))
													var amount = Style_Progression_Map[? style1]
										draw_text(starting_x , down_value, "Scholarly " + st(amount));

            draw_sprite_ext(sGui_Speak_Relationship_Bar_2, amount + 3, starting_x , down_value-20, 1, 1, 0, c_white, image_alpha_var);
			

			
starting_x+=200

								var style1=furn_style.regal draw_set_color(Get_Class_Color(style1))
								var amount = Style_Progression_Map[? style1]
										draw_text(starting_x , down_value, "Regal "  + st(amount));
					
            draw_sprite_ext(sGui_Speak_Relationship_Bar_2, amount + 3, starting_x, down_value-20, 1, 1, 0, c_white, image_alpha_var);
			

	
			starting_x=View_Width / 2-410
			starting_y+=20
downward=0
draw_set_alpha(1)
			             Exit_Menu(starting_x+445, starting_y+53+downward)

						  
							
			var furn_item=ds_map_find_first(Furniture_Map)

			var row_count=0
			draw_set_font(f_Speak)
		//		  draw_text(View_Width / 2, starting_y-50,Selected_Name)
				  							Selected_Name=""
				  			  starting_y+=20
							  			draw_set_font(fStandard)
						draw_set_color(c_white)
			for(var f=0;f<ds_map_size(Furniture_Map);f++)
			{



			  
		
				if Furniture_Map[? furn_item][?furn.race] =char.none || Furniture_Map[? furn_item][? furn.style1_level]<=Style_Progression_Map[? Furniture_Map[? furn_item][?furn.style1]]{
					
					              if row_count>7
			  {
				  row_count=0
				  starting_y+=150
				  starting_x=View_Width / 2-410
			  }
			  else
			  row_count++
			  
							var price=Furniture_Map[? furn_item][? furn.price];
							col2=c_my_blue
							if price<=Cash
							col2=c_old
											Over_Button_Id=0
												draw_set_color(c_old)
											draw_text(starting_x,starting_y-50,Furniture_Map[? furn_item][?furn.desc])
							if Button_Pressed(starting_x , starting_y+33 , 90, 140, 0, "", col2, c_black, Talk_Menu, 0, 1, default_input, 1, shape.square, 0){
								if price<=Cash{
								Cash-=price
								if is_undefined(Furniture_Count_Map[? furn_item])
								Furniture_Count_Map[? furn_item]=1
								else
								Furniture_Count_Map[? furn_item]++
								}
							}

							if Over_Button_Id=1
							Selected_Name= Furniture_Map[? furn_item][?furn.desc]
							
							var count=Furniture_Count_Map[? furn_item]
							if is_undefined(count) count=0
			draw_text(starting_x,starting_y-30,st(count)+"  ")
				draw_sprite(asset_get_index("sObj_"+furn_item),0,starting_x,starting_y)
				draw_set_color(c_grey)
							draw_text(starting_x,starting_y+30,	st(price)+"$")

								var style1_level=Furniture_Map[? furn_item][? furn.style1_level];
														draw_text(starting_x,starting_y+47+34+14,	"L"+st(style1_level))
				draw_text(starting_x,starting_y+47,	Character_Enum_To_Text(Furniture_Map[? furn_item][? furn.race]) )

				draw_set_color(c_my_blue)
								var style1=Furniture_Map[? furn_item][? furn.style1]
												draw_set_color(Get_Class_Color(style1))
									if style1!=-1
				draw_text(starting_x,starting_y+47+17,	Furn_Class_Enum_To_Text(style1)	)
				var style2=Furniture_Map[? furn_item][? furn.style2]

				if style2!=noone{
									draw_set_color(Get_Class_Color(style2))
						draw_text(starting_x,starting_y+47+34,	Furn_Class_Enum_To_Text(style2)	)
				
				}
				starting_x+=120
				}
				
				 furn_item=ds_map_find_next(Furniture_Map,furn_item)
			}
			
		break;
			case edit.guest_arrive:
			        draw_set_font(fStoryLarge);
					            var starting_x = View_Width / 2
                ;
            var starting_y = View_Height / 2

            draw_sprite(sGui_Guest_Review, 0, starting_x, starting_y);

						
						draw_set_color(c_my_orange)
			    draw_text(starting_x, 180, Guest_Map[? Arrived_Guest.guest_id][? guest_detail.name]+" has arrived");
		            draw_sprite_ext(Guest_Map[? Arrived_Guest.guest_id][? guest_detail.portrait], 0, starting_x, 260, 2, 2, 0, c_white, 1);
						draw_set_color(c_white)	
						starting_y=430
draw_set_font(f_StoryMedium)
draw_set_alpha(0.7)
	draw_text(starting_x, starting_y-50," Give guest which activities schedual?")
draw_set_alpha(1)	
	Arrived_Guest.event_slot=Button_Pressed(starting_x-100 , starting_y+10 , 160, 60, 0, "Schedual 1", c_my_blue, c_black, Arrived_Guest.event_slot, 1, 0, default_input, 0, shape.square, 0)
	Arrived_Guest.event_slot=Button_Pressed(starting_x+100 , starting_y+10 , 160, 60, 0, "Schedual 2", c_my_blue, c_black, Arrived_Guest.event_slot, 2, 0, default_input, 0, shape.square, 0)
	draw_set_alpha(0.7)
	starting_y+=80
				draw_set_color(c_white)	
	draw_text(starting_x, starting_y," Needs of guest:")
						var map=Arrived_Guest.satisfaction_map;
					var t_need=ds_map_find_first(map)
					var total=0;
						draw_set_alpha(1)
	draw_set_color(c_my_blue)
					draw_set_font(fStory)
							starting_y+=30
				for (var k = 0; k < ds_map_size(map); k++) {
					var text=Need_Enum_To_Text(t_need)
					//sm(text)
						draw_text(starting_x, starting_y,text)
										t_need=ds_map_find_next(map,t_need)		
										starting_y+=30
				}
	draw_set_font(f_StoryMedium)
			draw_set_alpha(0.7)
				starting_y=430
								draw_set_color(c_white)	
		draw_text(starting_x, starting_y+300,"Accept guest?")
	if Button_Pressed(starting_x-100 , starting_y+380 , 140, 80, 0, "Accept", c_my_bar_green, c_black, Talk_Menu, 0, 1, default_input, 0, shape.square, 0)
	|| Dev_Help[? dev_help.auto_accept_guests]=1{
		Edit_Mode=edit.none
		if Chosen_Tutorial=tu.arrival{

		
		
		if Dev_Help[? dev_help.immediate_quest]=1{
			var our_ghost=Get_Guest_Object(char.ghost);
		if our_ghost!=-1{
			

			Chosen_Tutorial=tu.ghost 
Give_Quest(our_ghost,quest.ask_out)
	
		//	ss()
//with(our_ghost)
//sm(Get_Variable("person_to_meet"))
	Guest_Map[? char.ghost][? guest_detail.visual_description]="the ghost appears to be showing you by creating forms out of their hands that they are in love with Gnor the gnome, they seem to want to know whether you think they should confess their love "
		}
		}
		else
		Chosen_Tutorial=tu.take_bags
		
		}
		
	}
	if Button_Pressed(starting_x+100 , starting_y+380 , 140, 80, 0, "Reject", c_my_bar_red, c_black, Talk_Menu, 0, 1, default_input, 0, shape.square, 0){
		
		//Relationships_Map[? Guest_Map[? Arrived_Guest.guest_id][? guest_detail.type]]-=1
		//Edit_Mode=edit.none
		//instance_destroy(Arrived_Guest)
	}
			break;
		case edit.guest_leave:
		            draw_set_font(fStoryLarge);
					            var starting_x = View_Width / 2
                ;
            var starting_y = View_Height / 2

            draw_sprite(sGui_Guest_Review, 0, starting_x, starting_y);

						
						draw_set_color(c_my_orange)
			    draw_text(starting_x, 180, Guest_Map[? Left_Guest.guest_id][? guest_detail.name]+" left");
		            draw_sprite_ext(Guest_Map[? Left_Guest.guest_id][? guest_detail.portrait], 0, starting_x, 250, 2, 2, 0, c_white, 1);
						draw_set_color(c_white)	
						starting_y=410
draw_set_font(f_StoryMedium)
					starting_y+=20
					var map=Left_Guest.satisfaction_map;
					var t_need=ds_map_find_first(map)
					var total=0;
				for (var i = 0; i < ds_map_size(map); ++i) {
											    // code here
												draw_set_alpha(0.7)
					draw_text(starting_x, starting_y,Need_Enum_To_Text(t_need)+" rating:")
					draw_sprite_ext(sGui_Speak_Relationship_Bar,map[? t_need]+3,starting_x, starting_y+30,2,2,0,c_white,0.3)
					   //cycle thru all needs
					  	starting_y+=80			
											total+=map[? t_need]
					t_need=ds_map_find_next(map,t_need)				

			}								
			draw_set_alpha(1)
	var total_satisfaction=total/ ds_map_size(map);
							starting_y=360
							var paid=Guest_Map[? Left_Guest.guest_id][? guest_detail.cash]*((total_satisfaction+3)/7)
				    draw_text(starting_x, starting_y,"Paid: "+ st(paid)+"$")		
					starting_y+=30
					   draw_text(starting_x, starting_y,"Total Satisfaction: "+st(total_satisfaction+3)+"/6")
					   
					   starting_y=View_Height/2
					   
					   						if Exit_Menu(starting_x-220,starting_y){
													Relationships_Map[? Guest_Map[? Arrived_Guest.guest_id][? guest_detail.type]]+=(total_satisfaction/3)/2
						instance_destroy(Left_Guest)
						Cash+=paid;
											}
		break;
case edit.review_day:
		            draw_set_font(fStoryLarge);
					            var starting_x = View_Width / 2
                ;
            var starting_y = View_Height / 2

            draw_sprite(sGui_Guest_Review_2, 0, starting_x, starting_y);

		draw_set_font(f_StoryLarge)				
						draw_set_color(c_my_orange)
			    draw_text(starting_x, 250, "end of day review");
		            //draw_sprite_ext(Guest_Map[? Left_Guest.guest_id][? guest_detail.portrait], 0, starting_x, 250, 2, 2, 0, c_white, 1);
						draw_set_color(c_white)	
						starting_y=360
draw_set_font(f_StoryMedium)
					starting_y+=20
					var total_money=0
											starting_y+=56
											
										if Do_Review{
											Chosen_Tutorial=tu.review
										}
				for(var g=0;g<ds_list_size(Current_Housed_Guests_List);g++)
				{
				
					var guest=Current_Housed_Guests_List[| g]
					var guests_id=guest.guest_id

					
						
														if guest.was_reviewed_today=0
										{
											guest.was_reviewed_today=1
											if guest.need_satisfied[? need.eat]=0
											guest.my_mood-=15
											if guest.need_satisfied[? need.sleep]=0
											guest.my_mood-=15
												if guest.need_satisfied[? need.social]=0
											guest.my_mood-=15
										}
				
							var mood_index=(guest.my_mood/100)*6								
					       draw_sprite_ext(Guest_Map[? guests_id][? guest_detail.portrait], 0, starting_x-140-80, starting_y+g*100, 1, 1, 0, c_white, 1);
					draw_sprite_ext(sGui_Speak_Relationship_Bar,mood_index,starting_x+50+90, starting_y-10+g*100,2,2,0,c_white,0.5)	
					
					
					
					if guest.need_satisfied[? need.sleep]<=0
					draw_sprite_ext(sGUI_Needs,1,starting_x-20+80, starting_y+10+g*100,1,1,0,c_my_bar_red,0.5)	
					if guest.need_satisfied[? need.eat]<=0
					draw_sprite_ext(sGUI_Needs,0,starting_x-20+80, starting_y+10+g*100,1,1,0,c_my_bar_red,0.5)	
					if guest.need_satisfied[? need.social]<=0
					draw_sprite_ext(sGUI_Needs,2,starting_x-20+80, starting_y+10+g*100,1,1,0,c_my_bar_red,0.5)						

					col=c_white
					if mood_index <3
					col=c_my_bar_red
					else
					if mood_index =6 
					col=c_my_bar_green
					draw_set_color(col)
					draw_set_valign(fa_center)
						draw_set_font(f_Story_Small)				
					draw_roundrect(starting_x-100-50-40,starting_y+25+g*100,starting_x-100-50-40+45,starting_y+g*100-25,1)
					var money_given=Guest_Map[? guests_id][? guest_detail.cash]*guest.my_mood/100
					draw_text(starting_x-75-50-40,starting_y+0+g*100+3,st(int64(money_given))+"$")
					total_money+=money_given
					draw_roundrect(starting_x-105+20-40+7,starting_y+25+g*100,starting_x-100+60+20+40+7,starting_y+g*100-25,1)
					var element_change=mood_index-3
										var element=Guest_Map[? guests_id][? guest_detail.element];
					if Do_Review=1{

Style_Progression_Map[? element]+=element_change


					}
					draw_set_font(f_Story_Extra_Small)	

					col=Get_Class_Color(element)
					draw_set_color(col)
					var sign_text="+"
					if element_change<0
					sign_text=""
					draw_text(starting_x-60+4+25,starting_y+0+g*100+3,sign_text+st(int64(element_change))+"")
					var element_index=0
					if element=furn_style.wild
					element_index=2
								if element=furn_style.arcane
					element_index=1	
					draw_sprite_ext(sGUI_Elements,element_index,starting_x-90+4+25,starting_y+0+g*100+3,1,1,0,col,1)

										
				}
				if Do_Review=1{
				Cash+=total_money
				
				}
				Do_Review=0
				draw_set_font(fStoryLarge)	
				draw_set_color(c_my_orange)
				draw_text(starting_x,starting_y+430,"Total earned: "+st(total_money)+"$")
				if Exit_Menu(starting_x-220,starting_y+110)
				{
					Chosen_Tutorial=tu.alien
							 Add_Guest_To_Arrive(World_Hour+1,char.alien)
				
				}

		break;		
    case edit.speak:
        if (Current_Guest != noone)
        {
            var starting_x = View_Width / 2
                ;
            var starting_y = View_Height / 2
                ;
				draw_set_color(c_black)
				draw_set_alpha(0.7)
				draw_rectangle(0,0,room_width,room_height,0)
				draw_set_alpha(1)
							var downward=60
            draw_set_font(fStoryLarge);
            draw_sprite(sGui_SpeakBack, 0, starting_x, starting_y+downward);
            portrait_animation+=0.2

            // Speaking_To.portrait
			draw_set_color(c_white)
            draw_text(starting_x, 295-20+10+downward, Guest_Map[? Current_Guest.guest_id][? guest_detail.name]);
            draw_set_font(fStory);
            draw_set_alpha(0.4);
          //  draw_text(starting_x, 330, Guest_Map[? Current_Guest.guest_id][? guest_detail.prefix]);
            draw_sprite_ext(Guest_Map[? Current_Guest.guest_id][? guest_detail.portrait], portrait_animation, starting_x, 220-60+downward,2, 2, 0, c_white, 1);
            draw_set_font(fStory);
            
            
            draw_set_alpha(0.4);
            draw_set_halign(fa_center);
            var amount = Guest_Map[? Current_Guest.guest_id][? guest_detail.openness];
           	 if last_flash_openess!=flash_openess
			 {
				 flash_value=1

			 }
           // draw_sprite_ext(sGui_Speak_Relationship_Bar, amount + 3, starting_x + 250, 290, 2+0.3*flash_value, 2+0.3*flash_value, 0, merge_color(c_white,flash_openess,flash_value), 0.3+flash_value);
		if flash_value>0
		flash_value-=0.01
		else
		flash_value=0
		last_flash_openess=flash_openess
            var amount = Guest_Map[? Current_Guest.guest_id][? guest_detail.impression_of_player];
        //    draw_sprite_ext(sGui_Speak_Relationship_Bar, amount + 3, starting_x - 250, 290, 2, 2, 0, c_white, 0.3);
            draw_set_alpha(0.4);
          //  draw_text(starting_x - 250, 260, "Satisfaction");
            
       //     draw_text(starting_x + 250, 260, "Openness");
            draw_set_font(f_Speak_Normal);
            draw_set_alpha(0.8);
			if last_guest_speaking_text!=guest_speaking_text{
				typed_guest_text=""
								 time_until_next_word=1
								 text_alpha=0
			}

			draw_set_alpha(text_alpha)
			draw_set_halign(fa_left)
						draw_set_valign(fa_left)
if Current_Guest.has_quest!=noone
			draw_set_color(c_my_orange)
			else
						draw_set_color(c_old)
            draw_text_ext(starting_x-505, 370-60+downward, typed_guest_text, 32, 1000);
			            draw_set_halign(fa_center);
			draw_set_alpha(1)
			if text_alpha<1
			text_alpha+=0.02
			 time_until_next_word--
			 if time_until_next_word<=0{
		
			typed_guest_text=Type_More_Text(typed_guest_text,guest_speaking_text)
			 }
			last_guest_speaking_text=guest_speaking_text

            
            draw_set_font(f_OptionsMedium);
            if (Talk_Menu == talk_menu.main)
            {
				if Skip_First=1
				{Skip_First=0 break; }
                Exit_Speak_Menu(starting_x+34, starting_y+75+downward);
                starting_y = 550;
                Talk_Menu_Text = "";
                col = make_color_rgb(141, 146, 151);
                starting_y += 130;
                col2 = col;
                if (spoke_about_about)
                    col2 = c_dkgrey;
  /*              Talk_Menu = Button_Pressed(starting_x - 200, starting_y + 80, 340, 80, 0, "Where are you headed?", col2, c_black, Talk_Menu, talk_menu.up_to, 0, default_input, 0, shape.square, 0);
             if  Button_Pressed(starting_x + 200, starting_y + 80, 340, 80, 0, "Exit", c_my_orange, c_black, Talk_Menu, 1, 1, default_input, 0, shape.square, 0)
             {
				 						Edit_Mode=edit.none
						            Sub_Menu = "";
									Current_Guest=noone
			 }
			 */
			 col2 = col;
                if (spoke_about_news)
                    col2 = c_dkgrey;
                
                //	Talk_Menu=Button_Pressed(starting_x+200,starting_y+80,340,80,0,"Any news?",col2,c_black,Talk_Menu,talk_menu.news,0,default_input,0,shape.square,0)
                
                starting_y -= 130;
                draw_set_color(c_dkgrey)
				if exists(Current_Guest)
				if Current_Guest.has_quest!=noone
				{
					                if Button_Pressed(starting_x - 400, starting_y + 10+downward, 340, 80,sGUI_Speak_Option,"Yes",c_old,c_yellow,0,0,1,controls.left_click,0,shape.square,0){
					
									var our_ghost=Get_Guest_Object(char.ghost);
									var our_hare=Get_Guest_Object(char.gnor_the_gnome)
	
									Set_Variable_Of(our_ghost,"person_to_meet",our_hare)
									Edit_Mode=edit.none
									
									}
									//Button_Pressed(starting_x - 400, starting_y + 10+downward, 340, 80, sGUI_Speak_Option, "Yes", -1, c_yellow, Talk_Menu,1, 1, default_input, 0, shape.square, 0)
      
                
       if      Button_Pressed(starting_x + 400, starting_y + 10+downward, 340, 80, sGUI_Speak_Option, "No", c_old, c_yellow, Talk_Menu, 1, 1, default_input, 0, shape.square, 0)
			if Has_Pressed_Button_This_Step{
			Chosen_Tutorial=tu.ending
Edit_Mode=edit.none
				 
			}
				}
				else{
                Talk_Menu = Button_Pressed(starting_x - 400, starting_y + 10+downward, 340, 80, sGUI_Speak_Option, "Ask info", -1, c_yellow, Talk_Menu, talk_menu.question_people, 0, default_input, 0, shape.square, 0);
                
                
                Talk_Menu = Button_Pressed(starting_x + 400, starting_y + 10+downward, 340, 80, sGUI_Speak_Option, "Share info", -1, c_yellow, Talk_Menu, talk_menu.statement_people, 0, default_input, 0, shape.square, 0);
                
	                Talk_Menu = Button_Pressed(starting_x , starting_y + 180+downward, 340, 80, sGUI_Speak_Option, "Instruct", -1, c_yellow, Talk_Menu, talk_menu.instruct, 0, default_input, 0, shape.square, 0);
				}
		
				if (Talk_Menu == talk_menu.up_to)
                {
                    spoke_about_about = 1;
                    Talk_Menu = talk_menu.main;
                    Last_Talk_Menu = Talk_Menu;
								  var guest_map=Guest_Map[? Current_Guest.guest_id]
					  			var pronoun=guest_map[?  guest_detail.pronoun]
                    guest_speaking_text = Guest_Map[? Current_Guest.guest_id][? guest_detail.up_to];
                }
                if (Talk_Menu == talk_menu.news && guest_speaking_text=-10)
                {
                    spoke_about_news = 1;
                    Talk_Menu = talk_menu.main;
                    Last_Talk_Menu = Talk_Menu;
                    guest_speaking_text = Find_Newsworthy_Memory(Current_Guest.guest_id);
                }
            }
			else
			draw_sprite(sGui_SpeakBack_2,0,starting_x,starting_y+downward)
            
            if (Talk_Menu == talk_menu.question)
            {
                starting_y = 550;
                Talk_Menu_Text = "Ask...";
                col = make_color_rgb(141, 146, 151);
                Last_Talk_Menu = Talk_Menu;
                Talk_Menu = Button_Pressed(starting_x - 200, starting_y + 80, 340, 80, 0, "People...", col, c_black, Talk_Menu, talk_menu.question_people, 0, default_input, 0, shape.square, 0);
                Talk_Menu = Button_Pressed(starting_x + 200, starting_y + 80, 340, 80, 0, "Things...", col, c_black, Talk_Menu, talk_menu.question_things, 0, default_input, 0, shape.square, 0);
                if (Button_Pressed(starting_x, starting_y + 270, 130, 50, 0, "208", color_drinking, c_black, Chosen_Feeling, 0, 1, default_input, 0, shape.square, 0))
                {
                    Talk_Menu = talk_menu.main;
                }
            }
            
            if (Talk_Menu == talk_menu.statement)
            {
                starting_y = 550;
                Talk_Menu_Text = "Say...";
                col = make_color_rgb(141, 146, 151);
                Last_Talk_Menu = Talk_Menu;
                Talk_Menu = Button_Pressed(starting_x - 200, starting_y + 80, 340, 80, 0, "People...", col, c_black, Talk_Menu, talk_menu.statement_people, 0, default_input, 0, shape.square, 0);
                Talk_Menu = Button_Pressed(starting_x + 200, starting_y + 80, 340, 80, 0, "Things...", col, c_black, Talk_Menu, talk_menu.statement_things, 0, default_input, 0, shape.square, 0);
                if (Button_Pressed(starting_x, starting_y + 208, 130, 50, 0, "BACK", color_drinking, c_black, Chosen_Feeling, 0, 1, default_input, 0, shape.square, 0))
                {
                    Talk_Menu = talk_menu.main;
                }
            }
            
            draw_set_font(f_Speak);
			
								starting_y+=80
			////////////////////////////////
  ////QUESTION          
  			////////////////////////////////
            if (Talk_Menu == talk_menu.question_people || Talk_Menu == talk_menu.question_things)
            {
				
                draw_set_font(f_OptionsMedium);
               if   Exit_Speak_Menu(starting_x+34, starting_y+75+downward)exit;
                if (Talk_Menu == talk_menu.question_people)
                {
                    var people_map = Guest_Map[? char.player][? guest_detail.people_memories_map]
                        ;
                    Talk_Menu_Text = "Ask about...";
                }
                else
                {
                    var list = Known_Things_Memory_Tags_List
                        ;
                    Talk_Menu_Text = "Ask about things...";
                    var mem_type = guest_detail
                    
                    .things_memories_map;
                }
                var hor_index = 0
                    ;
                var vert_index = 0
                    ;
                if (Button_Pressed(starting_x, starting_y + 208, 130, 50, 0, "BACK", color_drinking, c_black, Chosen_Feeling, 0, 1, default_input, 0, shape.square, 0))
                {
                    Talk_Menu = talk_menu.main;
                }
                var person = ds_map_find_first(people_map)
                    ;

                for (i = 0; i < ds_map_size(people_map) + 1; i++)
                {
                    if (i == 0)
                    {
										var news_struct=Find_Newsworthy_Memory(Current_Guest.guest_id);
					if Could_Find_News
						var col2= c_white
					else
					var col2=c_dkgray
					  var guest_map=Guest_Map[? Current_Guest.guest_id]
					  			var pronoun=guest_map[?  guest_detail.pronoun]
                        if (Button_Pressed(starting_x - 300 + hor_index * 150, starting_y + 70 + 50 * vert_index, 130, 60, 0, "News", col2, c_black, Chosen_Memory, 1, 1, default_input, 0, shape.square, 0))
                       if Could_Find_News
					   {
			
						   if Chosen_Tutorial=tu.ghost Chosen_Tutorial=tu.instruct
						   flash_openess=c_my_bar_red
						   Guest_Map[? Current_Guest.guest_id][? guest_detail.openness]-=news_struct.penalty//relationship
						   
						  Add_People_Memory( char.player,news_struct.a,news_struct.b,news_struct.secrecy,0,Truths_Map[? news_struct.a][? news_struct.b][? truth.emotion])
						 
						  var memory_map= 		guest_map[?  guest_detail.people_memories_map][? news_struct.a][? news_struct.b]
						  memory_map[? memory_detail.news_memory]=0
					var emotion_text=Get_Statement_Emotion_Text(guest_map[?  guest_detail.pronoun],guest_map[?  guest_detail.pronoun2],memory_map[?memory_detail.emotion])
                            
                            guest_speaking_text =Truths_Map[? news_struct.a][? news_struct.b][? truth.long_text]+" "+emotion_text
							break;
                        }
						else
						guest_speaking_text=pronoun+" either didn't have any more news or didn't want to share it with you"
                    }
                    else
                    {
                        //	 sm(ds_map_size(people_map))
                        //	 sm(person)
                        text_of_memory = Character_Enum_To_Text(person);
						var fact_struct=Get_Highest_Value_Truth(Current_Guest.guest_id, person);
						if fact_struct=-1
						var col2=c_dkgray
						else
						var col2=c_white
										  var guest_map=Guest_Map[? Current_Guest.guest_id]
					  			var pronoun=guest_map[?  guest_detail.pronoun]
                     Chosen_Person = Button_Pressed(starting_x - 300 + hor_index * 150, starting_y + 70 + 50 * vert_index, 130, 60, 0, "", col2, c_black, Chosen_Person, -5, 1, default_input, 0, shape.square, 0) // if openess is more than secrecy
                       draw_sprite_ext(Guest_Map[? person][? guest_detail.portrait],0, starting_x - 300 + hor_index * 150, starting_y + 70 + 50 * vert_index-10, 1, 1, 0, c_white, 1);
					draw_set_font(f_small)
					draw_text( starting_x - 300 + hor_index * 150, starting_y + 70 + 50 * vert_index+20,  text_of_memory)
					   if (Button_Was_Pressed)
							{
								if fact_struct!=-1{
                                guest_speaking_text = Truths_Map[? person][? fact_struct.memory][? truth.long_text]
						flash_openess=c_my_bar_red
								Guest_Map[? Current_Guest.guest_id][? guest_detail.openness]-=fact_struct.penalty
								}
								else
								guest_speaking_text=pronoun+" either didn't know anything more about them, or didn't want to share it with you"
							}
                        person = ds_map_find_next(people_map, person);
                    }
                    hor_index += 1;
                    if (hor_index > 5)
                    {
                        vert_index++;
                        
                        hor_index = 0;
                    }
                }
            }
			////////////////////////////////
  ////STATEMENT          
  			////////////////////////////////
            if (Talk_Menu == talk_menu.statement_people || Talk_Menu == talk_menu.statement_things)
            {
                draw_set_font(f_OptionsMedium);
                Exit_Speak_Menu(starting_x+34, starting_y+75+downward)
				
                if (Button_Pressed(starting_x, starting_y + 208, 130, 50, 0, "BACK", color_drinking, c_black, Chosen_Feeling, 0, 1, default_input, 0, shape.square, 0))
                    {
                        Talk_Menu = talk_menu.main;
						break;
                    }
					
   
                    var people_map = Guest_Map[? char.player][? guest_detail.people_memories_map]
                        ;
                    Talk_Menu_Text = "Talk about...";
  
                var hor_index = 0
                    ;
                var vert_index = 0
                if !is_undefined(people_map){
                var person = ds_map_find_first(people_map)
                    ;
                for (i = 0; i < ds_map_size(people_map) ; i++)
				{
                         text_of_memory = Character_Enum_To_Text(person);
             Chosen_Person_Id = Button_Pressed(starting_x - 300 + hor_index * 150, starting_y + 70 + 50 * vert_index, 130, 60, 0, "", col, c_black, Chosen_Person_Id,person, 0, default_input, 0, shape.square, 0) // if openess is more than secrecy
                                       draw_sprite_ext(Guest_Map[? person][? guest_detail.portrait],0, starting_x - 300 + hor_index * 150, starting_y + 70 + 50 * vert_index-10, 1, 1, 0, c_white, 1);
					draw_set_font(f_small)
					draw_text( starting_x - 300 + hor_index * 150, starting_y + 70 + 50 * vert_index+20,  text_of_memory)            
							
							if (Button_Was_Pressed && button_was_pressed=0)
                                {
									Talk_Menu = talk_menu.statement_feelings
									Last_Talk_Menu=talk_menu.statement_people
									Chosen_Person_Id=person
									Chosen_Person=text_of_memory
									button_was_pressed=1
								}
                        person = ds_map_find_next(people_map, person);
                 
                    hor_index += 1;
                    if (hor_index > 5)
                    {
                        vert_index++;
                        
                        hor_index = 0;
                    }
					   }
				}

					   
            }
	if (Talk_Menu == talk_menu.instruct)
       {
				                    Talk_Menu_Text = "Tell them to...";
				        draw_set_font(f_OptionsMedium);
                Exit_Speak_Menu(starting_x+34, starting_y+75+downward)
				
                if (Button_Pressed(starting_x, starting_y + 208, 130, 50, 0, "BACK", color_drinking, c_black, Chosen_Feeling, 0, 1, default_input, 0, shape.square, 0))
                    {
						Chosen_Action=0
                        Talk_Menu = talk_menu.main;
						break;
                    }
					
   hor_index=0
   vert_index=1
           if Button_Pressed(starting_x -160, starting_y +25 + 50 * vert_index, 230, 60, 0, "Speak to...", col, c_black, Chosen_Person_Id,0, 1, default_input, 0, shape.square, 0) // if openess is more than secrecy
       {
		   Chosen_Action=action.talk_to
		   Talk_Menu=talk_menu.instruct_to_who
	   }
	   
	   hor_index=1
		if  Button_Pressed(starting_x+160, starting_y  +25+ 50 * vert_index, 230, 60, 0, "Avoid...", col, c_black, Chosen_Person_Id,0, 1, default_input, 0, shape.square, 0) // if openess is more than secrecy
       {
		   Chosen_Action=action.avoid
		   Talk_Menu=talk_menu.instruct_to_who
	   }                                  
                                  

			}
			
			if (Talk_Menu == talk_menu.instruct_to_who)
            {
				        draw_set_font(f_OptionsMedium);
                Exit_Speak_Menu(starting_x+34, starting_y+75+downward)
				
                if (Button_Pressed(starting_x, starting_y + 208, 130, 50, 0, "BACK", color_drinking, c_black, Chosen_Feeling, 0, 1, default_input, 0, shape.square, 0))
                    {
                        Talk_Menu = talk_menu.main;
						break;
                    }

   
                    var guest_list = Current_Housed_Guests_List
                        ;
						if Chosen_Action=action.talk_to
                    Talk_Menu_Text = "Tell "+Guest_Map[? Current_Guest.guest_id][? guest_detail.name]+" to speak to who?";
						if Chosen_Action=action.avoid
                    Talk_Menu_Text = "Tell "+Guest_Map[? Current_Guest.guest_id][? guest_detail.name]+" to avoid who?";					
					
  
                var hor_index = 0
                    ;
                var vert_index = 0
                if !is_undefined(guest_list){

                    ;
                for (i = 0; i < ds_list_size(guest_list) ; i++)
				{
				
					var pers=guest_list[| i].guest_id
						if Current_Guest.guest_id!=pers{
                         text_of_memory = Character_Enum_To_Text(pers);
						 
						 if Current_Guest.instruction_map[? pers]=action.talk_to
						 						  col=c_my_green
						 else
				
						 if Current_Guest.instruction_map[?pers ]=action.avoid
						  col=c_my_red
						  else
						  col=c_my_grey
						  
             Chosen_Person_Id = Button_Pressed(starting_x - 300 + hor_index * 150, starting_y + 70 + 50 * vert_index, 130, 60, 0, "", col, c_black, Chosen_Person_Id,0, 0, default_input, 0, shape.square, 0) // if openess is more than secrecy
                                       draw_sprite_ext(Guest_Map[? pers][? guest_detail.portrait],0, starting_x - 300 + hor_index * 150, starting_y + 70 + 50 * vert_index-10, 1, 1, 0, c_white, 1);
					draw_set_font(f_small)
					draw_text( starting_x - 300 + hor_index * 150, starting_y + 70 + 50 * vert_index+20,  text_of_memory)            
							
							if (Button_Was_Pressed && button_was_pressed=0)
                                {
								if Current_Guest.instruction_map[? pers ]!=Chosen_Action
								Current_Guest.instruction_map[? pers]=Chosen_Action
								else
								Current_Guest.instruction_map[? pers]=0
								
									button_was_pressed=1
								}

                 
                    hor_index += 1;
                    if (hor_index > 5)
                    {
                        vert_index++;
                        
                        hor_index = 0;
                    }
					   }}
				}

			}
				
 			////////////////////////////////
  ////STATEMENT  PERSONS FACT     
  			////////////////////////////////           
			if Current_Guest=noone{ 
				Edit_Mode=edit.none Talk_Menu=talk_menu.main Sub_Menu=""}
            if (Last_Talk_Menu == talk_menu.statement_people && Talk_Menu == talk_menu.statement_feelings)
            {
		
                if Exit_Speak_Menu(starting_x+34, starting_y+75+downward){
					exit;
				}
                if (Last_Talk_Menu == talk_menu.statement_people)
                {
                    Talk_Menu_Text = "What about " + Chosen_Person+ " do you want to say?";
                    var mem_type = guest_detail.people_memories_map;
                        var known_facts_about_person_map=Guest_Map[? char.player][? guest_detail.people_memories_map][? Chosen_Person_Id]
                }

                if Current_Guest!=noone{
                var hor_index = 0
                    ;
                var vert_index = 0
                    ;
            var  fact=  ds_map_find_first(known_facts_about_person_map)
                for (i = 0; i < ds_map_size(known_facts_about_person_map); i++)
                {
					var fact_text= Truths_Map[? Chosen_Person_Id][? fact][? truth.short_text]
                    var secrecy = 5 - Guest_Map[? char.player][? mem_type][? Chosen_Person_Id][? fact][? memory_detail.memory_secrecy]
					var guest_mem_map= Guest_Map[? Current_Guest.guest_id][? mem_type][? Chosen_Person_Id]
					if !is_undefined(guest_mem_map)
					guest_mem_map=guest_mem_map[? fact]
                        ;
						draw_set_font(f_Speak)
						
						var col2=c_dkgray
						
						if is_undefined(guest_mem_map) 
						col2=c_white
						
                    Chosen_Fact = Button_Pressed(starting_x - 300 + hor_index * 400, starting_y + 70 + 50 * vert_index, 300, 30, 0, fact_text, col2, c_black, Chosen_Fact, fact, 0, default_input, 0, shape.square, 0);
                    					  var guest_map=Guest_Map[? Current_Guest.guest_id]
					  			var pronoun=guest_map[?  guest_detail.pronoun]
                    // if openess is more than secrecy
                    if (Button_Was_Pressed && Chosen_Fact != noone && button_was_pressed=0)
                    {
                
                          if col2!=c_dkgray
                            {
								flash_openess=c_my_bar_green
                                Guest_Map[? Current_Guest.guest_id][? guest_detail.openness] += secrecy/ Guest_Map[? Current_Guest.guest_id][? guest_detail.resistance_to_open]
                          
                                guest_speaking_text = pronoun+" found what you had to say quite interesting"; // Get_Experience_Of_Memory(Current_Guest.guest_id,mem_type,Chosen_Memory)
					
							Add_People_Memory(Current_Guest.guest_id,Chosen_Person_Id,fact,secrecy+5,0,Truths_Map[? Chosen_Person_Id][? fact][? truth.emotion])
                                Guest_Map[? Current_Guest.guest_id][? mem_type][? Chosen_Person_Id][? fact][? memory_detail.memory_talked_about] = 1;
                            }
							else
							guest_speaking_text=pronoun+" already knew that"
                            button_was_pressed=1
                            /*	else{
				//	sm(Guest_Map[? Current_Guest.guest_id][? mem_type][? Chosen_Memory][? memory_detail.memory_feeling])
				Guest_Map[? Current_Guest.guest_id][? mem_type][? Chosen_Memory][? memory_detail.memory_talked_about]=1
				guest_speaking_text="I dont really like talking about that"
							Talk_Menu=talk_menu.main
				Guest_Map[? Current_Guest.guest_id][? guest_detail.openness]-=secrecy
				Chosen_Feeling=noone
				}*/
                        
                    }
                    
                if (Button_Pressed(starting_x, starting_y + 208, 130, 50, 0, "BACK", color_drinking, c_black, Chosen_Feeling, 0, 1, default_input, 0, shape.square, 0))
                    {
                        Talk_Menu = talk_menu.main;
						break
                    }
                    
                    hor_index += 1;
                    if (hor_index > 5)
                    {
                        vert_index++;
                        
                        hor_index = 0;
                    }
					
					 fact=  ds_map_find_next(known_facts_about_person_map,fact)
                }
            }}
        }
        
		            draw_set_font(f_OptionsMedium);
					draw_set_color(c_my_orange)
            draw_text(starting_x, 540+67, Talk_Menu_Text);
        break;
    case edit.building:
        Item_Being_Placed = Button_Pressed(edit_mode_menu_x + 15, edit_mode_menu_y, 120, 20, 0, "Dirt", c_white, c_black, Item_Being_Placed, building.dirt, 0, default_input, 0, shape.square, 0);
        
        
        edit_mode_menu_y += 30;
        Item_Being_Placed = Button_Pressed(edit_mode_menu_x + 15, edit_mode_menu_y, 120, 20, 0, "Grass", c_white, c_black, Item_Being_Placed, building.grass, 0, default_input, 0, shape.square, 0);
        if (Over_Gui == 0 && mouse_check_button(mb_left))
        {
            if (Available_Building_Space_Grid[# mouse_grid_x, mouse_grid_y] == 0)
                with (oHouse)
                {
                    Create_Structure_Tile(mouse_grid_x, mouse_grid_y, Item_Being_Placed);
                }
        }
        
        break;
    case edit.food_prep:


        
        edit_mode_menu_y += 50;
Over_Button_Id=-1
        
                var temp_player_inventory_map = ds_map_create();
				var display_map_have=Player_Object.backpack_map
                var text = ds_map_write(display_map_have);		
		        var recipe = ds_map_find_first(Recipies_Map);
				var display_map_required=ds_map_create()
				chosen_recipe=noone
				//Selected_Recipe=noone
				draw_set_halign(fa_left)
																draw_text(edit_mode_menu_x+30,edit_mode_menu_y-60,"CHOOSE A RECIPE TO MAKE")
																draw_set_halign(fa_center)
//FOR EVERY RECIPE
        for (i = 0; i < ds_map_size(Recipies_Map); i++)
        {
			  // SEE IF THIS RECIPE CAN BE MADE
                var has_all_ingredients = 1;
                col2=c_white
display_map_required[? i]=ds_map_create()
					//get a copy of our inventory
                ds_map_read(temp_player_inventory_map, text);
				//CHECK EVERY REQUIRED ING
		//	sm(ds_list_size(Recipies_Map[? recipe]))
                for (j = 0; j < ds_list_size(Recipies_Map[? recipe]); j++)
                {
					var item = Recipies_Map[? recipe][| j]
			
                    var item_text = Ingredient_Enum_To_Text(Recipies_Map[? recipe][| j]);
					//					sm(st(j)+" "+item_text)
                    if (item != noone)
                    {
		
						if is_undefined(display_map_required[? i][? item]){

							display_map_required[? i][? item]=1
					
						}
						else
						display_map_required[? i][? item]++
						//remove item from our theoretical inventory
                        if (temp_player_inventory_map[? item] > 0){
                            temp_player_inventory_map[? item]--;

						}
                        else
                        {//else we dont have enough 
                            has_all_ingredients = 0;
							col2=c_my_bar_red
           
     
                        }
                    }
                }
				//sm(ds_map_size(display_map_required[? 0]))
				//SHOW ALL RECIPIES WE CAN MAKE
            Selected_Recipe = Button_Pressed(edit_mode_menu_x + 15, edit_mode_menu_y, 120, 20, 0, recipe, col2, c_black, Selected_Recipe, recipe, 1, default_input, i, shape.square, 0);
           if Button_Was_Pressed && has_all_ingredients=1{ chosen_recipe=recipe }
		   edit_mode_menu_y += 30;
            recipe = ds_map_find_next(Recipies_Map, recipe);
		}
		
//SHOW INGREDIENTS REQUIRED FOR REC

//Over_Button_Id this is the recipe we must display req ing
//for every ing req for this rec
		draw_set_color(c_white)

if Over_Button_Id!=-1{
						draw_set_halign(fa_left)
									var req_count=0;
									var has_count=0;
									var temp_change_map=ds_map_create()
												var temp_ingredient=ds_map_find_first(display_map_required[? Over_Button_Id])

for(var i=0;i<ds_map_size(display_map_required[? Over_Button_Id]);i++)
{

//sm(Ingredient_Enum_To_Text( temp_ingredient))
					req_count=display_map_required[? Over_Button_Id][? temp_ingredient]
					has_count=Player_Object.backpack_map[? temp_ingredient]
					if is_undefined(has_count)
					has_count=0
					if has_count<req_count
					col2=c_my_bar_red
					else
					col2=c_white
					draw_set_color(col2)
				draw_text(edit_mode_menu_x+110,edit_mode_menu_y-20,st(has_count)+" / "+st(req_count)+ "   "+Ingredient_Enum_To_Text( temp_ingredient)) edit_mode_menu_y += 25;
				temp_ingredient=ds_map_find_next(display_map_required[? Over_Button_Id],temp_ingredient)
}


												//sm(ds_map_size(display_map_required[? Over_Button_Id]))
				if chosen_recipe!=noone{// && col2!=c_my_bar_red{			
					if Chosen_Tutorial=tu.prep_food Chosen_Tutorial=tu.give_food
				var	plate=instance_create_depth(Player_Object.x,Player_Object.y,0,oPlate)

				Set_Variable_Of(Player_Object,state_var.carrying_item,plate)
			//	sm(Over_Button_Id)
			if !is_undefined(display_map_required[? Over_Button_Id]) {
				var list=ds_list_write(display_map_required[? Over_Button_Id]);
		plate.ingredients_list=ds_list_read(list)
			}
		plate.sprite_index=sCarry_Bowl
plate.holder=Player_Object




				}
				
				ds_map_destroy(temp_change_map)

}
             /* 
				
				      if (Button_Was_Pressed)
            {
                
                recipe_we_are_making = recipe;
            
        }
		var map=Player_Object.backpack_map
			var count=0;
			var temp_ingredient=ds_map_find_first(map)
			draw_set_halign(fa_left)
			for(var i=0;i<ds_map_size(map);i++){
				count=map[? temp_ingredient]
				draw_text(edit_mode_menu_x-60,edit_mode_menu_y,st(count)+" "+temp_ingredient) edit_mode_menu_y += 25;
			temp_ingredient=ds_map_find_next(map,temp_ingredient)
			}
			draw_set_halign(fa_center)*/
        break;
    case edit.recipies: //	Draw_Food_Prep_Gui() 
        if (Sub_Menu != "Recipies" && Sub_Menu != "Ingredient")
            Sub_Menu = "Recipies";

       draw_set_color(c_my_orange)
        if Sub_Menu="Recipies"
		draw_text(edit_mode_menu_x,edit_mode_menu_y,"CHOOSE A RECIPE")
		     draw_set_color(c_white)
       // Button_Pressed(edit_mode_menu_x , edit_mode_menu_y, 150, 20, 0, "Choose a recipe", c_white, c_black, Sub_Menu,0, 0, default_input, 0, shape.square, 0);
     if Sub_Menu="Ingredient"{
	 Sub_Menu = Button_Pressed(edit_mode_menu_x , edit_mode_menu_y, 150, 20, 0, "SAVE this recipe", c_my_orange, c_black, Sub_Menu, "Recipies", 0, default_input, 0, shape.square, 0);
      if Sub_Menu!="Ingredient" {if Chosen_Tutorial=tu.recipes Chosen_Tutorial=tu.get_ingredients}
	 }
	  if (Sub_Menu != Last_Sub_Menu)
            Item_Being_Placed = noone;
        switch (Sub_Menu)
        {
            case "Recipies": // new 
                edit_mode_menu_y += 50;
                if (Button_Pressed(edit_mode_menu_x + 15, edit_mode_menu_y, 170, 20, 0, "NEW RECIPE", c_white, c_black, Item_Being_Placed, 0, 1, default_input, 0, shape.square, 0))
                {
                    // create new recipe then edit it
                    Selected_Recipe = "new_recipe";
                    Recipies_Map[? Selected_Recipe] = ds_list_create();
                    Sub_Menu = "Ingredient";
                    break;
                }
                
                edit_mode_menu_y += 50;
                var recipe = ds_map_find_first(Recipies_Map);
                
                for (i = 0; i < ds_map_size(Recipies_Map); i++)
                {
                    Selected_Recipe = Button_Pressed(edit_mode_menu_x + 15, edit_mode_menu_y, 170, 20, 0, recipe, c_white, c_black, Selected_Recipe, recipe, 0, default_input, 0, shape.square, 0);
                    edit_mode_menu_y += 30;
                    recipe = ds_map_find_next(Recipies_Map, recipe);
                    if (Button_Was_Pressed)
                    {
						
                        // select this reciepe drop ingredients
                        Sub_Menu = "Ingredient";
                        for (i = 0; i < ds_list_size(Recipies_Map[? Selected_Recipe]); i++)
                        {
                            var item = Ingredient_Enum_To_Text(Recipies_Map[? Selected_Recipe][| i]);
                            if (item != noone)
                                var asset = asset_get_index("sIng_" + item);
                            ing = instance_create_depth(MultiTrackCamera.x, MultiTrackCamera.y, -900, oBowl_Ingredient);
                            ing.sprite_index = asset;
                            ing.kind = Item_Being_Placed;
                        }
                    }
                }
                break;
            case "Ingredient": // CALCULATE 
                edit_mode_menu_y += 50;
                the_event_type = ingredient.tomato;
                Item_Being_Placed = Button_Pressed(edit_mode_menu_x + 15, edit_mode_menu_y, 120, 20, 0, "Tomato", c_white, c_black, Item_Being_Placed, the_event_type, 0, default_input, 0, shape.square, 0);
                edit_mode_menu_y += 30;
                the_event_type = ingredient.cabbage;
                Item_Being_Placed = Button_Pressed(edit_mode_menu_x + 15, edit_mode_menu_y, 120, 20, 0, "cabbage", c_white, c_black, Item_Being_Placed, the_event_type, 0, default_input, 0, shape.square, 0);
                edit_mode_menu_y += 30;
                the_event_type = ingredient.carrot;
                Item_Being_Placed = Button_Pressed(edit_mode_menu_x + 15, edit_mode_menu_y, 120, 20, 0, "carrot", c_white, c_black, Item_Being_Placed, the_event_type, 0, default_input, 0, shape.square, 0);
                edit_mode_menu_y += 30;
                the_event_type = ingredient.fly;
                Item_Being_Placed = Button_Pressed(edit_mode_menu_x + 15, edit_mode_menu_y, 120, 20, 0, "fly", c_white, c_black, Item_Being_Placed, the_event_type, 0, default_input, 0, shape.square, 0);
                edit_mode_menu_y += 30;
                the_event_type = ingredient.worm;
                Item_Being_Placed = Button_Pressed(edit_mode_menu_x + 15, edit_mode_menu_y, 120, 20, 0, "worm", c_white, c_black, Item_Being_Placed, the_event_type, 0, default_input, 0, shape.square, 0);
                edit_mode_menu_y += 30;
                the_event_type = ingredient.white_mushroom;
                Item_Being_Placed = Button_Pressed(edit_mode_menu_x + 15, edit_mode_menu_y, 120, 20, 0, "white mushrom", c_white, c_black, Item_Being_Placed, the_event_type, 0, default_input, 0, shape.square, 0);
                edit_mode_menu_y += 30;
                the_event_type = ingredient.blue_mushroom;
                Item_Being_Placed = Button_Pressed(edit_mode_menu_x + 15, edit_mode_menu_y, 120, 20, 0, "blue mushrom", c_white, c_black, Item_Being_Placed, the_event_type, 0, default_input, 0, shape.square, 0);
                edit_mode_menu_y += 30;
                the_event_type = ingredient.blue_crystal;
                Item_Being_Placed = Button_Pressed(edit_mode_menu_x + 15, edit_mode_menu_y, 120, 20, 0, "blue crystal", c_white, c_black, Item_Being_Placed, the_event_type, 0, default_input, 0, shape.square, 0);
                edit_mode_menu_y += 30;
                
                // draw UI
                // recount all ingredients in bowl for this recipe
                ds_list_clear(Recipies_Map[? Selected_Recipe]);
                with (oBowl_Ingredient)
                {
                    if (in_bowl)
                    {
                        ds_list_add(Recipies_Map[? Selected_Recipe], kind);
                    }
                    in_bowl = 0;
                }
                
                // draw held ingredient
                
                var item = Ingredient_Enum_To_Text(Item_Being_Placed);
                if (item != noone)
                    var asset = asset_get_index("sIng_" + item);
                if (item != noone)
                {
                    draw_sprite_ext(asset, 0, device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), 2, 2, 0, c_white, 1);
                    
                    var x_start = View_Width / 2 - 460
                        ;
                    var y_start = View_Height / 2 - 330
                        ;
                    var width = 460 * 2
                        ;
                    var height = 330 * 2
                    // if near bowl - can drop
                    ;
                    if (Gui_Mouse_In_Rectangle(x_start, y_start, width, height) && mouse_check_button_pressed(mb_left))
                    {
                        var ing = instance_create_depth(mouse_x, mouse_y, -9999, oBowl_Ingredient)
                            ;
                        ing.sprite_index = asset;
                        ing.kind = Item_Being_Placed;
                        Item_Being_Placed = noone;
                    }
                }
                break;
        
        
        
        }
         Exit_Menu(View_Width / 2,View_Height / 2)
        
        break;
		case edit.none:
		
		if Player_Object.inside=0{
			var map=Player_Object.backpack_map
			var count=0;
			var temp_ingredient=ds_map_find_first(map)
			draw_set_halign(fa_left)
			for(var i=0;i<ds_map_size(map);i++){
				count=map[? temp_ingredient]
				draw_text(edit_mode_menu_x-60,edit_mode_menu_y,st(count)+" "+Ingredient_Enum_To_Text(temp_ingredient) ) edit_mode_menu_y += 25;
			temp_ingredient=ds_map_find_next(map,temp_ingredient)
			}
			draw_set_halign(fa_center)
		}
		break;
    case edit.event:
        if (Selected_Event != -1)
        {
            var the_event_type = event.none;
            if (Sub_Menu != "Type" && Sub_Menu != "Guests")
                Sub_Menu = "Type";
            Sub_Menu = Button_Pressed(edit_mode_menu_x - 50, edit_mode_menu_y, 120, 20, 0, "Type", c_white, c_black, Sub_Menu, "Type", 0, default_input, 0, shape.square, 0);
            Sub_Menu = Button_Pressed(edit_mode_menu_x + 80, edit_mode_menu_y, 120, 20, 0, "Guests", c_white, c_black, Sub_Menu, "Guests", 0, default_input, 0, shape.square, 0);
            
            switch (Sub_Menu)
            {
                case "Type":
                    Item_Being_Placed = Unique_Events_Map[? Selected_Event][? event_detail.kind];
                    edit_mode_menu_y += 50;
                    the_event_type = event.none;
                    Item_Being_Placed = Button_Pressed(edit_mode_menu_x + 15, edit_mode_menu_y, 120, 20, 0, "None", c_white, c_black, Item_Being_Placed, the_event_type, 0, default_input, 0, shape.square, 0);
                    edit_mode_menu_y += 30;
                    the_event_type = event.sleep;
                    Item_Being_Placed = Button_Pressed(edit_mode_menu_x + 15, edit_mode_menu_y, 120, 20, 0, "Sleep", c_white, c_black, Item_Being_Placed, the_event_type, 0, default_input, 0, shape.square, 0);
                    edit_mode_menu_y += 30;
                    the_event_type = event.eat;
                    Item_Being_Placed = Button_Pressed(edit_mode_menu_x + 15, edit_mode_menu_y, 120, 20, 0, "Eat", c_white, c_black, Item_Being_Placed, the_event_type, 0, default_input, 0, shape.square, 0);
                    edit_mode_menu_y += 30;
                    the_event_type = event.drink;
                    Item_Being_Placed = Button_Pressed(edit_mode_menu_x + 15, edit_mode_menu_y, 120, 20, 0, "Drink", c_white, c_black, Item_Being_Placed, the_event_type, 0, default_input, 0, shape.square, 0);
                    edit_mode_menu_y += 30;
                    the_event_type = event.read;
                    Item_Being_Placed = Button_Pressed(edit_mode_menu_x + 15, edit_mode_menu_y, 120, 20, 0, "Read", c_white, c_black, Item_Being_Placed, the_event_type, 0, default_input, 0, shape.square, 0);
                    edit_mode_menu_y += 30;
                    Unique_Events_Map[? Selected_Event][? event_detail.kind] = Item_Being_Placed;
                    break;
                case "Guests":
                    edit_mode_menu_y += 30;
                    the_guest_type = char.hares;
                    Unique_Events_Map[? Selected_Event][? event_detail.characters][? the_guest_type] = Button_Pressed(edit_mode_menu_x + 15, edit_mode_menu_y, 120, 20, 0, "Rabbit", c_white, c_black, Unique_Events_Map[? Selected_Event][? event_detail.characters][? the_guest_type], 1, 0, default_input, 0, shape.square, 1);
                    edit_mode_menu_y += 30;
                    the_guest_type = char.toads;
                    Unique_Events_Map[? Selected_Event][? event_detail.characters][? the_guest_type] = Button_Pressed(edit_mode_menu_x + 15, edit_mode_menu_y, 120, 20, 0, "Toad", c_white, c_black, Unique_Events_Map[? Selected_Event][? event_detail.characters][? the_guest_type], 1, 0, default_input, 0, shape.square, 1);
                    edit_mode_menu_y += 30;
                    the_guest_type = char.gnomes;
                    Unique_Events_Map[? Selected_Event][? event_detail.characters][? the_guest_type] = Button_Pressed(edit_mode_menu_x + 15, edit_mode_menu_y, 120, 20, 0, "Gnome", c_white, c_black, Unique_Events_Map[? Selected_Event][? event_detail.characters][? the_guest_type], 1, 0, default_input, 0, shape.square, 1);
                    edit_mode_menu_y += 30;
                    the_guest_type = char.magicians;
                    Unique_Events_Map[? Selected_Event][? event_detail.characters][? the_guest_type] = Button_Pressed(edit_mode_menu_x + 15, edit_mode_menu_y, 120, 20, 0, "Mage", c_white, c_black, Unique_Events_Map[? Selected_Event][? event_detail.characters][? the_guest_type], 1, 0, default_input, 0, shape.square, 1);
                    edit_mode_menu_y += 30;
                    break;
            }
        }
        
        break;
    case edit.object:
				draw_sprite(sGUI_Speak_SideBar,0,edit_mode_menu_x+160,edit_mode_menu_y+360-09)
			draw_set_font(f_OptionsMedium)
			draw_set_color(c_old)
			draw_text(edit_mode_menu_x+160,edit_mode_menu_y+20,"INVENTORY")
            // sm("")
			draw_set_font(f_Speak_Large)
			
		
			edit_mode_menu_y+=240+70
			edit_mode_menu_x+=50+60
						var gap=70
			var width=40
			var length=140
					var left=75
					Move_Furniture_Mode=1
					Object_Menu_Mode = Button_Pressed(edit_mode_menu_x+left +100-30-75, edit_mode_menu_y-130-50, length+80, width, 0, "Merch", c_my_orange, c_black, Object_Menu_Mode,object_menu.merchanise , 0, controls.left_click, 0,shape.square, 0);
					
				  Object_Menu_Mode = Button_Pressed(edit_mode_menu_x+left -100, edit_mode_menu_y-130, length+20, width, 0, "Objects", c_my_orange, c_black, Object_Menu_Mode,object_menu.furniture , 0, controls.left_click, 0,shape.square, 0);
			
Object_Menu_Mode = Button_Pressed(edit_mode_menu_x+left +100-30, edit_mode_menu_y-130, length, width, 0, "Floor", c_my_orange, c_black, Object_Menu_Mode,object_menu.floors , 0, controls.left_click, 0,shape.square, 0);
			
	if Last_Edit_Mode!= edit.object
	Move_Furniture_Mode=1
        start_value = Item_Being_Placed;
		var count=0;
		length=45
		var left=75
		width=length
			 if Object_Menu_Mode=object_menu.furniture || Object_Menu_Mode=object_menu.floors{
		var t_class=furn_style.lodge;
		  Object_Category = Button_Pressed(edit_mode_menu_x+left -100, edit_mode_menu_y-70, length, width, sGUI_Elements, "", Get_Class_Color(t_class), c_gray, Object_Category,t_class , 0, controls.left_click, 0,t_class, 1);
		var t_class=furn_style.wild;
		  Object_Category = Button_Pressed(edit_mode_menu_x +left-50, edit_mode_menu_y-70, length, width, sGUI_Elements, "", Get_Class_Color(t_class), c_gray, Object_Category,t_class , 0, controls.left_click, 0,t_class, 1);
		var t_class=furn_style.arcane;
		  Object_Category = Button_Pressed(edit_mode_menu_x +left, edit_mode_menu_y-70, length, width, sGUI_Elements, "", Get_Class_Color(t_class), c_gray, Object_Category,t_class , 0, controls.left_click, 0,t_class, 1);
		  		var t_class=furn_style.sci_fi;
		  Object_Category = Button_Pressed(edit_mode_menu_x+left+ 50, edit_mode_menu_y-70, length, width, sGUI_Elements, "", Get_Class_Color(t_class), c_gray, Object_Category,t_class , 0, controls.left_click, 0,t_class, 1);
			 }
			 else
			 {
				 		var t_class=merch_type.stations;
		  Object_Category = Button_Pressed(edit_mode_menu_x+left -100, edit_mode_menu_y-70, length, width, sGUI_Merch_Types, "", c_my_orange, c_gray, Object_Category,t_class , 0, controls.left_click, 0,t_class, 1);
		var t_class=merch_type.bottled;
		  Object_Category = Button_Pressed(edit_mode_menu_x +left-50, edit_mode_menu_y-70, length, width, sGUI_Merch_Types, "", c_my_orange, c_gray, Object_Category,t_class , 0, controls.left_click, 0,t_class, 1);
		var t_class=merch_type.clothing;
		  Object_Category = Button_Pressed(edit_mode_menu_x +left, edit_mode_menu_y-70, length, width, sGUI_Merch_Types, "", c_my_orange, c_gray, Object_Category,t_class , 0, controls.left_click, 0,t_class, 1);
		  		var t_class=merch_type.statue;
		  Object_Category = Button_Pressed(edit_mode_menu_x+left+ 50, edit_mode_menu_y-70, length, width, sGUI_Merch_Types, "", c_my_orange, c_gray, Object_Category,t_class , 0, controls.left_click, 0,t_class, 1);
			 }
			 
	 if Object_Menu_Mode=object_menu.furniture
	 if Move_Furniture_Mode && Item_Being_Placed!=noone{ 
		 Item_Being_Placed=noone
		 Held_Furniture=noone
	 }
	 draw_set_alpha(0.6)
draw_set_font(f_Speak_Small)
draw_set_color(c_old)
	if Object_Menu_Mode=object_menu.floors{
		length=30
		width=length
			edit_mode_menu_y+=40
			  Tile_Bush_Size = Button_Pressed(edit_mode_menu_x+left- 50, edit_mode_menu_y-70, length, width,sGUI_Brush_Size, "", c_old, c_dkgray, Tile_Bush_Size,1 , 0, controls.left_click, 0,0, 1);
	 Tile_Bush_Size = Button_Pressed(edit_mode_menu_x+left, edit_mode_menu_y-70, length, width,sGUI_Brush_Size, "", c_old, c_dkgray, Tile_Bush_Size,2 , 0, controls.left_click, 1,1, 1);

	}
	
	 	 draw_text(edit_mode_menu_x+50,edit_mode_menu_y-30,Selected_Name)
		 Selected_Name=""

	 edit_mode_menu_y += 50;
	 edit_mode_menu_x-=105
	 line_count=0
var first=1
	 var start_x=edit_mode_menu_x
	 
	 if Object_Menu_Mode=object_menu.furniture || Object_Menu_Mode=object_menu.merchanise
	 {
	var item=ds_map_find_first(Furniture_Count_Map)
	for(var f=0;f<ds_map_size(Furniture_Count_Map);f++)
	{
		var pass=0;
		
		if Object_Menu_Mode=object_menu.furniture &&  Object_Category =Furniture_Map[? item][? furn.style1]  && Furniture_Map[? item][? furn.is_merch]=0
		pass=1
			if Object_Menu_Mode=object_menu.merchanise && Furniture_Map[? item][? furn.is_merch] &&  Object_Category =Furniture_Map[? item][? furn.style1]	
			pass=3
			
		if pass>0{
		if Furniture_Count_Map[? item]>0{
		
			if line_count>=3 || (first && line_count>2)
			{line_count=0
				edit_mode_menu_y += 115
				edit_mode_menu_x=start_x
				first=0
			}
				line_count++
		if Furniture_Button(item,edit_mode_menu_x+20,edit_mode_menu_y,pass)  !=noone && Has_Pressed_Button_This_Step
		{	
			if Furniture_Count_Map[? Item_Being_Placed]>0{
			     with (oHouse)
                {

					Furniture_Count_Map[? Item_Being_Placed]--
                    other.item_to_hold=Create_Object(mouse_small_grid_x+1, mouse_small_grid_y+1, Item_Being_Placed)
					other.alarm[2]=1
					other.item_to_hold.alarm[4]=1
					
                }
		f=9000
			}
		}
		
		edit_mode_menu_x+=115;
		
		
		}
	}
item=ds_map_find_next(Furniture_Count_Map,item)
	}
}
	 if Object_Menu_Mode=object_menu.floors
	 {
	var item=ds_map_find_first(Floor_Count_Map)
	
	for(var f=0;f<ds_map_size(Floor_Count_Map);f++)
	{
		if item=sTile_Wood_Red || item= sTile_Alien || item= sTile_Wood_Yellow || item= sTile_DarkStone || item= sTile_Carpet_Red
		{

		if Object_Category =Floor_Map[? item][? floor_detail.style]{
		if Floor_Count_Map[? item]>0{
		
			if line_count>=3 || (first && line_count>2)
			{line_count=0
				edit_mode_menu_y += 115
				edit_mode_menu_x=start_x
				first=0
			}
				line_count++
		if Furniture_Button(item,edit_mode_menu_x+20,edit_mode_menu_y,2)  !=noone && Has_Pressed_Button_This_Step
		{	
			if Floor_Count_Map[? Item_Being_Placed]>0{


					Floor_Count_Map[? Item_Being_Placed]--

				

					
                
		f=9000
			}
		}
		
		edit_mode_menu_x+=115;
		
		
		}
	}}
item=ds_map_find_next(Floor_Map,item)
	}
}
if Object_Menu_Mode=1
        if (is_string(Item_Being_Placed))
        {
				//	 Held_Furniture=noone
			Move_Furniture_Mode=0
            Draw_Held_Furn = 1;
			
				if Furniture_Count_Map[? Item_Being_Placed]>0{
            if (Over_Gui == 0 && mouse_check_button_pressed(mb_left) && device_mouse_y_to_gui(0) > 100)
            {
			
//Held_Furniture=noone
				
            }
				}else{
				Item_Being_Placed=noone
				 Held_Furniture=noone
				 Draw_Held_Furn=0
				Move_Furniture_Mode=1
				}
        }
        
        
        break;

    case edit.character:
        start_value = Item_Being_Placed;
        for (var c = 0; c < ds_list_size(Guests_List); c++)
        {
            item = Guests_List[| c];
            Item_Being_Placed = Button_Pressed(edit_mode_menu_x + 50, edit_mode_menu_y, 120, 20, 0, item, c_white, c_black, Item_Being_Placed, item, 0, default_input, 0, shape.square, 0);
            edit_mode_menu_y += 25;
        }
        
        if (is_string(Item_Being_Placed))
        {
            draw_sprite_ext(asset_get_index("sChar_" + Item_Being_Placed), 0, device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), 1, 1, 0, c_white, 0.5);
            if (Over_Gui == 0 && mouse_check_button_pressed(mb_left))
            {
                with (oHouse)
                {
                    House_Add_Person(Item_Being_Placed, mouse_grid_x, mouse_grid_y, 0,Item_Being_Placed);
                }
            }
        }
        break;
    case edit.room: // SHOW ROOM STATS
    // NO ROOM SELECTED thus show new room menu 
        {
			draw_sprite(sGUI_Speak_SideBar2,0,edit_mode_menu_x+100,edit_mode_menu_y+360)
			draw_set_font(f_OptionsMedium)
			draw_set_color(c_old)
			draw_text(edit_mode_menu_x+100,edit_mode_menu_y+100,"ROOM TYPES")
            // sm("")
			draw_set_font(f_Speak_Large)
			edit_mode_menu_y+=240
			edit_mode_menu_x+=50
			var gap=70
			var width=40
			var length=190
            if Chosen_Tutorial=tu.start Chosen_Tutorial=tu.add_new_room
            if Selected_Room!=-4
            draw_text(edit_mode_menu_x + 50, edit_mode_menu_y - 25, "ROOM " + st(Selected_Room));
            edit_mode_menu_y+=40
            Item_Being_Placed = Button_Pressed(edit_mode_menu_x + 50, edit_mode_menu_y, length, width, 0, "door", c_old, c_black, Item_Being_Placed, room_type.door, 0, default_input, 0, shape.square, 0);
            
            Clicked = 0;
            edit_mode_menu_y += gap;
            Item_Being_Placed = Button_Pressed(edit_mode_menu_x + 50, edit_mode_menu_y, length, width, 0, "hallway", c_old, c_black, Item_Being_Placed, room_type.hallway, 0, default_input, 0, shape.square, 0);
            
            edit_mode_menu_y += gap;
			
			            Item_Being_Placed = Button_Pressed(edit_mode_menu_x + 50, edit_mode_menu_y, length, width, 0, "bedroom", c_old, c_black, Item_Being_Placed, room_type.bedroom, 0, default_input, 0, shape.square, 0);
            edit_mode_menu_y += gap;
            Item_Being_Placed = Button_Pressed(edit_mode_menu_x + 50, edit_mode_menu_y, length, width, 0, "dining room", c_old, c_black, Item_Being_Placed, room_type.dining, 0, default_input, 0, shape.square, 0);
            edit_mode_menu_y += gap;    
		            Item_Being_Placed = Button_Pressed(edit_mode_menu_x + 50, edit_mode_menu_y, length, width, 0, "gift shop", c_old, c_black, Item_Being_Placed, room_type.gift_shop, 0, default_input, 0, shape.square, 0);
            edit_mode_menu_y += gap;    
            // Item_Being_Placed=

            
            // Item_Being_Placed=

            
            // Item_Being_Placed=
          //  Item_Being_Placed = Button_Pressed(edit_mode_menu_x + 50, edit_mode_menu_y, length, width, 0, "drinking room", c_old, c_black, Item_Being_Placed, room_type.drinking, 0, default_input, 0, shape.square, 0);
            if (Clicked == 1)
                Selected_Room = noone;
        }
}


// save 
if (Last_Sub_Menu == "Ingredient" && Sub_Menu != "Ingredient")
{
    // ss()
    // if we are making a new one, we WANT SAVE NAME
    var name = "";
    if (Selected_Recipe == "new_recipe")
        do
        {
            name = get_string("What is the name of your recipe?", "");
        }
            until (name != "" && name != "new_recipe")
    if (is_undefined(Recipies_Map[? "new_recipe"]))
        Recipies_Map[? "new_recipe"] = ds_list_create();
    var text = ds_list_write(Recipies_Map[? "new_recipe"]);
    
    // transfer the recipe list from new slot to named slot
    Recipies_Map[? name] = ds_list_create();
    ds_list_read(Recipies_Map[? name], text);
    ds_map_delete(Recipies_Map, "new_recipe");
}




if Chosen_Tutorial!=-1 && Visualize[? vis.show_tutorial]=1{
	draw_set_font(fTutorial)
var text=Tutorial_Map[? Chosen_Tutorial];
var length=string_width_ext(text,25,1200)/2+10
var width=string_height_ext(text,25,1200)/2+10
draw_set_color(c_old)
var sx=View_Width/2//gui_x
var sy=View_Height-100//gui_y
draw_rectangle(sx-length-2,sy-width-2,sx+length+2,sy+width+2,1)
draw_rectangle(sx-length-1,sy-width-1,sx+length+1,sy+width+1,1)
draw_set_color(c_dark_brown)
draw_rectangle(sx-length,sy-width,sx+length,sy+width,0)
draw_set_alpha(0.7)
draw_set_color(c_old)
draw_set_halign(fa_center)
draw_text_ext(sx,sy,text,25,1200)
draw_set_alpha(1)
}

Exit_Edit_Modes_Code()