alarm[0] = 120
if global.wavePaused = false{
	repeat(round(global.wave / 2) + 1){
	callEnemy()
	}
}

