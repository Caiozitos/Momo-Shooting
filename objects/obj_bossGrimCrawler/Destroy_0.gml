obj_playerGun.cameraShake = true
audio_stop_sound(snd_deathEnemy1)
audio_play_sound(snd_deathEnemy1,0,0,,,random_range(1,1.4))
cameraShake = 900
obj_playerGun.alarm[1] = 5

instance_create_depth(x,y,0,obj_smoke,{
sprite_index: spr_purpleSmoke,
image_blend: c_red,
image_xscale: 2,
image_yscale: 2
})
	

var _moneyDrop = irandom_range(3,5)
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
obj_gameController.alarm[1] = 1