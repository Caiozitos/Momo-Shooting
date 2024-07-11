if pierce = true{
	ds_list_destroy(hitEnemies)
}

if sprite_index = spr_missile{
	instance_create_depth(x,y,depth,obj_explosion)
}