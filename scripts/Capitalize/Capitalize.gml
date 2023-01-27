				function is_number(val)
				{
					ret=false
					val=string(string_char_at(val,1))
					if val="0" || val="1"|| val="2" || val="3" || val="4" || val="5" || val="6" || val="7" || val="8" || val="9"
				ret=true
				return ret
				}

function Capitalize(word){

				char=string_upper(string_char_at(word,1))
	word=char+string_delete(word,1,1)
	return word
}
function Seconds(sec)
{
	return sec/60
}
	function Time_Is_Over(total_time)
		{
			if just_started_action
			time_left = total_time
			else
			time_left-=1/60
			
			if time_left<=0
			ret=1
			else
			ret=0
			
			return ret;
		}
		
function positive(v){
if v<0
v=-v
return v}

function Tile_Is_Impassible(tile)
{
	impassable=0
	if tile!=0 && instance_exists(tile){
		switch(tile.tile_type)
		{
		case "Boulder": impassable=1 break;
			case "BoulderWater": impassable=1 break;
		case "Volcano": impassable=1 break;
		case "Lava": impassable=1 break;
		}
		return impassable
	}
	else
	return 1
}


function exists(in)
{

	if is_string(in)=0 && in!=undefined && in!=noone && instance_exists(in)
	{
		return true
	}
	else
	return false
}

function Find_Tile_Based_Of_World_Position(xx,yy){
	
	my_tile=-1;
		tx= -(Grid_Start_X-(xx))/Tile_Width
			ty=-(Grid_Start_Y-(yy))/Tile_Height
			tx=round(tx)
			ty=round(ty)
			if Tile_Grid[# tx,ty]!=0{
			my_tile=Tile_Grid[# tx,ty]; 
			
	}
	return my_tile
}

function Get_Random_Tile()
{
	any_list=ds_list_create()
for(ix=0;ix<ds_grid_width(Island_Grid);ix++)
for(iy=0;iy<ds_grid_height(Island_Grid);iy++)
{
	tile=Island_Grid[# ix,iy]

				if  exists(tile ) && !Tile_Is_Impassible(tile)
				{
					
				ds_list_add(other.any_list,tile)
				}
}
	i= round(random(ds_list_size(any_list)))-1
chosen_tile=any_list[| i]
ds_list_destroy(any_list)
return chosen_tile;
}