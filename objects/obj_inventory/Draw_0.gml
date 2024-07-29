draw_set_font(fnt_mainFntSmall)
for (var i = 0; i < (ds_list_size(obj_playerGun.gunList)); i += 1){
global.currentGun = obj_playerGun.gunList[|i]
draw_set_color(c_black)
var _gunName = string(global.currentGun)
_gunName = string_upper(string_copy(_gunName,1,1)) + string_copy(_gunName,2,string_length(_gunName))
draw_text(1220,120 + 140 * (i+1), _gunName)
}
draw_set_font(fnt_mainFnt)