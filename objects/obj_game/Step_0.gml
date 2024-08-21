if !audio_is_playing(global.soundtrack){
	audio_stop_all()
	audio_play_sound(global.soundtrack,999999,1)
}