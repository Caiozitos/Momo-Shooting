alarm[0] = 120
if global.wavePaused = false and bossSpawned = false{
	if global.wave % 10 = 0{
		callEnemy()
	}
	else{
	repeat(round(global.wave / 2) + 1){
	callEnemy()
	}
	}
}

