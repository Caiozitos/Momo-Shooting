if image_alpha = 1{
	instance_create_depth(x,y,depth,obj_explosion)
	x = irandom_range(100,1380)
	y = irandom_range(80,800)
	alarm[0] = 240
	image_alpha = 0
}