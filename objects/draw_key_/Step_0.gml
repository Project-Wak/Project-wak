
time ++


if img_index = 0 && keyboard_check(global.left_key)
{
a = 1
}

if img_index = 1 && keyboard_check(global.right_key)
{
a = 1
}

if img_index = 2 && player.attack_ > 12
{
a = 1
}

if img_index = 3 && player.down_attack > 0
{
a = 1
}

if img_index = 4 && player.jump_attack > 0
{
a = 1
}

if img_index = 5 && global.awakening > 1
{
a = 1
}

if img_index = 6 && player.spin > 0
{
a = 1
}

if img_index = 7 && keyboard_check(global.jump_key)
{
a = 1
}

if img_index = 70 && abs(global.movement_speed) >= 5
{
a = 1
}

if img_index = 11 && player.dash_attack > 0
{
a = 1
}

if img_index = 12 && player.down_attack_with_rage > 0
{
a = 1
}

if img_index = 13 && player.guarding > 0 && audio_is_playing(guard)
{
a = 1
}

if ((img_index = 14 || img_index = 16 || img_index = 13) && player.attack_laser > 0)
{
a = 1
}

if img_index = 15 && player.spin_attack > 0
{
a = 1
}

if img_index = 24 && player.charge_attack > 0
{
a = 1
}

if img_index = 71 && player.charge_attack > 0
{
a = 1
}

if (img_index = 25 || img_index = 26) && player.attack_laser_sec > 0
{
a = 1
}

if img_index = 8 || img_index = 9
{
instance_destroy()
}

if (img_index = 27)
{
	if instance_exists(player)
	{
		if player.hurt > 0
		{
		hurted = 1
		}
	
		if audio_is_playing(critical_sfx) && hurted = 1
		{
		a = 1
		}
	}
}


if global.b_alpha >= 0.7 && global.t_b_alpha >= 1
{
a = 1
}