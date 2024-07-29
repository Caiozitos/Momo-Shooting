global.money += 1
instance_create_depth(x,y,depth,obj_smoke,{sprite_index: spr_shine})
audio_stop_sound(snd_coinCollect)
audio_play_sound(snd_coinCollect,0,0)
instance_destroy()