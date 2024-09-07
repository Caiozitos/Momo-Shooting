if obj_transicao.image_alpha = 0{
	if text = "Start"{
		obj_transicao.action = "fadeIn"
		audio_play_sound(snd_confirm,1,0)
		global.nextRoom = rm_game
	}
}