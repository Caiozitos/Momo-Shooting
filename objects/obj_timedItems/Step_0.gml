var _crackshot = false

#region Crackshot
for(var i = 0;i <= ds_list_size(global.cosmetics);i += 1){
	if ds_list_find_value(global.cosmetics,i) = spr_obtCopperCoins{
		var _crackshot = true
	}
}

if _crackshot = true{
	if frac(global.bulletsCreated / 16) = 0{
		instance_create_depth(x,y,depth,obj_copperCoin)
		global.bulletsCreated += 1
	}
}
#endregion

#region DJ Disk
for(var i = 0;i <= ds_list_size(global.cosmetics);i += 1){
	if ds_list_find_value(global.cosmetics,i) = spr_obtDJDisk{
			with obj_enemyColisor{
			if obj_damageIndicator.image_alpha != 0{
				father.hspd = 0
				audio_sound_gain(global.soundtrack,0,0)
			}
			else{
				father.hspd = mainSpeed
				audio_sound_gain(global.soundtrack,global.musicVolume,1000)
			}
		}
	}
}

#endregion