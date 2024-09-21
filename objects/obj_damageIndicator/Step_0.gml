if image_alpha = 1{
	for(var i = 0;i <= ds_list_size(global.cosmetics);i += 1){
		if ds_list_find_value(global.cosmetics,i) = spr_obtDJDisk{
			audio_play_sound(snd_diskScratch,12,0)
		}
	}
}

if image_alpha != 0{
	image_alpha -= 0.01
}