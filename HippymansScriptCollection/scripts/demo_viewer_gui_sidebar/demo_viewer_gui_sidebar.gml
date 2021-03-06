/// @func demo_viewer_gui_sidebar
/// @args width
var width = argument0;

var flags = EImGui_WindowFlags.NoResize | 
			EImGui_WindowFlags.NoMove |
			EImGui_WindowFlags.NoCollapse;

var size = [width,window_get_height()];
imguigml_set_next_window_pos(0,0);
imguigml_set_next_window_size(size[0],size[1]);
imguigml_begin("Demos",undefined,flags);

/*
var demoName = ds_map_find_first(demoMap);
while (!is_undefined(demoName)) {
	
	if (imguigml_button(demoName,-1)) {
		demo_viewer_change_demo(demoName);
	}
	
	demoName = ds_map_find_next(demoMap,demoName);
}
*/

for (var i = 0; i < demoCount; ++i) {
	var demoName = demoOrder[i];
	if (imguigml_button(demoName,-1)) {
		demo_viewer_change_demo(demoName);
	}
}

imguigml_end();