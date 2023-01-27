/// @description Insert description here
// You can write your code in this editor
if interactable!=noone
instance_destroy(interactable)

if !is_undefined(my_mask) && my_mask!=noone 
instance_destroy(my_mask)

Remove_Object_From_Room(id,my_room,object_class)