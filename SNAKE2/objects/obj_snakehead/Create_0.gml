/// @description Insert description here
// You can write your code in this editor

moveSpeed = 0.08; // Smaller = faster.
moveTimer = moveSpeed * room_speed;
Direction = "up"; // Moving upwards.

global.points = 0; // Score accessible from anywhere.
startBodyParts = 2; // [0] = head.

BodyPart[0] = obj_snakehead;

// Spawning each new body part.
for(i = 1; i < startBodyParts; i += 1){
	BodyPart[i] = instance_create_layer(x, (y+32*i), "Instances", obj_body);
}