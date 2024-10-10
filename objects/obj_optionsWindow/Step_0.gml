if stopAnim = true{
instance_create_depth(x,y+100,depth-99999,obj_backButton,{father: id, image_blend: make_color_rgb(244,183,255)})
instance_create_depth(x+15,y-35,depth-999,obj_onOff,{variable: global.autoshotConfig, variable_name: "autoshotConfig"})
instance_create_depth(x+15,y+25,depth-999,obj_onOff,{variable: global.showStats, variable_name: "showStats"})
instance_create_depth(x+100,y-95,depth-999,obj_slider)
stopAnim = false
}

if image_index >= 5{
	image_index = 6
}