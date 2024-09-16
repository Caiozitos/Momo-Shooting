depth = -y
if point_distance(x,y,obj_player.x,obj_player.y) > 300{
	image_alpha -= 0.05
}
if image_alpha <=0{
	instance_destroy()
}