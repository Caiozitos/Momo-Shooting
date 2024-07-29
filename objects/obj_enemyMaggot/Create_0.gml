hspd = 0
hittenExplosion = false
son = instance_create_depth(x,y,depth + 1,obj_enemyColisor,{father:id})

//Definindo se a larva vai ser uma larva cavaleiro (10% de chance)
if global.wave >= 3 and global.wave <= 6{
	randomize()
	if image_xscale = 0.5 or image_xscale = -0.5{
		var _enemyVariant = "Normal"
	}
	else{
	var _enemyVariant = choose("Normal","Knight","Pod")
	}
}
else if global.wave > 6{
	if image_xscale = 0.5 or image_xscale = -0.5{
		var _enemyVariant = "Normal"
	}
	else{
	var _enemyVariant = choose("Knight","Pod")
	}
}

//Caso a wave seja menor que 3, deixa normal
else if global.wave < 3{
	_enemyVariant = "Normal"
}

//Status varianete cavaleiro
if _enemyVariant = "Knight"{
hspd = 4 //Velocidade padrão
hp = 12 //Vida
damage = 5 //Dano
i = 255
sprite_index = spr_enemyMaggotKnight
}

//Status variante normal
else if _enemyVariant = "Normal"{
hspd = 4 //Velocidade padrão
hp = 6 //Vida
damage = 3 //Dano
i= 255
}
	
else if _enemyVariant = "Pod"{
	hspd = 3
	hp = 6
	damage = 3
	i = 255
	sprite_index = spr_enemyPod
}

recoverSpd = hspd

//Definindo outras variáveis
poisonDmg = 0
randomize()
image_index = irandom_range(0,5)
