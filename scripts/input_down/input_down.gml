/// @param name

var name = argument0;
var _inputs = global._inputs[? name];

var key = _inputs[0];
var keyScript = input_key_down;

if(is_mouse_input(key))
	keyScript = input_mouse_down;

var controller = _inputs[1];
var controllerScript = input_gp_down;

if(is_axis_input(controller))
	controllerScript = gamepad_direction;
	
if(script_execute(keyScript, key) || script_execute(controllerScript, controller))
	return true;
	
return false;