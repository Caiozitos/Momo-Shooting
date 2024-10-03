switch (item){
	case "null":
	itemSprite = spr_invisibleSprite
	type = "null"
	price = 0
	name = "SOLD OUT"
	break
	
	case "shotgun":
	itemSprite = spr_shotgun
	type = "Gun"
	price = 40
	name = "Shotgun"
	descr = "Slow gun, shoots three bullets at once. Each bullet deals only a percentage of your damage"
	break;
	
	case "pistol":
	itemSprite = spr_pistol
	type = "Gun"
	price = 20
	name = "Pistol"
	descr = "Basic, quick gun. Great precision and deal full damage."
	break;
	
	case "uzi":
	itemSprite = spr_uzi
	type = "Gun"
	price = 30
	name = "UZI"
	descr = "Super fast semiautomatic gun, but your shots are a bit imprecise and deal low damage."
	break;
	
	case "revolver":
	itemSprite = spr_revolver
	type = "Gun"
	price = 40
	name = "Revolver"
	descr = "Heavy gun. Bullets pierce throught enemies. Each enemy pierced reduce the bullet damage."
	break;
	
	case "dart":
	itemSprite = spr_dartGun
	type = "Gun"
	price = 50
	name = "Dart Gun"
	descr = "Shots low damage darts. The poison is almost fatal, but fades alway quickly."
	break;
	
	case "ak47":
	itemSprite = spr_ak47
	type = "Gun"
	price = 110
	name = "AK-47"
	break;
	
	case "flame":
	itemSprite = spr_flamethrower
	type = "Gun"
	price = 110
	name = "Flamethrower"
	break;
	
	case "minigun":
	itemSprite = spr_minigun
	type = "Gun"
	price = 250
	name = "Minigun"
	break;
	
	case "rocket":
	itemSprite = spr_rocket
	type = "Gun"
	price = 260
	name = "RocketLauncher"
	break;
	
	case "banana":
	itemSprite = spr_fruitIcons
	image_index = 0
	type = "Item"
	price = 15
	name = "Banana"
	descr = "Adds +3 max HP."
	break;
	
	case "mango":
	itemSprite = spr_fruitIcons
	image_index = 1
	type = "Item"
	price = 15
	name = "Mango"
	descr = "Adds +3 max HP."
	break;
	
	case "apple":
	itemSprite = spr_fruitIcons
	image_index = 2
	type = "Item"
	price = 15
	name = "Apple"
	descr = "Adds +3 max HP."
	break;
	
	case "completeMeal":
	itemSprite = spr_fruitIcons
	image_index = 3
	type = "Item"
	price = 35
	name = "CompleteMeal"
	descr = "Adds +4 max HP. Fully heals you."
	break;
	
	case "burger":
	itemSprite = spr_fruitIcons
	image_index = 4
	type = "Item"
	price = 25
	name = "Burger"
	descr = "Adds +6 max HP, but isnt healthy at all."
	break;
	
	case "coffe":
	itemSprite = spr_fruitIcons
	image_index = 5
	type = "Item"
	price = 30
	name = "Coffee"
	descr = "Decreases the cooldown between your shots. Makes you faster."
	break;
	
	case "crochetGlooves":
	itemSprite = spr_shopItems
	image_index = 1
	type = "Item"
	price = 40
	name = "CrochetGlooves"
	descr = "Makes you comfy, protecting you against fire and projectiles."
	break;
	
	case "skate":
	itemSprite = spr_shopItems
	image_index = 0
	type = "Item"
	price = 20
	name = "Skate"
	descr = "Makes you move faster, but its a little bit hard to aim."
	break;
	
	case "monocle":
	itemSprite = spr_shopItems
	image_index = 2
	type = "Item"
	price = 50
	name = "Monocle"
	descr = "Your shots are 100% accurate. However, this decreases the speed and impact of the shot."
	break;
	
	case "sophiesHat":
	itemSprite = spr_shopItems
	image_index = 3
	type = "Item"
	price = 50
	name = "Wind Hat"
	descr = "Creates small tornados around you that pushes enemies back."
	break;
	
	case "pillow":
	itemSprite = spr_shopItems
	image_index = 4
	type = "Item"
	price = 40
	name = "Pillow"
	descr = "Spin this to make your enemies sleepy and slow them down."
	break;
	
	case "dmgUp":
	itemSprite = spr_shopIcon
	image_index = 2
	type = "Item"
	price = 25
	name = "Damage Up"
	descr = "+1.5 Damage Up. Always good to have."
	break;
	
	case "glitch":
	itemSprite = spr_shopItems
	image_index = 5
	type = "Item"
	price = 35
	name = "Gl!tcH_"
	descr = "Gr4nT_s A raNd0M __sT4t uP aNd a R4nd0m_ sT4t d0wn,"
	break;
	
	case "cooperCoin":
	itemSprite = spr_shopItems
	image_index = 6
	type = "Item"
	price = 60
	name = "Copper Coins"
	descr = "Toss a coin in the air every 15 shots. Shooting the coin will make the bullet ricochet and deal triple damage."
	break;
	
	case "djDisk":
	itemSprite = spr_shopItems
	image_index = 7
	type = "Item"
	price = 40
	name = "DJ's Disk"
	descr = "Stops the music after getting hit. All enemies are paralyzed for a few seconds."
	break;
	
	case "bulb":
	itemSprite = spr_shopItems
	image_index = 8
	type = "Item"
	price = 35
	name = "Light Bulb"
	descr = "Puts a very fragile bulb on the map. Touching it will make all enemies close to it blind."
	break;
	
	case "mold":
	itemSprite = spr_shopItems
	image_index = 9
	type = "Item"
	price = 35
	name = "Mold"
	descr = "Leaves a low-life poisonous mold behind you."
	break;
	
	case "grenade":
	itemSprite = spr_shopItems
	image_index = 10
	type = "Item"
	price = 50
	name = "Grenades"
	descr = "Throw one of these every few seconds. Kitty explosion included."
	break;
	
	case "landMines":
	itemSprite = spr_shopItems
	image_index = 11
	type = "Item"
	price = 50
	name = "Land Mines"
	descr = "It says 'KEEP DISTANCE.', better let your enemies test it."
	break;
	
	case "boots":
	itemSprite = spr_shopItems
	image_index = 12
	type = "Item"
	price = 40
	name = "Boots"
	descr = "Kick your enemies away every a few seconds."
	break;
	
	case "molotov":
	itemSprite = spr_shopItems
	image_index = 13
	type = "Item"
	price = 50
	name = "Molotov"
	descr = "Breaks a explosive bootle on the floor. Be careful, youre not immune to fire... generally."
	break;
	
	case "fishingRod":
	itemSprite = spr_shopItems
	image_index = 14
	type = "Item"
	price = 25
	name = "Fishing Rod"
	descr = "Throws a fishing line somewhere when you shoot. Hitting an enemy will deal damage and slow it."
	break;
	
	default:
	instance_destroy()
}
drawInfo = false
