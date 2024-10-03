if instance_exists(father){
x = father.x
y = father.y
image_yscale = (0.20 + sprite_get_height(father.sprite_index) / 100) * father.image_yscale
image_xscale = (0.20 + sprite_get_width(father.sprite_index) / 100) * father.image_xscale
// Ativado o poison
if father.poisonDmg != 0{
	state = "poison"
	stateFrame = 2
}

// Ativando o slow
if state = "slow"{
	father.hspd = mainSpeed * 0.40
	stateFrame = 1
}

if state = "blind"{
	stateFrame = 3
	if alarm[1] = 0 or alarm[1] = -1{
	alarm[1] = 5
	}
}

}
else{
	instance_destroy()
}
