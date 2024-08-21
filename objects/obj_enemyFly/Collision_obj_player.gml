if obj_player.isInvencible = false and sprite_index != spr_enemyClosedPod and sprite_index != spr_enemyClosedPodFall{
	obj_player.hp -= damage
	obj_player.isInvencible = true
	obj_playerGun.cameraShake = true
	obj_playerGun.alarm[1] = 10
	audio_play_sound(snd_buzz,999,0)
	obj_damageIndicator.image_alpha = 1
	audio_play_sound(snd_playerHit,0,0)
	}
	global.score -= 150
