if global.money >= father.price{
	if father.type = "gun" and ds_list_size(obj_playerGun.gunList) < 3{
		audio_play_sound(snd_chaChing,1,0)
		global.money -= father.price
		ds_list_add(obj_playerGun.gunList,father.item)
		instance_destroy()
	}
	
	else if father.type = "powerup"{
		switch (father.item){
			case "banana":
			obj_player.hpMax += 3
			break
			
			case "apple":
			obj_player.hpMax += 3
			break
			
			case "mango":
			obj_player.hpMax += 3
			break
			
			case "completeMeal":
			obj_player.hpMax += 4
			obj_player.hp = obj_player.hpMax
			break
			
			case "burger":
			obj_player.hpMax += 6
			obj_player.hspd -= obj_player.hspd * 0.3
			obj_player.vspd -= obj_player.vspd * 0.3
			break
			
			case "coffe":
			obj_player.hspd += obj_player.hspd * 0.3
			obj_player.vspd += obj_player.vspd * 0.3
			global.shotRateBonus += 0.15
			break
			
			case "dmgUp":
			global.statDamage += 1.5
			break
		}
		audio_play_sound(snd_chaChing,1,0)
		global.money -= father.price
		instance_destroy()
	}
}

