speed = 0
if sprite_index != spr_flame{
	if sprite_index != spr_missile{
		speed = 40
		image_xscale = 1.5
		image_yscale = 1.5
	}
	else{
		speed = 15
	}
}
else{
	image_xscale = 0.1
	image_yscale = 0.1
	speed = 6
}

sizeAdd = image_yscale

if pierce = true{
hitEnemies = ds_list_create()
}
else{
hitEnemies = 0
}

if global.currentGun = "dart"{
poison = "badly"
}
else if global.poisonShot = true{
poison = "normal"
}
else{
poison = "no"
}

alarm[2] = 20

show_debug_message(speed)