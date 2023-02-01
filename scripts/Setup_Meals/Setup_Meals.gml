// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Setup_Meals(){
	var item="Gross_goop"
	Dishes_Map[? item]=ds_map_create()
		Dishes_Map[? item][? dish.named]="gross life force goop"
		Dishes_Map[? item][? dish.desc]="gross goop that anyone can eat, it tastes like if paint could vomit"
		Dishes_Map[? item][? dish.style_map]=ds_map_create()
		Dishes_Map[? item][? dish.style_map][? style.arcane]=1;
		Dishes_Map[? item][? dish.style_map][? style.lodge]=1;
		Dishes_Map[? item][? dish.style_map][? style.sci_fi]=1;
		Dishes_Map[? item][? dish.style_map][? style.wild]=1;

		Dishes_Map[? item][? dish.portion_size]=2
		var portion=Dishes_Map[? item][? dish.portion_size]
		Dishes_Map[? item][? dish.cost]=5*portion
		Dishes_Map[? item][? dish.difficulty_to_make]=1*portion
		


	var item="Forest_Floor_Salad"
	Dishes_Map[? item]=ds_map_create()
		Dishes_Map[? item][? dish.named]="forest floor salad"
		Dishes_Map[? item][? dish.desc]="forest leaves and some low energy crystals, it tastes like the bottom of your shoes after a hike"
		Dishes_Map[? item][? dish.style_map]=ds_map_create()
		Dishes_Map[? item][? dish.style_map][? style.arcane]=2;
		Dishes_Map[? item][? dish.style_map][? style.lodge]=0;
		Dishes_Map[? item][? dish.style_map][? style.sci_fi]=0;
		Dishes_Map[? item][? dish.style_map][? style.wild]=2;

		Dishes_Map[? item][? dish.portion_size]=2
		var portion=Dishes_Map[? item][? dish.portion_size]
		Dishes_Map[? item][? dish.cost]=4*portion
		Dishes_Map[? item][? dish.difficulty_to_make]=2*portion
		

}
