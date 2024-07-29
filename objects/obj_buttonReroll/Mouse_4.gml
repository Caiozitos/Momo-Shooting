if global.money >= global.rerollPrice{
global.money -= global.rerollPrice
global.rerollPrice += round(global.rerollPrice * 0.5)
obj_playerGun.cameraShake = true
audio_play_sound(snd_chaChing,0,0)
obj_playerGun.alarm[1] = 5
instance_destroy(obj_buttonBuy)
instance_destroy(obj_shopCard)

ds_list_destroy(global.shopItems)
global.shopItems = ds_list_create()
if global.wave <= 5{ds_list_add(global.shopItems,
"shotgun",
"uzi",
"revolver",

"hpUp",
"dmgUp",

)}
else if global.wave > 5 && global.wave <= 10{ds_list_add(global.shopItems,
"shotgun",
"uzi",
"revolver",
"dart",

"hpUp",
"dmgUp",

)}
else if global.wave > 10 && global.wave <= 15{ds_list_add(global.shopItems,
"ak47",
"flame",

"hpUp",
"dmgUp",

)}
else if global.wave > 15{ds_list_add(global.shopItems,
"ak47",
"rocket",
"minigun",

"hpUp",
"dmgUp",

)}
	
instance_create_depth(298,429,depth-1,obj_shopCard)
instance_create_depth(558,429,depth-1,obj_shopCard)
instance_create_depth(834,429,depth-1,obj_shopCard)
}