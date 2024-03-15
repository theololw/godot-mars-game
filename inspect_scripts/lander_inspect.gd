extends Area2D

var mouseHover = false

func _process(delta):
	if mouseHover == true and Input.is_action_just_pressed("right_click"):
		InspectTool.inspect("this is the lander. Open the hatch on the left by building the B.U.S inside the lander",6)


func _on_mouse_entered():
	mouseHover = true
func _on_mouse_exited():
	mouseHover = false
