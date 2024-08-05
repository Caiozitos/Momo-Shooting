if sprite_index = spr_enemyFly{
audio_stop_sound(snd_flyShoot)
audio_play_sound(snd_flyShoot,0,0,,,random_range(0.9,1.4))
instance_create_depth(x+40*image_xscale,y+20,depth,obj_enemyBall,{damage: damage,image_blend: c_yellow})
instance_create_depth(x+40*image_xscale,y+20,depth,obj_smoke,{sprite_index: spr_spit1})
}