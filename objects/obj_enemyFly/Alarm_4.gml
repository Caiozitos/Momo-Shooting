if sprite_index = spr_enemyFly{
instance_create_depth(x+40*image_xscale,y+20,depth,obj_enemyBall,{damage: damage,image_blend: c_yellow})
instance_create_depth(x+40*image_xscale,y+20,depth,obj_smoke,{sprite_index: spr_spit1})
}