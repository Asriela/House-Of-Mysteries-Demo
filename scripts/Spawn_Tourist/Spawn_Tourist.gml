// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Spawn_Tourist(){
var character=instance_create_depth(Tourist_Spawn_X,Tourist_Spawn_Y,-991,oCharacter);
character.grid_x=	Tourist_Spawn_X
character.grid_y=Tourist_Spawn_Y;
		var x_position=House_Start_X+Tourist_Spawn_X*Tile_Width;
		var y_position=House_Start_Y+Tourist_Spawn_Y*Tile_Height;
character.x=x_position;
character.y=y_position;
character.is_player=0;
character.is_tourist=1
	character.tourist_mask=instance_create_depth(x,y,1,oTourist)
	character.tourist_mask.owner=character
Set_Variable_Of(character,"is_tourist",1)
character.my_House=id;
character.character_type="Tourist_Adult_Man";
		character.guest_id=char.tourist
		character.hours_left_in_tour=5
		character.filename="Tourists"
		character.my_height=60


}