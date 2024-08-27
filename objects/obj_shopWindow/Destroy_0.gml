ds_list_destroy(global.shopItems)
global.shopItems = ds_list_create()

if global.wave <= 5{ds_list_add(global.shopItems,
"pistol",
"shotgun",
"uzi",
"revolver",

"dmgUp",
"banana",
"apple",
"mango",
"burger",
"completeMeal",
"coffe",
"crochetGlooves",
"skate",
"monocle",
"sophiesHat",
"pillow",
)}
else if global.wave > 5 && global.wave <= 10{ds_list_add(global.shopItems,
"pistol",
"shotgun",
"uzi",
"revolver",
"dart",

"dmgUp",
"banana",
"apple",
"mango",
"burger",
"completeMeal",
"coffe",
"crochetGlooves",
"skate",
"monocle",
"sophiesHat",
"pillow",
)}
else if global.wave > 10 && global.wave <= 15{ds_list_add(global.shopItems,
"ak47",
"flame",
"shotgun",
"revolver",

"dmgUp",
"banana",
"apple",
"mango",
"burger",
"completeMeal",
"coffe",
"crochetGlooves",
"skate",
"monocle",
"sophiesHat",
"pillow",

)}
else if global.wave > 15{ds_list_add(global.shopItems,
"ak47",
"flame",
"rocket",
"minigun",

"dmgUp",
"banana",
"apple",
"mango",
"burger",
"completeMeal",
"coffe",
"crochetGlooves",
"skate",
"monocle",
"sophiesHat",
"pillow",
)}

instance_destroy(obj_buttonBuy)
instance_destroy(obj_shopCard)
instance_destroy(obj_inventory)
instance_destroy(obj_buttonSell)
instance_destroy(obj_buttonReroll)
