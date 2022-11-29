if canbreake = true {
	audio_play_sound(sn_hit,1,0);
	global.coin += 1;
	broke -= 1;
}