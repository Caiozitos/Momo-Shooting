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
	
	case "pistol":
	sprite_index = spr_pistol
	type = "gun"
	price = 20
	name = "Pistol"
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
	name = "RocketLauncher"
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
	price = 35
	name = "CompleteMeal"
	break;
	
	case "burger":
	sprite_index = spr_fruitIcons
	image_index = 4
	type = "powerup"
	price = 25
	name = "Burger"
	break;
	
	case "coffe":
	sprite_index = spr_fruitIcons
	image_index = 5
	type = "powerup"
	price = 30
	name = "Coffee"
	break;
	
	case "crochetGlooves":
	sprite_index = spr_shopItems
	image_index = 1
	type = "powerup"
	price = 40
	name = "CrochetGlooves"
	break;
	
	case "skate":
	sprite_index = spr_shopItems
	image_index = 0
	type = "powerup"
	price = 20
	name = "Skate"
	break;
	
	case "monocle":
	sprite_index = spr_shopItems
	image_index = 2
	type = "powerup"
	price = 50
	name = "Monocle"
	break;
	
	case "sophiesHat":
	sprite_index = spr_shopItems
	image_index = 3
	type = "powerup"
	price = 50
	name = "Wind Hat"
	break;
	
	case "pillow":
	sprite_index = spr_shopItems
	image_index = 4
	type = "powerup"
	price = 40
	name = "Pillow"
	break;
	
	case "dmgUp":
	sprite_index = spr_shopIcon
	image_index = 2
	type = "powerup"
	price = 25
	name = "Damage Up"
	break;
	
	case "glitch":
	sprite_index = spr_shopItems
	image_index = 5
	type = "powerup"
	price = 35
	name = "Gl!tcH_"
	break;
	
	case "cooperCoin":
	sprite_index = spr_shopItems
	image_index = 6
	type = "powerup"
	price = 60
	name = "Copper Coins"
	break;
	
	case "djDisk":
	sprite_index = spr_shopItems
	image_index = 7
	type = "powerup"
	price = 40
	name = "DJ's Disk"
	break;
	
	case "bulb":
	sprite_index = spr_shopItems
	image_index = 8
	type = "powerup"
	price = 35
	name = "Light Bulb"
	break;
	
	case "mold":
	sprite_index = spr_shopItems
	image_index = 9
	type = "powerup"
	price = 35
	name = "Mold"
	break;
	
	case "grenade":
	sprite_index = spr_shopItems
	image_index = 10
	type = "powerup"
	price = 50
	name = "Grenades"
	break;
	
	case "landMines":
	sprite_index = spr_shopItems
	image_index = 11
	type = "powerup"
	price = 50
	name = "Land Mines"
	break;
	
	case "boots":
	sprite_index = spr_shopItems
	image_index = 12
	type = "powerup"
	price = 40
	name = "Boots"
	break;
	
	case "molotov":
	sprite_index = spr_shopItems
	image_index = 13
	type = "powerup"
	price = 50
	name = "Molotov"
	break;
	
	case "fishingRod":
	sprite_index = spr_shopItems
	image_index = 14
	type = "powerup"
	price = 25
	name = "Fishing Rod"
	break;
	
	default:
	sprite_index = spr_invisibleSprite
	type = "gun"
	price = 9999
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