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
			var _itemSprite = spr_obtBanana
			break
			
			case "apple":
			obj_player.hpMax += 2
			var _itemSprite = spr_obtApple
			break
			
			case "mango":
			obj_player.hpMax += 3
			var _itemSprite = spr_obtMango
			break
			
			case "completeMeal":
			obj_player.hpMax += 4
			obj_player.hp = obj_player.hpMax
			var _itemSprite = spr_obtCompleteMeal
			break
			
			case "burger":
			obj_player.hpMax += 6
			obj_player.hspd -= obj_player.hspd * 0.10
			obj_player.vspd -= obj_player.vspd * 0.10
			var _itemSprite = spr_obtBurger
			break
			
			case "coffe":
			obj_player.hspd += obj_player.hspd * 0.10
			obj_player.vspd += obj_player.vspd * 0.10
			global.shotRateBonus += 0.15
			var _itemSprite = spr_obtCoffee
			break
			
			case "crochetGlooves":
			instance_create_depth(obj_player.x,obj_player.y,depth,obj_orbitalGloove)
			break;
			
			case "skate":
			obj_player.hspd += obj_player.hspd * 0.05
			obj_player.vspd += obj_player.vspd * 0.05
			global.bulletSpray += 3
			break;
			
			case "monocle":
			global.statDamage -= global.statDamage * 0.35
			global.shotRateBonus -= 0.10
			global.bulletSpray = -9999999
			break;
			
			case "pillow":
			instance_create_depth(obj_player.x,obj_player.y,-999,obj_orbitalPillow)
			
			case "dmgUp":
			global.statDamage += 1.5
			break;
		}
		ds_list_add(global.cosmetics,_itemSprite)
		ds_list_add(global.inventory,father.sprite_index)
		ds_list_add(global.inventoryIcons,father.image_index)
		audio_play_sound(snd_chaChing,1,0)
		global.money -= father.price
		instance_destroy()
	}
}

