image_xscale += growingSpeed
if alarm[0] <= 0{
	if image_xscale <= 1{
		instance_destroy()
	}
}
x = obj_player.x
y = obj_player.y