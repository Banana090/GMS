/// @description Game conditions


// Check win game
if(game_win != 1 && game_lose != 1)
{
	var balls_count  = instance_number(r3_obj_ball);
	
	if(game_balls_prev == 0)
	{
		game_balls_prev = balls_count;
		game_target_index = r3_scr_next_target();
	}
	else
	{
		if(game_balls_prev != balls_count)
		{
			game_balls_prev = balls_count;
			game_time += game_time_add;
			game_target_index = r3_scr_next_target();
		}
		if(balls_count == 0)
		{
			game_win = 1;	
		}
	}
	if(game_time > 0)
	{
		game_time -= delta_time/1000000;
		if(game_time <= 0)
		{
			game_lose = 1;	
		}
	}
}



