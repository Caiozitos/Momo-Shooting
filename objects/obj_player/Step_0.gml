if not instance_exists(obj_shopWindow){
#region Movimento
if obj_playerGun.sprite_index != spr_minigunFiring{
//Recebendo o input
inputX = keyboard_check(ord("D")) - keyboard_check(ord("A"))
inputY = keyboard_check(ord("S")) - keyboard_check(ord("W"))

//Movendo o boneco
var _moveX = inputX * hspd
var _moveY = inputY * hspd
x += _moveX
y += _moveY
}
else{
	_moveX = 0
	_moveY = 0
}

#endregion

#region Sprites
//Manter a profundidade
depth = -y

//Mudas sprite andar/parado
if inputX != 0 or inputY != 0{
	sprite_index = spr_playerWalk
}
else{
	sprite_index = spr_playerStand
}

//Flip no sprite
if keyboard_check_pressed(ord("A")){
	image_xscale = -1
}
if keyboard_check_pressed(ord("D")){
	image_xscale = 1
}
#endregion

#region Colisão
if place_meeting(x+_moveX,y,obj_colisor){
	x -= _moveX
}
if place_meeting(x-_moveX,y,obj_colisor){
	x += _moveX
}
if place_meeting(x,y+_moveY,obj_colisor){
	y -= _moveY
}
if place_meeting(x,y-_moveY,obj_colisor){
	y += _moveY
}
}
#endregion

#region Immunity Frames
if isInvencible = true{
	if alarm[3] = 0 or alarm[3] = -1{
		alarm[3] = 30
	}
	if alarm[1] = 0 or alarm[1] = -1{
	alarm[1] = 5
	}
}
else{
	image_blend = c_white
}
#endregion

#region Corrigindo bugs
if global.score < 0{
	global.score = 0
}
if instance_exists(obj_shopWindow){
	inputX = 0
	inputY = 0
	sprite_index = spr_playerStand
}
room_speed += 10
if room_speed > 60{
	room_speed = 60
}

if hp > hpMax{
	hp = hpMax
}
#endregion

#region Morrendo
if hp <= 0{
	global.xTp = x
	global.yTp = y
	room_goto(rm_gameOver)
}
#endregion