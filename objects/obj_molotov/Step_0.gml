if image_index + 1 >= 16.8{
image_index = 14
}
if alarm[2] <= 0{
	image_alpha -= 0.1
}
if image_alpha <= 0{
	instance_destroy()
}
show_debug_message(alarm[2])