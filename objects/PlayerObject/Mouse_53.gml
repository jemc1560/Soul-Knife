if(!cooldown)
{
	if(global.currentPlayer.isOriginal)
	{
		if (instance_exists(global.currentPlayer))
		{
			radius = 20
	
			centerX = global.currentPlayer.x
			centerY = global.currentPlayer.y
			currentDirection = point_direction(centerX, centerY, mouse_x, mouse_y);

			slash = instance_create_layer(centerX + lengthdir_x(radius, currentDirection), centerY + lengthdir_y(radius, currentDirection), "Instances", DaggerSlashObject);
			slash.image_xscale = 1/4
			slash.image_yscale = 1/4
			cooldown = true
			alarm[0] = 15
		}
	}
	else if(global.currentPlayer.isRat)
	{
		{
			attacking = true
			global.currentPlayer.sprite_index = rat_attack
			frame_attack += 1
			show_debug_message(frame_attack)
			if(frame_attack < 30)
			{
				global.currentPlayer.speed = 0
			}
			else if(frame_attack >= 30 && frame_attack < 45)
			{
				global.currentPlayer.speed = 3
			}
			else if(frame_attack > 45 && frame_attack < 75)
			{
				global.currentPlayer.speed = 0
				frame_attack = 0
			}
			else
			{
				attacking = false
				frame_attack = 0
			}
		}
	}
}