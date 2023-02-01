// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Character_Enum_To_Text(char_id){
ret=""
switch(char_id){
	case char.cats: ret="Cats" break;
	case char.gnomes: ret="Gnomes" break;
	case char.golums: ret="Golums" break;
	case char.wogs: ret="Wogs" break;
	case char.hares: ret="Rabbits" break;
	case char.magicians: ret="Magicians" break;
	case char.pooka: ret="Pooka" break;
	case char.vampires: ret="Vampires" break;
	
			case char.vampire_Arine_seeker: ret="Dulthrak" break;
		case char.toad_scout: ret="Toad Scout" break;
		case char.hare_grandfather: ret="Hare Grandfather" break;
	case char.hare_merchant: ret="Nimra" break;
	case char.hare_runaway_watch: ret="Mysterious Rabbit" break;
}
return ret
}
function Need_Enum_To_Text(need)
{
			ret=""
switch(need){
	case guest_need.food: ret="Food" break;
	case guest_need.rest: ret="Rest" break;
	case guest_need.drink: ret="Drink"  break;
	case guest_need.social: ret="Social" break;
	case guest_need.study: ret="Study" break;
	case guest_need.mood: ret="Mood" break;
	case guest_need.decor: ret="Decor" break;
}
return ret
}
function Get_Class_Color(style)
{
		ret=""
		if DayTime=1{
switch(style){
	case style.lodge: ret=c_style_dk_orange break;
	case style.regal: ret=c_regal break;
	case style.sci_fi: ret=c_style_dk_blue  break;
	case style.arcane: ret=c_style_dk_red break;
	case style.wild: ret=c_style_dk_green break;

}
		}
		else{
switch(style){
	case style.lodge: ret=c_neutral break;
	case style.regal: ret=c_regal break;
	case style.sci_fi: ret=c_scholarly  break;
	case style.arcane: ret=c_spirit break;
	case style.wild: ret=c_wild break;

}
		}
return ret
}
function Furn_Class_Enum_To_Text(class)
{
	ret=""
switch(class){
	case style.lodge: ret="Neutral" break;
	case style.regal: ret="Regal" break;
	case style.sci_fi: ret="Scholarly" break;
	case style.arcane: ret="spirit" break;
	case style.wild: ret="Wild" break;
}
return ret
}
	function Add_Class_Pref(race,pref,class)
	{
		if is_undefined(Race_Class_Preference_Map[? race]){
		Race_Class_Preference_Map[? race]=ds_map_create()
		Race_Class_Preference_Map[? race][?pref]=ds_list_create()
		}
		if is_undefined(Race_Class_Preference_Map[? race][? pref]){
			Race_Class_Preference_Map[? race][?pref]=ds_list_create()
		}
		ds_list_add(Race_Class_Preference_Map[? race][?pref],class)
	}


function Set_Guest_Furn_Class_Preferences(){
	globalvar Race_Class_Preference_Map;
	Race_Class_Preference_Map=ds_map_create()
	//WILD
//neutral gnomes doesnt like regal	
	Add_Class_Pref(char.gnomes,class_pref.pos,style.lodge)
	Add_Class_Pref(char.gnomes,class_pref.pos,style.wild)
	Add_Class_Pref(char.gnomes,class_pref.neg,style.regal)
	
	//WILD
//wild pooka doesnt dislike anything -intro to wild
	Add_Class_Pref(char.hares,class_pref.pos,style.wild)
	
	//NEUTRAL
//neutral hares doesnt dislike anything	
	Add_Class_Pref(char.hares,class_pref.pos,style.lodge)


	//SPIRIT
//spirit golum give 2 against 2 -intro to spirit
	Add_Class_Pref(char.golums,class_pref.pos,style.arcane)
	Add_Class_Pref(char.golums,class_pref.pos,style.wild)

	Add_Class_Pref(char.golums,class_pref.neg,style.sci_fi)
	Add_Class_Pref(char.golums,class_pref.neg,style.regal)

//SCHOLARLY
//scholarly toads are against nothing give 2 loose nothing -intro to scholarly
	Add_Class_Pref(char.toads,class_pref.pos,style.sci_fi)
	Add_Class_Pref(char.toads,class_pref.pos,style.wild)


//WILD
//wild tribal wogs  are against proper
	Add_Class_Pref(char.wogs,class_pref.pos,style.wild)
	Add_Class_Pref(char.wogs,class_pref.neg,style.lodge)
	Add_Class_Pref(char.wogs,class_pref.neg,style.regal)
	
	//CATS
//cats are against anything below proper
	Add_Class_Pref(char.wogs,class_pref.pos,style.regal)
	Add_Class_Pref(char.wogs,class_pref.neg,style.lodge)
	Add_Class_Pref(char.wogs,class_pref.neg,style.wild)
	
}