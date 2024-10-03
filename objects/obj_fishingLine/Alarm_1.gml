if damage = true{
	with (enemy){
		if instance_exists(father){
		father.hspd = mainSpeed * 0.20
		father.hp -= global.statDamage * 0.25
		father.i = 0
		scr_damageFeedback(global.statDamage * 0.25,c_red)
		}
	}
}
alarm[1] = 30
