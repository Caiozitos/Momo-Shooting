var _right = keyboard_check(ord("D")) || (gamepad_axis_value(0,gp_axislh) > 0)
var _left = keyboard_check(ord("A")) || (gamepad_axis_value(0,gp_axislh) < 0)
var _down = keyboard_check(ord("S"))
var _up = keyboard_check(ord("W"))

inputX = _right - _left
inputY = _down - _up

hspd = obj_player.hspd

//Movendo o boneco
var _moveX = inputX * hspd
var _moveY = inputY * hspd
x += _moveX
y += _moveY


image_xscale = obj_player.image_xscale
image_yscale = obj_player.image_yscale
depth = obj_player.depth - 10
