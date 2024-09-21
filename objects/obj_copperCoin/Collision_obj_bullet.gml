with other{
	scr_damageFeedback("Crackshot!",c_orange)
	scr_freeze()
	audio_play_sound(snd_death,1,0,0.50,0,1.4)
	move_towards_point(obj_enemyColisor.x,obj_enemyColisor.y,speed+5)
	image_angle = point_direction(x,y,obj_enemyColisor.x,obj_enemyColisor.y)
	damage = damage*3
}
instance_create_depth(x,y,depth,obj_smoke,{sprite_index: spr_shine,image_xscale: 2,image_yscale:2})
instance_destroy()