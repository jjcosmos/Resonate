//singleton w_manager holds the intensity atr. 
//w_intensity goes from -1 to 1

w_intensity = 0;
rain_spawner = instance_create_layer(x,y, "FX", o_RainFXSpawner);
audio_sound_gain(RainLoFi,w_intensity,0);
audio_play_sound(RainLoFi,15,true);

audio_play_sound(Forest_Scrub_Forest_Ambience_With_Birds, 15, true);