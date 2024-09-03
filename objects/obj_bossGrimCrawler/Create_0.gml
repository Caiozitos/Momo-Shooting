hittenExplosion = false
recoverSpd = 4
hspd = 4
son = instance_create_depth(x,y,depth + 1,obj_enemyColisor,{father:id})
hp = 1500
damage = 8 
i = 255
poisonDmg = 0
dashes = 0
randomize()
image_index = irandom_range(0,5)
image_xscale = 1.2
state = "follow"
alarm[2] = 60
alarm[3] = 180
