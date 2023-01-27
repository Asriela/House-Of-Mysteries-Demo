/// @description Insert description here
// You can write your code in this editor


depth=-y
var dis=point_distance(x,y,Player.x,Player.y);

if dis<200
{

	image_alpha=1-dis/200

	
}
else
	if image_alpha>0
	image_alpha-=0.01
