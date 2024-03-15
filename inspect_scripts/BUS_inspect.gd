extends Area2D

var mouseHover = false

func _process(delta):
	if mouseHover == true and Input.is_action_just_pressed("right_click"):
		InspectTool.inspect("This is the Base Upgrade Station - B.U.S. Use it to build structures. Open it's menu by clicking on it while standing nearby",8)
	

func _on_mouse_entered():
	mouseHover = true
func _on_mouse_exited():
	mouseHover = false
