if itemBought = true{
	sprite_index = spr_invisibleSprite
	type = "null"
	price = 0
	name = "SOLD OUT"
}
else{
switch (item){
	case "null":
	sprite_index = spr_invisibleSprite
	type = "null"
	price = 0
	name = "SOLD OUT"
	break
	
	case "shotgun":
	sprite_index = spr_shotgun
	type = "gun"
	price = 40
	name = "Shotgun"
	break;
	
	case "uzi":
	sprite_index = spr_uzi
	type = "gun"
	price = 30
	name = "UZI"
	break;
	
	case "revolver":
	sprite_index = spr_revolver
	type = "gun"
	price = 40
	name = "Revolver"
	break;
	
	case "dart":
	sprite_index = spr_dartGun
	type = "gun"
	price = 50
	name = "Dart Gun"
	break;
	
	case "ak47":
	sprite_index = spr_ak47
	type = "gun"
	price = 110
	name = "AK-47"
	break;
	
	case "flame":
	sprite_index = spr_flamethrower
	type = "gun"
	price = 110
	name = "Flamethrower"
	break;
	
	case "minigun":
	sprite_index = spr_minigun
	type = "gun"
	price = 250
	name = "Minigun"
	break;
	
	case "rocket":
	sprite_index = spr_rocket
	type = "gun"
	price = 260
	name = "Bazooka"
	break;
	
	case "banana":
	sprite_index = spr_fruitIcons
	image_index = 0
	type = "powerup"
	price = 15
	name = "Banana"
	break;
	
	case "mango":
	sprite_index = spr_fruitIcons
	image_index = 1
	type = "powerup"
	price = 15
	name = "Mango"
	break;
	
	case "apple":
	sprite_index = spr_fruitIcons
	image_index = 2
	type = "powerup"
	price = 15
	name = "Apple"
	break;
	
	case "completeMeal":
	sprite_index = spr_fruitIcons
	image_index = 3
	type = "powerup"
	price = 25
	name = "CompleteMeal"
	break;
	
	case "burger":
	sprite_index = spr_fruitIcons
	image_index = 4
	type = "powerup"
	price = 30
	name = "Burger"
	break;
	
	case "coffe":
	sprite_index = spr_fruitIcons
	image_index = 5
	type = "powerup"
	price = 40
	name = "Coffee"
	break;
	
	case "dmgUp":
	sprite_index = spr_shopIcon
	image_index = 2
	type = "powerup"
	price = 20
	name = "Damage Up"
	break;
	
	default:
	sprite_index = spr_invisibleSprite
	type = "gun"
	price = 999
	name = "???"
	break;
}
}
if type = "gun" and ds_list_find_index(obj_playerGun.gunList,item) != -1 or name = "???"{
	ds_list_add(global.shopItems,item)
	ds_list_shuffle(global.shopItems)
	item = global.shopItems[|0]
}


if type = "gun"{
image_xscale = 2
image_yscale = 2
}

else{
image_xscale = 1
image_yscale = 1
}