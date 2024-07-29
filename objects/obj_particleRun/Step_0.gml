//Seguir as propriedades do player
image_xscale = obj_player.image_xscale
x = obj_player.x
y = obj_player.y
image_blend = c_black

//Aparecer somente quando o player andar
if obj_player.inputX != 0 or obj_player.inputY != 0{
	sprite_index = spr_particleWalk
}

else{
	sprite_index = spr_invisibleSprite
}