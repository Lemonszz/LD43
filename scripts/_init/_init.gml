#macro ENTITY_SCALE 4

_input_init();

input_add("left", "A", input_left_stick_left);
input_add("right", "D", input_left_stick_right);
input_add("up", "W", input_left_stick_up);
input_add("jump", vk_space, gp_face1);
input_add("down", "S", input_left_stick_down);
input_add("reset", "R", gp_start);
input_add("kill", "E", gp_face2);

