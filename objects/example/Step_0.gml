if (curt.dd) return;
var create_dd = function() {
	var cu = curt.cu,
		cx = draw.sx + 161,
		cy = draw.ey + 1;
	curt.dd = dropdown_create(cx, cy, 160, 160, curt.li, example_selected, [cu], cu, 38);
	dropdown_set_style(curt.dd, default_font, $ffffff, $333333, $444444, 10, $aaaaaa);
}

if (keyboard_check_pressed(vk_enter)) {
	create_dd();
	return;
}

if (mouse_check_button_pressed(mb_left)) {
	var ex = draw.ex;
	if (point_in_rectangle(mouse_x, mouse_y, ex - 160, draw.sy, ex, draw.ey)) create_dd();
}