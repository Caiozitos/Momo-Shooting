if (global.wavePaused) {
    callEnemy = function() {
        show_debug_message("a");
    };
} else {
    switch (global.wave) {
        case 1:
            waveTime = 15 * 60;
            callEnemy = function() {
                randomize();
                var _spawnX = choose(0, room_width, room_width / 2);
                var _spawnY = choose(0, room_height, room_height / 2);
                if (_spawnX == room_width / 2 && _spawnY == room_height / 2) {
                    _spawnX = 0;
                }
                instance_create_depth(_spawnX, _spawnY, depth, obj_enemyMaggot);
            };
            break;
        case 2:
            waveTime = 20 * 60;
            callEnemy = function() {
                randomize();
                var _spawnX = choose(0, room_width, room_width / 2);
                var _spawnY = choose(0, room_height, room_height / 2);
                if (_spawnX == room_width / 2 && _spawnY == room_height / 2) {
                    _spawnX = 0;
                }
                instance_create_depth(_spawnX, _spawnY, depth, obj_enemyMaggot);
            };
            break;
        case 3:
            waveTime = 25 * 60;
            callEnemy = function() {
                randomize();
                var _spawnX = choose(0, room_width, room_width / 2);
                var _spawnY = choose(0, room_height, room_height / 2);
                if (_spawnX == room_width / 2 && _spawnY == room_height / 2) {
                    _spawnX = 0;
                }
                instance_create_depth(_spawnX, _spawnY, depth, obj_enemyMaggot);
            };
            break;
        case 4:
            waveTime = 30 * 60;
            callEnemy = function() {
                randomize();
                var _spawnX = choose(0, room_width, room_width / 2);
                var _spawnY = choose(0, room_height, room_height / 2);
                if (_spawnX == room_width / 2 && _spawnY == room_height / 2) {
                    _spawnX = 0;
                }
                instance_create_depth(_spawnX, _spawnY, depth, obj_enemyMaggot);
            };
            break;
        case 5:
            waveTime = 35 * 60;
            callEnemy = function() {
                randomize();
                var _spawnX = choose(0, room_width, room_width / 2);
                var _spawnY = choose(0, room_height, room_height / 2);
                var _choosenEnemy = choose(obj_enemyMaggot, obj_enemyClosedPod);
                if (_spawnX == room_width / 2 && _spawnY == room_height / 2) {
                    _spawnX = 0;
                }
                instance_create_depth(_spawnX, _spawnY, depth, _choosenEnemy);
            };
            break;
		 case 6:
	        waveTime = 40 * 60;
	        callEnemy = function() {
	            randomize();
	            var _spawnX = choose(0, room_width, room_width / 2);
	            var _spawnY = choose(0, room_height, room_height / 2);
	            if (_spawnX == room_width / 2 && _spawnY == room_height / 2) {
	                _spawnX = 0;
	            }
	            instance_create_depth(_spawnX, _spawnY, depth, obj_enemyClosedPod);
	        };
            break;
		 case 7:
	        waveTime = 45 * 60;
	        callEnemy = function() {
	            randomize();
	            var _spawnX = choose(0, room_width, room_width / 2);
	            var _spawnY = choose(0, room_height, room_height / 2);
	            if (_spawnX == room_width / 2 && _spawnY == room_height / 2) {
	                _spawnX = 0;
	            }
	            instance_create_depth(_spawnX, _spawnY, depth, obj_enemyClosedPod);
	        };
            break;
    }
}



if global.wavePaused = false and alarm[1] = 0{
	show_message("a")
	global.wave += 1
	alarm[1] = waveTime
}
