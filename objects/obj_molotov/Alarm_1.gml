if image_index >= 14{
	with (all){
		if place_meeting(x,y,other){
		if object_get_name(object_index) = "obj_player" and !instance_exists(obj_orbitalGloove){
			obj_player.hp -= 5
			obj_player.isInvencible = true
			obj_playerGun.cameraShake = true
			obj_playerGun.alarm[1] = 10
			audio_play_sound(snd_buzz,999,0)
			obj_damageIndicator.image_alpha = 1
			audio_play_sound(snd_playerHit,0,0)
		}
		if string_starts_with(object_get_name(object_index),"obj_enemy") and !string_ends_with(object_get_name(object_index),"Colisor") and !string_ends_with(object_get_name(object_index),"Ball"){
			hp -= global.statDamage
			i = 0
		}
	}
	}
}
alarm[1] = 20