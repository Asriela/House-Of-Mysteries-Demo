/// @description Insert description here
// You can write your code in this editor


var ret;
var closest_table=noone;
if object_class=obj_class.chair{
	var closest=999999
	with(oObject)
	{
		if id!=other && object_class=obj_class.table{// && Get_Variable(variable)=value{
			//ss()
			var dis= point_distance(other.x,other.y,x,y)
		if dis<closest{
			closest=dis
			ret=id

		}
		}
	}
closest_table=ret;
if exists(closest_table){
var direction_to_table=point_direction(x,y,closest_table.x,closest_table.y);
if direction_to_table>0 && direction_to_table<180
facing_direction="Up"
else
facing_direction="Down"
}
}
alarm[6]=100




