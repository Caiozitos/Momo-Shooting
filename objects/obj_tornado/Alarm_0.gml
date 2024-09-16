instance_create_depth(x,y,depth,obj_friendlyColisor,{speed: 12, sprite_index: spr_tornado})
instance_create_depth(x,y,depth,obj_friendlyColisor,{speed: -12, sprite_index: spr_tornado})
instance_create_depth(x,y,depth,obj_friendlyColisor,{vspeed: 12, sprite_index: spr_tornado})
instance_create_depth(x,y,depth,obj_friendlyColisor,{vspeed: -12, sprite_index: spr_tornado})
alarm[0] = 5 * 60