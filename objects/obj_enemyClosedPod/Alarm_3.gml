if spawnedEnemies <= 4{
if sprite_index = spr_enemyClosedPod{
instance_create_depth(x,y,depth,obj_enemyMaggot,{image_xscale: 0.5,image_yscale: 0.5})
spawnedEnemies += 1
}
}
alarm[3] = 120