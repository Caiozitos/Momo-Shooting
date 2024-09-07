if inputX != 0 or inputY != 0{
	instance_create_depth(x-25*image_xscale,y+17,depth+200,obj_smoke,{sprite_index: spr_smokePuff})
}
alarm[4] = 5