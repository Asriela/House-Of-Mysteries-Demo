// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Create_Nature_Ingredient(kind)
{
	var ing=instance_create_depth(rr(0,room_width),rr(0,room_height),0,oIngredient)
	ing.kind=kind
	ing.kind_text=Ingredient_Enum_To_Text(kind)
	ing.sprite_index=asset_get_index("sNat_Ing_"+ing.kind_text)
	
}
function Create_Nature(){
	var multiply=2.5;
repeat(160*multiply)
{
	instance_create_depth(rr(0,room_width),rr(0,room_height),0,oTree)
}

/*
repeat(50*multiply)
{
Create_Nature_Ingredient(ingredient.carrot)
}

repeat(30*multiply)
{
Create_Nature_Ingredient(ingredient.tomato)

}

repeat(100*multiply)
{
Create_Nature_Ingredient(ingredient.cabbage)

}

repeat(10*multiply)
{
Create_Nature_Ingredient(ingredient.blue_mushroom)

}

repeat(25*multiply)
{
Create_Nature_Ingredient(ingredient.fly)

}

repeat(50*multiply)
{
Create_Nature_Ingredient(ingredient.white_mushroom)

}

repeat(100*multiply)
{
Create_Nature_Ingredient(ingredient.worm)

}
*/


}