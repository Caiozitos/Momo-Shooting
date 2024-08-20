//Freeze
hspd = 0

//Tomando dano (pierce)
if other.pierce = true{
scr_damageFeedback(other.damage)
hp -= other.damage
i = 0
	audio_stop_sound(snd_bulletHit)
	audio_stop_sound(snd_alienHit)
	audio_play_sound(snd_bulletHit,0,0,,,random_range(0.9,1.2))
	audio_play_sound(snd_alienHit,0,0,,,random_range(0.9,1.2))
}
	
//Tomando dano (sempierce)
else{
scr_damageFeedback(other.damage)
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
	audio_stop_sound(snd_bulletHit)
	audio_stop_sound(snd_alienHit)
	audio_play_sound(snd_bulletHit,0,0,,,random_range(0.9,1.2))
	audio_play_sound(snd_alienHit,0,0,,,random_range(0.9,1.2))
	}
	}
}

//Destruindo bala
if other.pierce = false{
instance_destroy(other)
}

//Tomando efeitos
if other.poison = "badly"{
	poisonDmg = global.statDamage * 0.90
	alarm[0] = 30
}
else if other.poison = "normal"{
	poisonDmg = other.damage * 0.80
	alarm[0] = 30
}

if poisonDmg != 0{
	hspd = hspd * 0.5
	image_blend = c_lime
}

//Colocando o inimigo na lista de inimigos atingidos
else{
	if ds_list_find_index(other.hitEnemies,id) = -1{
		other.damage -= other.damage * 0.40
		ds_list_add(other.hitEnemies,id)
	}
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
instance_create_depth(x,y,depth,obj_smoke,{sprite_index:_sprite,image_blend: c_red,x: x+10,image_xscale: _direction,image_yscale:2})
}
}
else{
instance_create_depth(x,y,depth,obj_smoke,{sprite_index:_sprite,image_blend: c_red,x: x+10,image_xscale: _direction,image_yscale:2})
}
}
global.score += 100