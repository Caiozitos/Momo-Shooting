if sprite_index = spr_enemyPodWalkerShot{
audio_stop_sound(snd_splitterShot)
audio_play_sound(snd_splitterShot,0,0)
instance_create_depth(x+40*image_xscale,y+20,depth,obj_enemyBall,{damage: damage,image_blend: c_red})
instance_create_depth(x+40*image_xscale,y+20,depth,obj_smoke,{sprite_index: spr_spit1})
}