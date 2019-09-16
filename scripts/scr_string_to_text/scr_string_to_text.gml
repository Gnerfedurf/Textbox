// Parameters
var input = argument0;
var textbar = argument1;

// Variables
var drawable;

// Separate Every Char From The Input String
for (var i = 1; i <= string_length(input); i++) {
	drawable = string_char_at(input, i);
	scr_draw_font_pixel(drawable, textbar);
}