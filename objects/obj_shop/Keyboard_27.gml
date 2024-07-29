if instance_exists(obj_shopWindow){
global.wavePaused = false
global.wave += 1
obj_gameController.alarm[1] = obj_gameController.waveTime
instance_destroy(obj_shopWindow)
}