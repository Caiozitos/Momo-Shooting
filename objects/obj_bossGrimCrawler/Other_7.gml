if sprite_index = spr_grimCrawlerHeadDown{
	state = "charge"
}

if sprite_index = spr_grimCrawlerCharge if dashes < 3{
	state = "dash"
	alarm[4] = 40
	direction = point_direction(x,y,obj_player.x,obj_player.y)
}
else{
	state = "follow"
	dashes = 0
	alarm[4] = -1
	hspd = 4
	alarm[3] = 180
}
