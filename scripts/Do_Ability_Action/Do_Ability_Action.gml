// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Do_Ability_Action(guest_object,ability_id){
	with(guest_object)
	{
	switch(ability_id)
	{
		case ability.calm:
		Set_Variable("do_calm_ability",1)
		break;
		}
	}
}