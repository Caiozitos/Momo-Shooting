switch (item){
	case "shotgun":
	itemSprite = spr_shotgun
	type = "Gun"
	price = 40
	name = "Shotgun"
	descr = "Slow gun, shoots three bullets at once. Each bullet deals a percentage of your total damage."
	break;

case "pistol":
	itemSprite = spr_pistol
	type = "Gun"
	price = 20
	name = "Pistol"
	descr = "Basic, quick gun. Highly accurate and deals full damage."
	break;

case "uzi":
	itemSprite = spr_uzi
	type = "Gun"
	price = 30
	name = "UZI"
	descr = "Super fast semi-automatic gun, but the shots are a bit imprecise and deal low damage."
	break;

case "revolver":
	itemSprite = spr_revolver
	type = "Gun"
	price = 40
	name = "Revolver"
	descr = "Heavy gun. Bullets pierce through enemies. Each enemy pierced reduces the bullet's damage."
	break;

case "dart":
	itemSprite = spr_dartGun
	type = "Gun"
	price = 50
	name = "Dart Gun"
	descr = "Shoots low-damage darts. The poison is almost fatal but fades quickly."
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
	name = "Rocket Launcher"
	break;

case "banana":
	itemSprite = spr_fruitIcons
	image_index = 0
	type = "Item"
	price = 15
	name = "Banana"
	descr = "Increases max HP by +3."
	break;

case "mango":
	itemSprite = spr_fruitIcons
	image_index = 1
	type = "Item"
	price = 15
	name = "Mango"
	descr = "Increases max HP by +3."
	break;

case "apple":
	itemSprite = spr_fruitIcons
	image_index = 2
	type = "Item"
	price = 15
	name = "Apple"
	descr = "Increases max HP by +3."
	break;

case "completeMeal":
	itemSprite = spr_fruitIcons
	image_index = 3
	type = "Item"
	price = 35
	name = "Complete Meal"
	descr = "Increases max HP by +4 and fully heals you."
	break;

case "burger":
	itemSprite = spr_fruitIcons
	image_index = 4
	type = "Item"
	price = 25
	name = "Burger"
	descr = "Increases max HP by +6, but it isn't very healthy."
	break;

case "coffe":
	itemSprite = spr_fruitIcons
	image_index = 5
	type = "Item"
	price = 30
	name = "Coffee"
	descr = "Reduces the cooldown between your shots and increases your movement speed."
	break;

case "crochetGlooves":
	itemSprite = spr_shopItems
	image_index = 1
	type = "Item"
	price = 40
	name = "Crochet Gloves"
	descr = "Keeps you comfortable, protecting you from fire and projectiles."
	break;

case "skate":
	itemSprite = spr_shopItems
	image_index = 0
	type = "Item"
	price = 20
	name = "Skate"
	descr = "Increases your movement speed, but makes aiming a bit harder."
	break;

case "monocle":
	itemSprite = spr_shopItems
	image_index = 2
	type = "Item"
	price = 50
	name = "Monocle"
	descr = "Makes your shots 100% accurate, but reduces the shot speed and impact."
	break;

case "sophiesHat":
	itemSprite = spr_shopItems
	image_index = 3
	type = "Item"
	price = 50
	name = "Wind Hat"
	descr = "Creates small tornadoes around you that push enemies away."
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
	descr = "+1.5 Damage increase. Always good to have."
	break;

case "glitch":
	itemSprite = spr_shopItems
	image_index = 5
	type = "Item"
	price = 35
	name = "Gl!tcH_"
	descr = "Gr4nT_s A raNd0M __sT4t uP aNd a R4nd0m_ sT4t d0wn."
	break;

case "cooperCoin":
	itemSprite = spr_shopItems
	image_index = 6
	type = "Item"
	price = 60
	name = "Copper Coins"
	descr = "Tosses a coin into the air every 15 shots. Shooting the coin causes bullets to ricochet, dealing triple damage."
	break;

case "djDisk":
	itemSprite = spr_shopItems
	image_index = 7
	type = "Item"
	price = 40
	name = "DJ's Disk"
	descr = "Stops the music when you get hit. All enemies are paralyzed for a few seconds."
	break;

case "bulb":
	itemSprite = spr_shopItems
	image_index = 8
	type = "Item"
	price = 35
	name = "Light Bulb"
	descr = "Places a fragile bulb on the map. Touching it blinds nearby enemies."
	break;

case "mold":
	itemSprite = spr_shopItems
	image_index = 9
	type = "Item"
	price = 35
	name = "Mold"
	descr = "Leaves a poisonous mold behind you. It fades away quickly"
	break;

case "grenade":
	itemSprite = spr_shopItems
	image_index = 10
	type = "Item"
	price = 50
	name = "Grenades"
	descr = "Throws a grenade every few seconds. Includes a kitty explosion!"
	break;

case "landMines":
	itemSprite = spr_shopItems
	image_index = 11
	type = "Item"
	price = 50
	name = "Land Mines"
	descr = "It says 'KEEP DISTANCE.' Better let your enemies find out why."
	break;

case "boots":
	itemSprite = spr_shopItems
	image_index = 12
	type = "Item"
	price = 40
	name = "Boots"
	descr = "Kicks enemies away every few seconds."
	break;

case "molotov":
	itemSprite = spr_shopItems
	image_index = 13
	type = "Item"
	price = 50
	name = "Molotov"
	descr = "Breaks an explosive bottle on the ground. Be careful, you're not immune to fire... generally."
	break;

case "fishingRod":
	itemSprite = spr_shopItems
	image_index = 14
	type = "Item"
	price = 25
	name = "Fishing Rod"
	descr = "Throws a fishing line when you shoot. Hitting an enemy deals damage and slows it down."
	break;

default:
	instance_destroy()
}
drawInfo = false
