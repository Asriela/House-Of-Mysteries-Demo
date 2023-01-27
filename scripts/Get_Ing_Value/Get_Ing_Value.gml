
					function Get_Ing_Value(ing_type,ing_value_kind)
					{
						ret=0;
						switch(ing_type)
						{
							case ingredient.blue_crystal:
								switch(ing_value_kind)
								{	
												 case ing_value_type.veg_meat:				ret=-1; 
									break; case ing_value_type.soft_hard:				ret=3;
									break; case ing_value_type.physical_etheric:	ret=2;
									break; case ing_value_type.bitter_sweet:			ret=0;  
									break;
								}
							break;
							case ingredient.blue_mushroom:
								switch(ing_value_kind)
								{	
												 case ing_value_type.veg_meat:				ret=-1; 
									break; case ing_value_type.soft_hard:				ret=-1;
									break; case ing_value_type.physical_etheric:	ret=1;
									break; case ing_value_type.bitter_sweet:			ret=-1;  
									break;
								}
							break;
							case ingredient.white_mushroom:
								switch(ing_value_kind)
								{	
												 case ing_value_type.veg_meat:				ret=-1; 
									break; case ing_value_type.soft_hard:				ret=-1;
									break; case ing_value_type.physical_etheric:	ret=-1;
									break; case ing_value_type.bitter_sweet:			ret=0;  
									break;
								}
							break;
							case ingredient.cabbage:
								switch(ing_value_kind)
								{	
												 case ing_value_type.veg_meat:				ret=-1; 
									break; case ing_value_type.soft_hard:				ret=0;
									break; case ing_value_type.physical_etheric:	ret=-1;
									break; case ing_value_type.bitter_sweet:			ret=0;  
									break;
								}
							break;				
					
							case ingredient.carrot:
								switch(ing_value_kind)
								{	
												 case ing_value_type.veg_meat:				ret=-1; 
									break; case ing_value_type.soft_hard:				ret=2;
									break; case ing_value_type.physical_etheric:	ret=-1;
									break; case ing_value_type.bitter_sweet:			ret=2;  
									break;
								}
							break;			
							case ingredient.tomato:
								switch(ing_value_kind)
								{	
												 case ing_value_type.veg_meat:				ret=-1; 
									break; case ing_value_type.soft_hard:				ret=-2;
									break; case ing_value_type.physical_etheric:	ret=-1;
									break; case ing_value_type.bitter_sweet:			ret=1;  
									break;
								}
							break;						
							case ingredient.fly:
								switch(ing_value_kind)
								{	
												 case ing_value_type.veg_meat:				ret=-1; 
									break; case ing_value_type.soft_hard:				ret=0;
									break; case ing_value_type.physical_etheric:	ret=-1;
									break; case ing_value_type.bitter_sweet:			ret=-2;  
									break;
								}
							break;			
							case ingredient.worm:
								switch(ing_value_kind)
								{	
												 case ing_value_type.veg_meat:				ret=-1; 
									break; case ing_value_type.soft_hard:				ret=-2;
									break; case ing_value_type.physical_etheric:	ret=-1;
									break; case ing_value_type.bitter_sweet:			ret=-2;  
									break;
								}
							break;											
						}
						return ret;
					}
					
					
function Calculate_Recipe_Values(ing_list){

					recipe_values.soft_hard =0;
					recipe_values.veg_meat =0;			

					recipe_values.physical_etheric =0;		
									//	sm(	recipe_values.physical_etheric)
					recipe_values.bitter_sweet =0;				
					item_count=ds_list_size(ing_list)
					//ss()
					if item_count>0{
					for(i=0;i<item_count;i++)
					{
					//	sm(Ingredient_Enum_To_Text( ing_list[| i]))
						recipe_values.soft_hard +=Get_Ing_Value(ing_list[| i],ing_value_type.soft_hard);
						recipe_values.veg_meat +=Get_Ing_Value(ing_list[| i],ing_value_type.veg_meat);
						recipe_values.physical_etheric +=Get_Ing_Value(ing_list[| i],ing_value_type.physical_etheric);
						recipe_values.bitter_sweet +=Get_Ing_Value(ing_list[| i],ing_value_type.bitter_sweet);
					}
					recipe_values.soft_hard /=item_count;
					recipe_values.veg_meat /=item_count;			
					recipe_values.physical_etheric /=item_count;		
					recipe_values.bitter_sweet /=item_count;						
					
					recipe_values.soft_hard=round(recipe_values.soft_hard )
					recipe_values.veg_meat=round(recipe_values.veg_meat )
					recipe_values.physical_etheric=round(recipe_values.physical_etheric )
					recipe_values.bitter_sweet=round(recipe_values.bitter_sweet )
					}

}
