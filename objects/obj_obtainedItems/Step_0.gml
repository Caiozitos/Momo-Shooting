inputX = keyboard_check(ord("D")) - keyboard_check(ord("A"))
inputY = keyboard_check(ord("S")) - keyboard_check(ord("W"))

hspd = obj_player.hspd

//Movendo o boneco
var _moveX = inputX * hspd
var _moveY = inputY * hspd
x += _moveX
y += _moveY 

image_xscale = obj_player.image_xscale
image_yscale = obj_player.image_yscale
depth = obj_player.depth - 10
