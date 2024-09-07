pos += i
if pos >= 7 or pos <= -7{
	i = i * -1
	if depth < obj_player.depth{
		depth = obj_player.depth + 20
		image_xscale = 1
		image_yscale = 1
	}
	else{
		depth = obj_player.depth - 20
		image_xscale = 1.2
		image_yscale = 1.2
	}
}
x = obj_player.x + pos * 10
y = obj_player.y