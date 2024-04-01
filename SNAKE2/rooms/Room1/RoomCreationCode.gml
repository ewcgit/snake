// Stops all music and sound effects.
audio_stop_all();

// Play startup sound effect.
audio_play_sound(snd_death, 0, false);

// Play music.
audio_play_sound(snd_entertainer, 0, true);