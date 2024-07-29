#region Virando o sprite para a direção do player
if state != "dash"{
	if obj_player.x > x{
		image_xscale = 1.2
	}else{
		image_xscale = -1.2
		}
}
#endregion

#region Comportamento

//Mantendo a depth
depth = -y

//Morrendo
if hp <= 0{
	instance_destroy()
}

//Ficando vermelho quando toma dano
if i < 255{
	i += 10
}
if i > 255{
	i = 255
}
image_blend = make_color_rgb(255,i,i)

//
#endregion

#region State machine
if state = "follow"{
sprite_index = spr_grimCrawlerCrawl
direction = 0
move_towards_point(obj_player.x,obj_player.y,hspd)
}

else if state = "headDown"{
sprite_index = spr_grimCrawlerHeadDown
hspd = 0
direction = 0
speed = 0
}
else if state = "charge"{
sprite_index = spr_grimCrawlerCharge
hspd = 0
speed = 0
direction = 0
}
else if state = "dash"{
sprite_index = spr_grimCrawlerDash
speed = 15
}
#endregion
