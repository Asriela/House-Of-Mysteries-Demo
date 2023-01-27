// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Draw_Time_Table() {
Skip_Frame=0
    starty = 75
	var v_width=1366;
    length = v_width - 800
    startx = View_Width / 2 - length / 2
    square_size = length / 36
    draw_set_color(c_gray)
    currentx = startx
    ds_list_clear(Selected_Hours)
	if count!=0
//	sm(count)
	count=0
	
	
	
	
	
	
	

	
	if skip_frame>0
	skip_frame--
	
	
	
	
	//if ds_list_size(Unique_Events_List)!=0
//sm(ds_list_size(Unique_Events_List))
draw_set_font(fStandard)
    if started_creating_new_event {
        for (h = first_selected_hour; h <= Over_Button_Id; h++)
            Selected_Hours[| h] = 1
    }
    current_line = 1
    for (h = 1; h <= 24; h++) {
        //draw empty

        hour = h
        if hour > 12
        hour -= 12

        var line = 0;

        //CREATE NEW EVENT by right clicking on time square , then left click to end it
        //now you have an empty event, but its selected so in the left pane you can choose
        //who you want in the event
        //and what event it is with type and person

        //CREATE NEW EVENT WHEN HOUR IS RIGHT CLICKED
		var starting_x=currentx + square_size / 2;
		var starting_y=starty - square_size;
		var in_hour=1;
		
		if World_Hour>=h
		in_hour=0
		draw_set_color(c_my_dark_aqua)
		draw_rectangle(starting_x-square_size/2,starting_y-square_size/2,starting_x+square_size/2,starting_y+square_size/2,in_hour)
        if Button_Pressed(currentx + square_size / 2, starty - square_size, square_size, square_size, 0, hour, c_white, c_black, Selected_Hours[| h], 1, 1, controls.left_click, h,shape.square,0) {
            {
				skip_frame=2
                if started_creating_new_event = 0 {
                    first_selected_hour = h
                    started_creating_new_event = 1;
                    //sm("start event "+st(first_selected_hour))
                }
                else //finnish defining an event
                {
					count++
                    started_creating_new_event = 0
                    //sm("end"+st(Over_Button_Id))
                    var event_id = Create_New_Event(event.none, first_selected_hour, Over_Button_Id);
                    //sm("event "+st(event_id))
                  //Selected_Event = event_id;
				   Edit_Mode=edit.event
				  Skip_Frame=1
                }
            }

        }
        //started_creating_new_event
        //highlight selected hour

        //draw_rectangle (currentx,starty,currentx+square_size,starty+square_size,1)

var inspected_event=ds_map_find_first(Unique_Events_Map)
        for (e = 0; e < ds_map_size(Unique_Events_Map); e++) {


            //WE FOUND AN EVENT
			if skip_frame=0
            if (ds_list_find_index(Hour_Slots_Array[@ h], inspected_event) != -1) {
                //WE DID NOT FIND IT REGISTERED IN LANES - add a new entry
				var mes="list ";
				for(var t=0;t<ds_list_size(Events_Lanes_List);t++)
				mes+=" "+st(Events_Lanes_List[|t])
			//	sm(mes)
                if ds_list_find_index(Events_Lanes_List, inspected_event) = -1 {
                 //     sm(st(h)+" "+st(e))
                    //we are in the newest line, use it and let us know this is our line now
                    var found_slot = 0;
                    if ds_list_size(Events_Lanes_List) > 0
                    for (var c = 0; c < ds_list_size(Events_Lanes_List); c++) {
                        if Events_Lanes_List[| c] = -1 {
                            Events_Lanes_List[| c] = inspected_event
                            found_slot = 1
                        }
                    }
                    if found_slot = 0 {
                        //	sm(ds_list_size(Events_Lanes_List))
                        ds_list_add(Events_Lanes_List, inspected_event)
//sm("added new")
//Log_Main("added "+st(inspected_event)+" at hour "+st(h))
                    }
                    line = ds_list_find_index(Events_Lanes_List, inspected_event)
                    //draw START SQUARE

                    current_line++
                    //Draw event intro circle
                    //draw_circle(x,y,r,0)

                }
                else //IT IS REGISTERED just draw it
                {
//sm(h)
                    //this event already exists in a specific line
                    line = ds_list_find_index(Events_Lanes_List, inspected_event) //  sm(line)
					var time_length=Unique_Events_Map[? inspected_event][? event_detail.span]
					var event_color=Get_Event_Bar_Color(Unique_Events_Map[? inspected_event][?event_detail.kind])
		draw_set_color(event_color)

					var line_y=starty// + line * (square_size*2);
					
					var start_x=currentx + square_size / 2;
					var start_y= line_y+square_size*.5;
					var size=square_size*0.6;
					var the_shape=shape.square
					if h=Unique_Events_Map[? inspected_event][?event_detail.start]{
				start_x=currentx + square_size / 2;
					start_y= line_y+square_size*.5;
					size=square_size*1.2;
					the_shape=shape.circle
					draw_rectangle(currentx-2-square_size*0.2,line_y-2,currentx+((square_size*1.5)*time_length)+2-square_size*.3,line_y+square_size+2,1)
					}
                    //draw CONTINUEING SQUARE
	
                    var ev=Button_Pressed(start_x,start_y, size, size, 0, "", event_color, event_color, Selected_Event, inspected_event, 0, controls.left_click, inspected_event,the_shape)
					if ev!=noone && skip_frame=0{
                        
						Selected_Event = ev
						
						//Edit_Mode=edit.event
						//sm(st(inspected_event)+" "+st(Over_Button_Id))
                    }
                } 

            } else //we no longer have the inspected event
            {
                var index = ds_list_find_index(Events_Lanes_List, inspected_event)
               //Events_Lanes_List[| index] = -1
            }
			inspected_event=ds_map_find_next(Unique_Events_Map,inspected_event)
        }
        currentx += square_size / 2 + square_size
    }



}

function Draw_NightDay_Bar(){
	startx=300
	starty=20
	endy=40
	length=View_Width-600
	section=length/8
	
	startcol=c_my_red
	endcol=c_yellow
	draw_rectangle_color(startx,starty,startx+section,endy,startcol,endcol,endcol,startcol,0)
	
	startcol=c_yellow
	endcol=c_white
	draw_rectangle_color(startx+section,starty,startx+section*2,endy,startcol,endcol,endcol,startcol,0)
	
	startcol=c_white
	endcol=c_yellow
	draw_rectangle_color(startx+section*2,starty,startx+section*3,endy,startcol,endcol,endcol,startcol,0)
	
	startcol=c_yellow
	endcol=c_my_red
	draw_rectangle_color(startx+section*3,starty,startx+section*4,endy,startcol,endcol,endcol,startcol,0)
	
	startcol=c_my_red
	endcol=c_navy
	draw_rectangle_color(startx+section*4,starty,startx+section*5,endy,startcol,endcol,endcol,startcol,0)
	
	startcol=c_navy
	endcol=c_my_navy
	draw_rectangle_color(startx+section*5,starty,startx+section*6,endy,startcol,endcol,endcol,startcol,0)
	
	startcol=c_my_navy
	endcol=c_navy
	draw_rectangle_color(startx+section*6,starty,startx+section*7,endy,startcol,endcol,endcol,startcol,0)
	
	startcol=c_navy
	endcol=c_my_red
	draw_rectangle_color(startx+section*7,starty,startx+section*8,endy,startcol,endcol,endcol,startcol,0)
	

}