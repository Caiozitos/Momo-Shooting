if global.currentGun = undefined{
	global.currentGun = gunList[|0]
}

 #region Valores de cada arma
var _gunDirection = point_direction(obj_player.x, obj_player.y, mouse_x, mouse_y);
var special = undefined;

switch (global.currentGun) {
    case "pistol":
        var _deadzone = 60;
        var _bulletDamage = global.statDamage * 1;
        var _gunSprite = spr_pistol;
        var _rechargeTime = 8;
        var _distancePlayer = 40;
        var _shakeX = irandom_range(103, 108);
        var _shakeY = irandom_range(97, 103);
        var _sound = snd_pistolShoot;
        var _autoshot = false;
        var _bulletDirection = _gunDirection;
        var _spdDebuff = 3;
        var _piercing = false;
        var _bulletSprite = spr_bullet;
		var _pierceFactor = global.pierceFactor
        break;
    
    case "shotgun":
        var _deadzone = 60;
        var _bulletDamage = global.statDamage * 0.40;
        var _gunSprite = spr_shotgun;
        var _rechargeTime = 14;
        var _distancePlayer = 40;
        var _shakeX = irandom_range(105, 110);
        var _shakeY = irandom_range(95, 105);
        var _sound = snd_shotgunShoot;
        var _autoshot = false;
        var _bulletDirection = _gunDirection;
        var _spdDebuff = 5;
        var _piercing = false;
        var _bulletSprite = spr_bullet;
		var _pierceFactor = global.pierceFactor
        special = function() {
            repeat(2){
                instance_create_depth(x, y, -999, obj_bullet, {
                    pierce: false,
					pierceFactor: global.pierceFactor,
                    damage: global.statDamage * 0.40,
                    image_angle: image_angle,
                    direction: point_direction(obj_player.x, obj_player.y, mouse_x, mouse_y) + irandom_range(-20, 20)
                });
            }
        };
        break;

    case "uzi":
        var _deadzone = 60;
        var _bulletDamage = global.statDamage * 0.20;
        var _gunSprite = spr_uzi;
        var _rechargeTime = 4;
        var _distancePlayer = 40;
        var _shakeX = irandom_range(100, 105);
        var _shakeY = irandom_range(95, 100);
        var _sound = snd_uziShoot;
        var _autoshot = true;
        var _bulletDirection = _gunDirection + random_range(-5,5);
        var _spdDebuff = 2;
        var _piercing = false;
        var _bulletSprite = spr_bullet;
		var _pierceFactor = global.pierceFactor
        break;

    case "revolver":
        var _deadzone = 60;
        var _bulletDamage = global.statDamage * 1;
        var _gunSprite = spr_revolver;
        var _rechargeTime = 10;
        var _distancePlayer = 40;
        var _shakeX = irandom_range(103, 108);
        var _shakeY = irandom_range(97, 103);
        var _sound = snd_revolverShot;
        var _autoshot = false;
        var _bulletDirection = _gunDirection;
        var _spdDebuff = 5;
        var _piercing = true;
        var _bulletSprite = spr_bullet;
		var _pierceFactor = 0.40
        break;

    case "dart":
        var _deadzone = 60;
        var _bulletDamage = global.statDamage * 0.40;
        var _gunSprite = spr_dartGun;
        var _rechargeTime = 8;
        var _distancePlayer = 30;
        var _shakeX = irandom_range(100, 100);
        var _shakeY = irandom_range(100, 100);
        var _sound = snd_dartGun;
        var _autoshot = false;
        var _bulletDirection = _gunDirection;
        var _spdDebuff = 2;
        var _piercing = false;
        var _bulletSprite = spr_dart;
		var _pierceFactor = global.pierceFactor
        break;

    case "ak47":
        var _deadzone = 60;
        var _bulletDamage = global.statDamage * 0.50;
        var _gunSprite = spr_ak47;
        var _rechargeTime = 7;
        var _distancePlayer = 60;
        var _shakeX = irandom_range(100, 105);
        var _shakeY = irandom_range(95, 100);
        var _sound = snd_ak47Shoot;
        var _autoshot = true;
        var _bulletDirection = _gunDirection + (irandom_range(-2,3));
        var _spdDebuff = 3;
        var _piercing = false;
        var _bulletSprite = spr_bullet;
		var _pierceFactor = global.pierceFactor
        break;

    case "flame":
        var _deadzone = 60;
        var _bulletDamage = global.statDamage * 0.10;
        var _gunSprite = spr_flamethrower;
        var _rechargeTime = 7;
        var _distancePlayer = 60;
        var _shakeX = irandom_range(100, 100);
        var _shakeY = irandom_range(100, 100);
        var _sound = snd_flameShoot;
        var _autoshot = true;
        var _bulletDirection = _gunDirection;
        var _spdDebuff = 4;
        var _piercing = true;
        var _bulletSprite = spr_flame;
		var _pierceFactor = global.pierceFactor
        break;

    case "minigun":
        var _deadzone = 60;
        var _bulletDamage = global.statDamage * 0.17;
        var _gunSprite = spr_minigun;
        var _rechargeTime = 3;
        var _distancePlayer = 60;
        var _shakeX = irandom_range(100, 100);
        var _shakeY = irandom_range(98, 100);
        var _sound = snd_minigunShoot;
        var _autoshot = true;
        var _bulletDirection = _gunDirection + random_range(-20,20);
        var _spdDebuff = 4;
        var _piercing = false;
        var _bulletSprite = spr_bullet;
		var _pierceFactor = global.pierceFactor
        break;
		
	case "rocket":
	   var _deadzone = 60;
       var _bulletDamage = global.statDamage * 2;
       var _gunSprite = spr_rocket
       var _rechargeTime = 120;
       var _distancePlayer = 60;
	   var _shakeX = irandom_range(80, 130);
       var _shakeY = irandom_range(75, 120);
       var _sound = snd_rocketShoot;
       var _autoshot = false;
       var _bulletDirection = _gunDirection
       var _spdDebuff = 8;
       var _piercing = false;
       var _bulletSprite = spr_missile;
	   var _pierceFactor = global.pierceFactor
       break;
	
}
#endregion

#region Comportamento
var 
if (point_distance(mouse_x, mouse_y, obj_player.x, obj_player.y) > _deadzone) {
    x = obj_player.x + lengthdir_x(_distancePlayer, _gunDirection);
    y = obj_player.y + lengthdir_y(_distancePlayer, _gunDirection);
    image_angle = point_direction(x, y, mouse_x, mouse_y);
    image_yscale = (mouse_x <= x) ? -1 : 1;
}
depth = obj_player.depth + 10;
sprite_index = _gunSprite;
#endregion

#region Screenshake
if (cameraShake == true) {
    camera_set_view_pos(view_camera[0], _shakeX + irandom_range(-addShake, +addShake), _shakeY + irandom_range(-addShake, +addShake));
}
#endregion

if not instance_exists(obj_shopWindow) {
#region Atirando
cursor_sprite = spr_crosshair;

if _autoshot = true or global.autoshotConfig = true{
	var _condition = mouse_check_button(mb_left) and gunReady
}
else{
	var _condition = mouse_check_button_pressed(mb_left) and gunReady
}
if (_condition) {
	if global.currentGun = "rocket"{
		image_blend = c_red
	}

    if (!(_sound == snd_uziShoot || _sound == snd_flameShoot || _sound == snd_minigunShoot)) {
        audio_stop_sound(_sound);
        audio_play_sound(_sound, 20, 0, , , random_range(0.9, 1.2));
    } else {
        audio_play_sound(_sound, 20, 0);
    }

    cameraShake = true;
    
    if (global.currentGun == "minigun") {
        sprite_index = spr_minigunFiring;
    } else {
        image_index = 1;
    }
    
    alarm[0] = _rechargeTime;
    alarm[1] = 5;
    alarm[2] = 10;
    gunReady = false;

    instance_create_depth(x, y, -999, obj_bullet, {
        damage: _bulletDamage,
        image_angle: image_angle,
        direction: _bulletDirection,
        pierce: _piercing,
        sprite_index: _bulletSprite,
		pierceFactor: _pierceFactor
    });

    global.score += 1;
    if (special != undefined) {
        special();
    }
	
	
	
	if global.fishingRods > 0{
	instance_create_depth(x,y,depth,obj_fishingLine,{
	image_angle: irandom_range(0,360),
	direction: image_angle
	}
)
	}
} else {
    
    if (global.currentGun == "minigun") {
        sprite_index = spr_minigun;
    }
}
#endregion

#region Trocando a arma
if (mouse_wheel_up() && gunIndex != ds_list_size(gunList) - 1) {
    gunIndex += 1;
}
if (mouse_wheel_down() && gunIndex != 0) {
    gunIndex -= 1;
}
if (keyboard_check_pressed(vk_f1)) { gunIndex = 1; }
if (keyboard_check_pressed(vk_f2)) { gunIndex = 2; }
if (keyboard_check_pressed(vk_f3)) { gunIndex = 3; }

global.currentGun = ds_list_find_value(gunList, gunIndex);
}
#endregion

if global.currentGun != "rocket"{
	image_blend = c_white
}