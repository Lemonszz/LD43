if(timer % 10 == 0 || timer % 11 == 0 || timer % 12 == 0)
{
	gpu_set_fog(true, c_white, 1, 1);
}

draw_self();

gpu_set_fog(false, 0, 0, 0);