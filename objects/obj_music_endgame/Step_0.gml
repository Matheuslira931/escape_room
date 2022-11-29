script_execute(src_get_input());

if (global.currentVolume != global.volume) {
	global.currentVolume = global.volume;
	var num = audio_get_listener_count();
	for (var i = 0; i < num; ++i;) {
		var info = audio_get_listener_info(i);
		var ind = info[? "index"];
		audio_set_master_gain(info[? "index"], global.currentVolume/10);
		ds_map_destroy(info);
	}
	show_debug_message("volume : "+string(audio_get_master_gain(ind)));
}