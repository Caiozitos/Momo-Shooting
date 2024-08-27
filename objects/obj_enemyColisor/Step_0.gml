if instance_exists(father){
x = father.x
y = father.y
image_yscale = 0.20 + sprite_get_height(father.sprite_index) / 100
image_xscale = 0.20 + sprite_get_width(father.sprite_index) / 100
}
else{
	instance_destroy()
}