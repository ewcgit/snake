/// @description Insert description here
// You can write your code in this editor

draw_self(); // Displays the snake player.
draw_set_font(fnt_main);
draw_text(room_height - 10, 20, "Score: " + string(global.points)); // Displays the score in Helvetica font.