image_alpha -= 0.05
if alarm[0] > 0{
vspeed += 0.5
}
else{
	vspeed -= 0.5
}
if image_alpha < 0{
	instance_destroy()
}