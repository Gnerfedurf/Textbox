// Variables
var checkables = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ ";

// Listen For Backspace
if (keyboard_check_pressed(vk_backspace)) {
	cooldown = 0;
}
else if (keyboard_check(vk_backspace)) {
	if (cooldown == 0) {
		text.text = string_delete(text.text, string_length(text.text), 1);
		cooldown = 10;
	}
	else {
		cooldown -= 1;
	}
}

// Listen For Input And Add It To String
for (var i = 1; i <= string_length(checkables); i++) {
	value = string_char_at(checkables, i);
	if (scr_get_input_with_cooldown(value)) {
		text.text += value;
	}
}