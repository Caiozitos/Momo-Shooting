randomize()
if other.pierce = true{
if ds_list_find_index(other.hitEnemies,id) = -1{
hp -= other.damage
i = 0
	if sprite_index != spr_enemyMaggotKnight{
	audio_stop_sound(snd_bulletHit)
	audio_stop_sound(snd_alienHit)
	audio_play_sound(snd_bulletHit,0,0,,,random_range(0.9,1.2))
	audio_play_sound(snd_alienHit,0,0,,,random_range(0.9,1.2))
}
else{
	audio_stop_sound(snd_bulletHit)
	audio_stop_sound(snd_metalHurt)
	audio_play_sound(snd_bulletHit,0,0,,,random_range(0.9,1.2))
	audio_play_sound(snd_metalHurt,0,0,,,random_range(0.9,1.2))
}
}
}
	
//Tomando dano (sempierce)
else{
hp -= other.damage
i = 0
	if global.currentGun != spr_flamethrower{
	if global.currentGun = "ak47" or global.currentGun ="uzi" or global.currentGun ="minigun"{
		var _choose = choose(1,2,3,4,5)
	}
	else{
		var _choose = 1
	}
	if _choose = 1{
	if sprite_index != spr_enemyMaggotKnight{
	audio_stop_sound(snd_bulletHit)
	audio_stop_sound(snd_alienHit)
	audio_play_sound(snd_bulletHit,0,0,,,random_range(0.9,1.2))
	audio_play_sound(snd_alienHit,0,0,,,random_range(0.9,1.2))
}
else{
	audio_stop_sound(snd_bulletHit)
	audio_stop_sound(snd_metalHurt)
	audio_play_sound(snd_bulletHit,0,0,,,random_range(0.9,1.2))
	audio_play_sound(snd_metalHurt,0,0,,,random_range(0.9,1.2))
}
	}
	}
}

//Destruindo bala
if other.pierce = false{
instance_destroy(other)
}
//Colocando o inimigo na lista de inimigos atingidos
else{
	if ds_list_find_index(other.hitEnemies,id) = -1{
		other.damage -= other.damage * other.pierceFactor
		ds_list_add(other.hitEnemies,id)
	}
}
//Tomando efeitos
if other.poison = "badly"{
	poisonDmg = global.statDamage * 0.90
	if alarm[0] = -1{
	alarm[0] = 30
	}
}
else if other.poison = "normal"{
	poisonDmg = other.damage * 0.80
	if alarm[0] = -1{
	alarm[0] = 30
	}
}

if poisonDmg != 0{
	hspd = hspd * 0.5
	image_blend = c_lime
}

//Criando particula de tiro
if other.sprite_index != spr_flame{
if other.x > x{
	var _direction = -2
}
else{
	var _direction = 2
}
randomize()
var _choose = choose(1,2,3)
var _sprite = choose(spr_blood,spr_blood2,spr_blood3)
if global.currentGun = "uzi" or global.currentGun = "ak47" or  global.currentGun = "minigun"{
if _choose = 1{
instance_create_depth(x,y,depth,obj_smoke,{sprite_index:_sprite,x: x+10,image_xscale: _direction,image_yscale:2})
}
}
else{
instance_create_depth(x,y,depth,obj_smoke,{sprite_index:_sprite,x: x+10,image_xscale: _direction,image_yscale:2})
}
}
global.score += 100
