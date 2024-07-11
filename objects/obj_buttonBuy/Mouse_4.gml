if global.money >= father.price{
	if father.type = "gun" and ds_list_size(obj_playerGun.gunList) < 3{
		audio_play_sound(snd_chaChing,1,0)
		global.money -= father.price
		ds_list_add(obj_playerGun.gunList,father.item)
		instance_destroy()
	}
	
	else if father.type = "powerup"{
		switch (father.item){
			case "hpUp":
			obj_player.hpMax += 3
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

