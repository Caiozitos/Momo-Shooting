if x < 0 or x > room_width or y < 0 or y > room_height{
	instance_destroy()
}

if sprite_index = spr_missile{
	image_angle = direction
	if global.bulletSpray < -999999{
		speed = 0
		move_towards_point(obj_enemyColisor.x,obj_enemyColisor.y,5)
		direction = point_direction(x,y,obj_enemyColisor.x,obj_enemyColisor.y)
	}
}

if sprite_index = spr_flame{
	if image_xscale < 3{
	image_xscale += sizeAdd
	image_yscale += sizeAdd
	}
	if speed > 1{
		speed -= 0.1
	}
	else{
		image_alpha -= 0.1
	}
	if image_alpha < 0{
		instance_destroy()
	}
}