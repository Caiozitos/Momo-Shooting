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

instance_destroy(obj_buttonBuy)
instance_destroy(obj_shopCard)
instance_destroy(obj_inventory)
instance_destroy(obj_buttonSell)
instance_destroy(obj_buttonReroll)
