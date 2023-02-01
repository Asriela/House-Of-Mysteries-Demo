// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Manage_Timed_Variables()
{
with(oCharacter)
{
		for(var i=0;i<ds_list_size(state_variable_off_timer_list_time);i++)
		{
			state_variable_off_timer_list_time[| i]--;
			if state_variable_off_timer_list_time[|i]<=0
			{
				Set_Variable(state_variable_off_timer_list_name[|i],0)
				ds_list_delete(state_variable_off_timer_list_name,i)
				ds_list_delete(state_variable_off_timer_list_time,i)
			}
		
		}
		if mess_rate!=0
		mess_timer--
}
}