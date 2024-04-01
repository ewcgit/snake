/// @description Insert description here
// You can write your code in this editor

moveTimer--; // Speed adjustment.

// Controls for each direction. WASD or arrow keys.
if(((keyboard_check(ord("W"))) || (keyboard_check(vk_up))) && image_angle != 180){
	Direction = "up";
}
if(((keyboard_check(ord("A"))) || (keyboard_check(vk_left))) && image_angle != 270){
	Direction = "left";
}
if(((keyboard_check(ord("S"))) || (keyboard_check(vk_down))) && image_angle != 0){
	Direction = "down";
}
if(((keyboard_check(ord("D"))) || (keyboard_check(vk_right))) && image_angle != 90){
	Direction = "right";
}

// Head direction.
prevHeadX = x;
prevHeadY = y;

// Gets the direction to switch to.
if(moveTimer <= 0){
	if(Direction = "up"){
		y -= 32;
		image_angle = 0;
	}
	if(Direction = "down"){
		y += 32;
		image_angle = 180;
	}
	if(Direction = "left"){
		x -= 32;
		image_angle = 90;
	}
	if(Direction = "right"){
		x += 32;
		image_angle = 270;
	}
	
	// Moves via the head and grows a body part for each orange that has been consumed.
	for(i=1; i < startBodyParts + global.points; i += 1){
		var prevX = BodyPart[i].x;
		var prevY = BodyPart[i].y;
		BodyPart[i].x = prevHeadX;
		BodyPart[i].y = prevHeadY;
		
		prevHeadX = prevX;
		prevHeadY = prevY;
	}
	moveTimer = moveSpeed * room_speed; // Snake's speed.
}