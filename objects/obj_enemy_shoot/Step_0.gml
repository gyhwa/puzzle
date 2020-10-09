/// @description Insert description here
// You can write your code in this editor


switch(state){ 
		case "idle": 
			if (alarm[0] < 0) {
				alarm[0] = room_speed * 2;
			}
		
		break; 
		
		case "stop":
			if (alarm[0] < 0) {	
				alarm[0] = room_speed;
			}
		break;
		
		case "shoot": 
			_dir = point_direction(x, y, target.x, target.y)
			dir = floor(_dir/90)
			direction = _dir
			image_angle = _dir
			if (shoot_rate >= 0) {
				if (bullet_rate >= 0) {
					bullet_rate -= 1;
				} else {
					var angle;
					if (dir == 0) {
						angle = direction
						var yy = y - sin(degtorad(angle)) * 18
						var xx = x + cos(degtorad(angle)) * 18
					}
					if (dir == 1) {
						angle = direction - 90
						var yy = y - cos(degtorad(angle)) * 18
						var xx = x - sin(degtorad(angle)) * 18
					}
					if (dir == 2) {
						angle = direction - 180
						var yy = y + sin(degtorad(angle)) * 18
						var xx = x - cos(degtorad(angle)) * 18
					}
					if (dir == 3) {
						angle = direction - 270
						var yy = y + cos(degtorad(angle)) * 18
						var xx = x + sin(degtorad(angle)) * 18
					}
					
					var inst = instance_create_layer(xx,yy, "Instances", obj_enemy_shoot_bullet)
					inst.direction = _dir
					image_angle = _dir
					bullet_rate = bullet_rate_max;
				}
			} else {
				state = "idle"
			}
			shoot_rate -= 1;
			
		break; 
		default:
		break;

	}