#region Virando o sprite para a direção do player
if state = "follow" or state = "rage"{
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
image_yscale = 1
image_angle = 1
}

else if state = "headDown"{
sprite_index = spr_grimCrawlerHeadDown
hspd = 0
direction = 0
speed = 0
image_xscale = 1
image_yscale = (obj_player.x <= x) ? -1 : 1;
image_angle = point_direction(x,y,obj_player.x,obj_player.y)
}
else if state = "charge"{
sprite_index = spr_grimCrawlerCharge
hspd = 0
speed = 0
direction = 0
image_xscale = 1
image_yscale = (obj_player.x <= x) ? -1 : 1;
image_angle = point_direction(x,y,obj_player.x,obj_player.y)
}
else if state = "dash"{
sprite_index = spr_grimCrawlerDash
speed = 15
}
#endregion