if alarm[0] <= 0{
	image_alpha += 0.05
}

if image_alpha > 1{
	image_alpha = 1
}

depth = -y
show_debug_message(alarm[0])