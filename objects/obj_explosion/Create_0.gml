audio_play_sound(snd_explosion,0,0)
obj_playerGun.cameraShake = true
obj_playerGun.alarm[1] = 5
if ds_list_find_index(global.cosmetics,spr_obtMold) != -1{
	repeat(10){
		instance_create_depth(irandom_range(x-250,x+250),irandom_range(y-100,x+100),depth,obj_smoke,{sprite_index: spr_mold})
	}
}