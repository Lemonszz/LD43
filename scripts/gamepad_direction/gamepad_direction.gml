///@param key

var _amt = 0.5;
switch(argument0)
{
	case input_left_stick_down:
		return gamepad_axis_value(0, gp_axislv) > _amt;
	case input_left_stick_up:
		return gamepad_axis_value(0, gp_axislv) < -_amt;
	case input_left_stick_left:
		return gamepad_axis_value(0, gp_axislh) < -_amt;
	case input_left_stick_right:
		return gamepad_axis_value(0, gp_axislh) > _amt;
	case input_right_stick_down:
		return gamepad_axis_value(0, gp_axisrv) > _amt;
	case input_right_stick_up:
		return gamepad_axis_value(0, gp_axisrv) < -_amt;
	case input_right_stick_left:
		return gamepad_axis_value(0, gp_axisrh) < -_amt;
	case input_right_stick_right:
		return gamepad_axis_value(0, gp_axisrh) > _amt;
}