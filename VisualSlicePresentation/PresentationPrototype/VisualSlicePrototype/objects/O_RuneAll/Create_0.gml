/// @description Insert description here
// You can write your code in this editor
is_in_gui = false;
is_activated = false;
is_playing = false;

first_activation = false

var _vx = camera_get_view_width(view_camera[0]);
var _vy = camera_get_view_height(view_camera[0]);
display_set_gui_size(_vx, _vy);