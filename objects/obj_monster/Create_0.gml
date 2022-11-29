spd = 0.5;
image_speed = 0;
damage = 1;
targetX = 0;
targetY = 0;
delay = 0;
state = ENEMY_STATE.IDLE;
enum ENEMY_STATE {
	IDLE,
	CHASE,
	ATTACK
}