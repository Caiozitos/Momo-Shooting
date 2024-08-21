if action = "fadeIn"{
	if image_alpha < 1 or image_alpha = 0{
		image_alpha += 0.05
	}
}
else if action = "fadeOut"{
	if image_alpha > 0{
	image_alpha -= 0.01
	}
}