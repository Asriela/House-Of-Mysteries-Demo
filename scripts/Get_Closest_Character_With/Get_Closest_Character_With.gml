function Get_Closest_Character_With(my_id,variable,value)
{
	var ret=noone;
	var closest=900000;

	with(oCharacter)
	{
		if id!=my_id && Get_Variable(variable)=value{
			//ss()
			var dis= point_distance(my_id.x,my_id.y,x,y)
		if dis<closest{
			closest=dis
			ret=id

		}
		}
	}
	return ret;
}


