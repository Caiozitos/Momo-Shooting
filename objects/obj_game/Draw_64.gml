draw_self()
var _cursorX = device_mouse_x_to_gui(0)
var _cursorY = device_mouse_y_to_gui(0)
draw_sprite(spr_crosshair,0,_cursorX,_cursorY)