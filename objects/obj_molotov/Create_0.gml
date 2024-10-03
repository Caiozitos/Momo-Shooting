audio_play_sound(snd_swish,1,0)
audio_play_sound(snd_parry,2,0)
alarm[0] = 40
alarm[1] = 20
alarm[2] = 60 * 6
x = obj_player.x
y = obj_player.y
depth = -y + 200
if instance_exists(obj_shopWindow){
	instance_destroy()
}