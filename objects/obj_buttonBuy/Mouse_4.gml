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
			var _itemSprite = spr_obtBurger
			break
			
			case "coffe":
			obj_player.hspd += obj_player.hspd * 0.10
			global.shotRateBonus += 0.15
			var _itemSprite = spr_obtCoffee
			break
			
			case "crochetGlooves":
			instance_create_depth(obj_player.x,obj_player.y,depth,obj_orbitalGloove)
			var _itemSprite = spr_invisibleSprite
			break;
			
			case "skate":
			obj_player.hspd += obj_player.hspd * 0.05
			global.bulletSpray += 3
			var _itemSprite = spr_obtSkate
			break;
			
			case "monocle":
			global.statDamage -= global.statDamage * 0.35
			global.shotRateBonus -= 0.10
			global.bulletSpray = -9999999
			var _itemSprite = spr_obtMonocle
			break;
			
			case "pillow":
			var _itemSprite = spr_invisibleSprite
			instance_create_depth(obj_player.x,obj_player.y,-999,obj_orbitalPillow)
			break;
			
			case "sophiesHat":
			var _itemSprite = spr_obtWindHat
			instance_create_depth(obj_player.x,obj_player.y,-999,obj_tornado)
			break;
			
			case "cooperCoin":
			var _itemSprite = spr_obtCopperCoins
			break;

			case "dmgUp":
			var _itemSprite = spr_invisibleSprite
			global.statDamage += 1.5
			break;
			
			case "glitch":
		    var _itemSprite = spr_obtGlitch;
		    randomize()
		    switch(choose(0, 1, 2, 3, 4)) {
		        case 0: global.statDamage += global.statDamage * 0.25; break;
		        case 1: global.shotRateBonus += global.shotRateBonus * 0.25; break;
		        case 2: global.bulletSpray += global.bulletSpray * 0.25; break;
		        case 3: obj_player.hspd += obj_player.hspd * 0.25; break;
				case 4: obj_player.hpMax += obj_player.hpMax * 0.25; break;
		    }
			randomize()
		    switch(choose(0, 1, 2, 3, 4)) {
		        case 0: global.statDamage -= global.statDamage * 0.10; break;
		        case 1: global.shotRateBonus -= global.shotRateBonus * 0.10; break;
		        case 2: global.bulletSpray -= global.bulletSpray * 0.10; break;
		        case 3: obj_player.hspd -= obj_player.hspd * 0.10; break;
				case 4: obj_player.hpMax -= obj_player.hpMax * 0.10; break;
			}
		    break;
			
			case "djDisk":
			var _itemSprite = spr_obtDJDisk
			break;
			
			case "bulb":
			var _itemSprite = spr_obtLightBulb
			instance_create_depth(irandom_range(128,1380),irandom_range(100,810),depth,obj_trapBulb)
			break;
			
			case "mold":
			var _itemSprite = spr_obtMold
			break;
			
			case "grenade":
			var _itemSprite = spr_obtGrenade
			break;
			
			case "landMines":
			var _itemSprite = spr_invisibleSprite
			instance_create_depth(x,y,depth,obj_landMine)
			break;
			
			case "boots":
			var _itemSprite = spr_invisibleSprite
			obj_timedItems.kickOn = true
			break;
			
			case "molotov":
			var _itemSprite = spr_obtMolotov
			break;
			
			case "fishingRod":
			var _itemSprite = spr_obtFishingRod
			global.fishingRods += 1
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

