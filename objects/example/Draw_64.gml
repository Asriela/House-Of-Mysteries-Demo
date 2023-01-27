
var sx = draw.sx,
	sy = draw.sy,
	ex = draw.ex,
	ey = draw.ey;
	
#region draw background
	
	draw_set_font(default_font);
	draw_set_color($ffffff);
	draw_set_circle_precision(64);
	draw_roundrect_ext(sx, sy, ex, ey, 4, 4, true);

#endregion

#region draw string
	
	draw_set_color($ffffff);
	draw_set_halign(fa_left);
	draw_set_valign(fa_middle);
	draw_text(sx + 7, sy + 19, "Select");
	draw_text(sx + 170, sy + 19, curt.li[curt.cu]);
	
	draw_line(ex - 27, sy + 16, ex - 20, sy + 23);
	draw_line(ex - 13, sy + 16, ex - 20, sy + 23);

#endregion

var tp = "1. Click the arrow with the mouse or press the [Enter] key to [open/close] the dropdown selector.\n2. Use the mouse to select and click the [left button] to select an option, or use the arrow keys to select and press [Enter] to select an option.";
draw_text_ext(140, 600, tp, 20, 1000);