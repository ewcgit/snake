/// @description Insert description here
// You can write your code in this editor

// Increase score and body parts by one.
global.points += 1;

var newBodyX = BodyPart[startBodyParts + global.points - 2].x;
var newBodyY = BodyPart[startBodyParts + global.points - 2].y;

BodyPart[startBodyParts + global.points-1] = instance_create_layer(newBodyX, newBodyY, "Instances", obj_body);

// Orange consumed.
audio_play_sound(snd_apple, 0, false);
instance_destroy(other);