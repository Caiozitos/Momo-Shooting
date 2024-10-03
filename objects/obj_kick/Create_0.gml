direction = obj_playerGun.image_angle
image_yscale = obj_playerGun.image_yscale
image_angle = obj_playerGun.image_angle
audio_play_sound(snd_darkHum,1,0)
instance_create_depth(x,y,depth,obj_friendlyColisor,{
direction: obj_playerGun.image_angle,
image_yscale: obj_playerGun.image_yscale,
image_angle: obj_playerGun.image_angle,
speed: 6})
alarm[0] = 20