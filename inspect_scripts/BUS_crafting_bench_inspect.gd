extends Area2D

var mouseHover = false

func _process(delta):
	if mouseHover == true and Input.is_action_just_pressed("right_click"):
		InspectTool.inspect("BUS workbench. Supply it with materials to open the hatch on the lander exterior",8)

func _on_mouse_entered():
	mouseHover = true
func _on_mouse_exited():
	mouseHover = false
