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
speed = 6
image_angle = obj_playerGun.image_angle
image_xscale = obj_playerGun.image_xscale
image_yscale = obj_playerGun.image_yscale
image_index = irandom_range(0,5)
}
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