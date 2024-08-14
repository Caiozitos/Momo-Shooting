#region Definindo variáveis
escCloseGame = 0 //Timer de fechar o jogo
inputX = 0 //Se A ou D está sendo pressionado
inputY = 0 //Se W ou S está sendo pressionado
global.showStats = false //Se está mostrando os status

hpMax = 15 //Vida máxima
hp = 15 //Vida
global.statDamage = 5//Dano
global.pierceFactor = 0.25 //Debuff do piercing
global.shotRateBonus = 1 //Bonus de veloc. de tiro
global.inventory = ds_list_create() //Items possuídos
global.inventoryIcons = ds_list_create() //Items possuídos (image_index)
hspd = 7 //Velocidade horizontal
vspd = 7 //Velocidade vertical

isInvencible = false //Invencibilidade

global.money = 0 //Dinheiro
global.score = 0

alarm[0] = 1 //Iniciando as pegadas


global.shopItems = ds_list_create()
ds_list_add(global.shopItems,
"shotgun",
"uzi",
"revolver",

"banana",
"apple",
"mango",
"burger",
"completeMeal",
"coffe",
"dmgUp",

)

global.poisonShot = false
#endregion

#region Criando objetos
instance_create_depth(x,y,depth,obj_particleRun) //Partículas ao andar

#endregion