if x < 0 or x > room_width or y < 0 or y > room_height{
	instance_destroy()
}
if sprite_index = spr_flame{
	speed -= 0.10
}
if speed < 1{
	speed = 1
	image_alpha -= 0.10
}
if image_alpha <= 0{
	instance_destroy()
}

if sprite_index = spr_missile{
	image_angle = direction
}