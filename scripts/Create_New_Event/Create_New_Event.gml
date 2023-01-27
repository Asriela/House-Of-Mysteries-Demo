function Setup_Event_Char_Types_Defaults(ev_id)
{
	Unique_Events_Map[? ev_id][? event_detail.characters][? char.cats]=1;
	Unique_Events_Map[? ev_id][? event_detail.characters][? char.wogs]=1;
	Unique_Events_Map[? ev_id][? event_detail.characters][? char.gnomes]=1;
	Unique_Events_Map[? ev_id][? event_detail.characters][? char.magicians]=1;
	Unique_Events_Map[? ev_id][? event_detail.characters][? char.hares]=1;
	Unique_Events_Map[? ev_id][? event_detail.characters][? char.golums]=1;	
		Unique_Events_Map[? ev_id][? event_detail.characters][? char.toads]=1;	
}
function Create_New_Event(type,start_hour, end_hour)
{
	var ev_id=string(Event_Id_Count);
Unique_Events_Map[? ev_id]=ds_map_create()
	Unique_Events_Map[? ev_id][?event_detail.kind]=type;
Unique_Events_Map[? ev_id][? event_detail.characters]= ds_map_create();	
Setup_Event_Char_Types_Defaults(ev_id)

Unique_Events_Map[? ev_id][? event_detail.start]=start_hour
Unique_Events_Map[? ev_id][? event_detail.ending]=end_hour

if start_hour>end_hour
Unique_Events_Map[? ev_id][?  event_detail.span]=(24-start_hour)+end_hour
else
Unique_Events_Map[? ev_id][?  event_detail.span]=end_hour-start_hour+1

_s=start_hour
	for(var s=start_hour;s<=start_hour+Unique_Events_Map[? ev_id][?  event_detail.span];s++){
		
		if _s>24
		_s=1
	ds_list_add(Hour_Slots_Array[@ _s],ev_id)
	_s++
//sm("add "+st(s))
	}
		Event_Id_Count++
}
//create new standalone event id that gets inserted into hours slots lists
//[ ][ ][x]
       //[y]
	   function Get_Event_Bar_Color(type)
	   {
		   		   if DayTime=1
				   {
		   var ret=c_dkgray;

		   switch(type){
			   case event.undefined: ret=c_style_dk_blue; break;
			    case event.eat: ret=c_style_dk_red; break;
				 case event.sleep: ret=c_style_dk_blue ; break;
				 case event.drink: ret=c_style_dk_orange; break;
				  case event.read: ret=c_style_dk_green ; break;
		   }
				   }
				   else
						   {
		   var ret=c_ltgray;

		   switch(type){
			   case event.undefined: ret=c_my_light_navy; break;
			    case event.eat: ret=c_my_light_red; break;
				 case event.sleep: ret=c_my_sleep ; break;
				 case event.drink: ret=c_my_orange; break;
				  case event.read: ret=c_my_purple ; break;
		   }
				   }   
		   return ret;
	   }