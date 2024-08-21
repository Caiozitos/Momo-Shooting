instance_create_depth(other.x,other.y,other.depth,obj_smoke,{sprite_index: spr_blood, image_blend: c_red})
scr_damageFeedback("Blocked!",c_white)
if audio_is_playing(snd_parry){
	audio_stop_sound(snd_parry)
}
audio_play_sound(snd_parry,25,0,,,random_range(0.90,1.2))
instance_destroy(other)