alarm[2] = 30
if state = "follow"{
instance_create_depth(x+40*image_xscale,y+20,depth,obj_bossBall,{damage: damage,image_blend: c_red})
}