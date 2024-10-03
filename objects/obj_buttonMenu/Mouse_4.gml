if obj_transicao.image_alpha = 0 and !instance_exists(obj_collectionWindow){
	audio_play_sound(snd_confirm,1,0)
	if text = "Start"{
		obj_transicao.action = "fadeIn"
		global.nextRoom = rm_game
	}
	
	else if text = "Collection"{
		instance_create_depth(x,y,depth-900,obj_collectionWindow)
	}
}