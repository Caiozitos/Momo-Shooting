alarm[0] = 12
stopAnim = false
audio_play_sound(snd_paper,1,0)
volume = audio_sound_get_gain(global.soundtrack)
audio_sound_gain(global.soundtrack,volume*0.50,1000)