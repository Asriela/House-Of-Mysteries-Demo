// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Evaluate(value1,signs,value2)
{
	val=0
	switch(signs)
	{
		case "<":
		if value1 < value2
		val= 1
		else
		val= 0		
			break;		
		case ">":
		if value1 > value2
		val= 1
		else
		val= 0		
			break;		
			case "=":		
				if value1 = value2
		val= 1
		else
		val= 0		
			break;		
						case "!=":		
				if value1 != value2
		val= 1
		else
		val= 0		
			break;		
	}
	return val;
}
