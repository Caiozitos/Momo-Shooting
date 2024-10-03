if damage = false{
with (other){
scr_freeze()
scr_damageFeedback("Gotcha!",c_yellow)
audio_play_sound(snd_parry,1,0)
instance_create_depth(x,y,depth,obj_smoke,{sprite_index: spr_blood, image_index: c_red})
}
}
damage = true
enemy = other
image_angle = point_direction(x, y, other.x,other.y);
x = obj_player.x + lengthdir_x(0, image_angle);
y = obj_player.y + lengthdir_y(0,image_angle)
growingSpeed = 0
alarm[0] = 5
image_xscale = point_distance(obj_player.x,obj_player.y,other.x,other.y) * 0.01
