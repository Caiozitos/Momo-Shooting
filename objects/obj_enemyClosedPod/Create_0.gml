spawnedEnemies = 0
hspd = 0
hittenExplosion = false
son = instance_create_depth(x,y,depth + 1,obj_enemyColisor,{father:id})

//Definindo se o casulo vai ser fechado ou caminhante
randomize()
var _enemyVariant = choose("Closed","Walker","Walker","Walker","Walker")

//Status varianete fechado
if _enemyVariant = "Closed"{
hspd = 0 //Velocidade padrão
hp = 9 //Vida
damage = 0 //Dano
i = 255
sprite_index = spr_enemyClosedPodFall

y = 0
randomize()
x = random_range(140,1300)
vspeed = 40
image_index = 0
 alarm[2] = irandom_range(5,15)
alarm[3] = 120
}

//Status variante walker
else if _enemyVariant = "Walker"{
hspd = 3 //Velocidade padrão
hp = 12 //Vida
damage = 4 //Dano
i= 255
sprite_index = spr_enemyPodWalker
}

recoverSpd = hspd

//Definindo outras variáveis
poisonDmg = 0
randomize()
image_index = irandom_range(0,5)
