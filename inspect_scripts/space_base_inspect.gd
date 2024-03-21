extends Area2D

var mouseHover = false

func _process(delta):
	if mouseHover == true and Input.is_action_just_pressed("right_click"):
		InspectTool.inspect("An expandable marsian habitat, designed to be lived in for months",8)


func _on_mouse_entered():
	mouseHover = true
func _on_mouse_exited():
	mouseHover = false
