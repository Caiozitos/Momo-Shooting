obj_playerGun.cameraShake = true
audio_stop_sound(snd_deathEnemy1)
audio_play_sound(snd_deathEnemy1,0,0,,,random_range(1,1.4))
cameraShake = 900
obj_playerGun.alarm[1] = 5
if sprite_index != spr_enemyPod{
instance_create_depth(x,y,0,obj_smoke,{
	sprite_index: spr_purpleSmoke,
	image_xscale: 2,
	image_yscale: 2
})
}
else{
	instance_create_depth(x,y,0,obj_smoke,{
	sprite_index: spr_podBreak,
	image_xscale: 2,
	image_yscale: 2
	})
	instance_create_depth(x-30,y,depth,obj_enemyMaggot,{
		image_xscale: 0.5,
		image_yscale: 0.5
	})
	instance_create_depth(x+30,y,depth,obj_enemyMaggot,{
		image_xscale: 0.5,
		image_yscale: 0.5
	})
}

if image_xscale = 0.5 or image_xscale = -0.5{var _moneyDrop = irandom_range(0,1)}
else if sprite_index = spr_enemyMaggot{var _moneyDrop = irandom_range(1,3)}
else if sprite_index = spr_enemyMaggotKnight{var _moneyDrop = irandom_range(1,5)}
else if sprite_index = spr_enemyPod{var _moneyDrop = 0}
repeat(_moneyDrop){
	instance_create_depth(x,y,depth,obj_coin)
}
global.score += 250

if image_xscale > 0.5{
	var _food = irandom_range(1,10) 
	if _food = 1{
		instance_create_depth(x,y,depth,obj_heal,{image_index: choose(0,1,2,3,4)})
	}
}

scr_freeze(5)


