audio_group_load(audiogroup_priority)
#region Definindo variáveis 
escCloseGame = 0 //Timer de fechar o jogo
inputX = 0 //Se A ou D está sendo pressionado
inputY = 0 //Se W ou S está sendo pressionado
global.showStats = false //Se está mostrando os status

hpMax = 15 //Vida máxima
hp = 15 //Vida
global.bulletSpray = 0 //Bonus de desvio das balas
global.bulletsCreated = 0
global.statDamage = 5//Dano
global.pierceFactor = 0.25 //Debuff do piercing
global.shotRateBonus = 1 //Bonus de veloc. de tiro
global.inventory = ds_list_create() //Items possuídos
global.inventoryIcons = ds_list_create() //Items possuídos (image_index)
hspd = 7 //I dont care

isInvencible = false //Invencibilidade

global.fishingRods = 0
global.money = 15 //Dinheiro
global.score = 0
global.playtime = current_hour * 60 + current_minute

alarm[0] = 1 //Iniciando as pegadas
alarm[4] = 3 //Iniciando a smoke

global.cosmetics = ds_list_create()
global.shopItems = ds_list_create()
ds_list_add(global.shopItems,
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
"glitch",
"djDisk",
"cooperCoin",
"mold",
"bulb",
"grenade",
"landMines",
"boots",
"molotov",
"fishingRod"
)

global.poisonShot = false
#endregion

#region Criando objetos
instance_create_depth(x,y,depth,obj_obtainedItems)

#endregion