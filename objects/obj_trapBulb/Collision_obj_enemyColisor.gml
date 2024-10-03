if image_index = 0{
with (all){
	var _objName = object_get_name(object_index)
	if string_starts_with(_objName,"obj_enemy") and !string_ends_with(_objName,"Colisor") and !string_ends_with(_objName,"Ball"){
		if point_distance(x,y,other.x,other.y) <= 160{
		son.state = "blind"
		son.alarm[0] = 240
		}
	}
}
scr_freeze()
audio_play_sound(snd_deathEnemy1,1,0)
audio_play_sound(snd_glassBreak,1,0)
obj_playerGun.cameraShake = true
obj_playerGun.alarm[1] = 3
instance_create_depth(x,y,depth-50,obj_smoke,{sprite_index: spr_smokePuff, image_xscale: 2, image_yscale: 2})
image_index = 1
}
