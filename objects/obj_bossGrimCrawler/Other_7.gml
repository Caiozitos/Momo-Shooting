if sprite_index = spr_grimCrawlerHeadDown{
	audio_play_sound(snd_darkHum,1,0)
	state = "charge"
}

if sprite_index = spr_grimCrawlerCharge if dashes < 3{
	audio_play_sound(snd_monsterGrowl,2,0)
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
