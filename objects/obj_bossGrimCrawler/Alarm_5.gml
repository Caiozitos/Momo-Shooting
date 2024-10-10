
if hp < 350{
	audio_stop_sound(snd_deathEnemy1)
	audio_play_sound(snd_deathEnemy1,0,0,,,random_range(1,1.4))
	obj_playerGun.alarm[1] = 5

	instance_create_depth(x+irandom_range(-150,150),y+irandom_range(-150,150),depth-999,obj_smoke,{
	sprite_index: spr_purpleSmoke,
	image_xscale: 2,
	image_yscale: 2,
	image_blend: c_red
	})
}
alarm[5] = 10