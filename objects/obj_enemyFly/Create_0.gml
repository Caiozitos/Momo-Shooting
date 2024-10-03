spawnedEnemies = 0
hspd = 0
image_xscale = 0.8
image_yscale = 0.8
hittenExplosion = false

//Definindo se o casulo vai ser fechado ou caminhante
randomize()
var _enemyVariant = choose("Fly","Mosquito")

//Status varianete fechado
if _enemyVariant = "Fly"{
hspd = 2 //Velocidade padrão
hp = 9 //Vida
damage = 5 //Dano
i = 255
sprite_index = spr_enemyFly
}

//Status variante walker
else if _enemyVariant = "Mosquito"{
hspd = 3 //Velocidade padrão
hp = 12 //Vida
damage = 4 //Dano
i= 255
sprite_index = spr_enemyMosquito
}

recoverSpd = hspd

//Definindo outras variáveis
poisonDmg = 0
randomize()
image_index = irandom_range(0,5)

son = instance_create_depth(x,y,depth + 1,obj_enemyColisor,{father:id})
