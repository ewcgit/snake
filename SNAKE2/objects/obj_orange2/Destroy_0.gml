/// @description Insert description here
// You can write your code in this editor

//Setup variables for each random spawn upon the orange consumption.
xPos = -16 + 32 * round(random_range(32, room_width - 32) / 32);
yPos = -16 + 32 * round(random_range(32, room_height - 32) / 32);
// Random spawn point for the orange divisible by 32.
instance_create_layer(xPos, yPos, "Instances_1", obj_orange2);