if instance_exists(father){
x = father.x
y = father.y
image_yscale = 0.20 + sprite_get_height(father.sprite_index) / 100
image_xscale = 0.20 + sprite_get_width(father.sprite_index) / 100

// Ativado o poison
if father.poisonDmg != 0{
	state = "poison"
	stateFrame = 2
}

// Ativando o slow
if state = "slow"{
	father.hspd = mainSpeed * 0.50
	stateFrame = 1
}

}
else{
	instance_destroy()
}
