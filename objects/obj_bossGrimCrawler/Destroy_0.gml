audio_stop_sound(snd_deathEnemy1)
audio_play_sound(snd_deathEnemy1,0,0,1.3,,0.4)
obj_playerGun.addShake = 50
obj_playerGun.cameraShake = true
audio_play_sound(snd_monsterGrowl,5,0,1.4,0,0.5)
obj_playerGun.alarm[1] = 50

repeat(2){
instance_create_depth(x,y,0,obj_smoke,{
sprite_index: spr_purpleSmoke,
image_blend: c_red,
image_xscale: 4,
image_yscale: 4,
image_speed: 0.3
})}
	

var _moneyDrop = irandom_range(20,25)
repeat(_moneyDrop){
	instance_create_depth(x+irandom_range(-150,150),y+irandom_range(-150,150),depth,obj_coin)
}
global.score += 250

if image_xscale > 0.5{
	var _food = irandom_range(1,10) 
	if _food = 1{
		instance_create_depth(x,y,depth,obj_heal,{image_index: choose(0,1,2,3,4)})
	}
}
obj_gameController.alarm[1] = 1