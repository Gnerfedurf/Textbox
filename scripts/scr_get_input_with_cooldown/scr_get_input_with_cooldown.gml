// Parameters
var value = argument0;

// Check If Value Should Be Added
if (keyboard_check_pressed(ord(value))) {
	cooldown = 0;
}
else if (keyboard_check(ord(value))) {
	if (cooldown == 0) {
		cooldown = 10;
		return true;
	}
	else {
		cooldown -= 1;
	}
}

// Return If Value Is Not Added
return false;