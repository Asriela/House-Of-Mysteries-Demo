
function Set_Furniture_Item(item,name,desc,class,price,race,style1,style1_level,style2,style2_level,points,startx,starty,xsize,ysize,is_merch)
{
	if is_undefined(Furniture_Map[? item])
	Furniture_Map[? item]=ds_map_create()
Furniture_Map[? item][? furn.price]=price
Furniture_Map[? item][? furn.named]=name
Furniture_Map[? item][? furn.desc]=desc
Furniture_Map[? item][? furn.race]=race
Furniture_Map[? item][? furn.style1]=style1
Furniture_Map[? item][? furn.style1_level]=style1_level
Furniture_Map[? item][? furn.style2]=style2
Furniture_Map[? item][? furn.style2_level]=style2_level
Furniture_Map[? item][? furn.class]=class
Furniture_Map[? item][? furn.decor_points]=points
Furniture_Map[? item][? furn.start_x]=startx
Furniture_Map[? item][? furn.start_y]=starty
Furniture_Map[? item][? furn.xsize]=xsize
Furniture_Map[? item][? furn.ysize]=ysize
Furniture_Map[? item][? furn.is_merch]=is_merch
}