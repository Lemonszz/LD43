/// @param name
/// @param keyboard
/// @param controller

var name = argument0;
var key = argument1;
var control = argument2;

if(is_string(key))
	key = ord(key);

var _inputArray = [key, control];
global._inputs[? name] = _inputArray;