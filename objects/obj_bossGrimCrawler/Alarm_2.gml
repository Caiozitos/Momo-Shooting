if state != "rage"{
	alarm[2] = 30
}
if state = "follow"{
repeat(3){
instance_create_depth(x+40+a*image_xscale,y+20,depth,obj_bossBall,{damage: damage,image_blend: c_red})
a += 20
}
a = 40
}
else if state = "rage"{
instance_create_depth(x,y+80,depth,obj_enemyFly)
alarm[2] = 120
}
