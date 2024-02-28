extends Node2D

var inRange
var mouseHover = false

func _on_interact_body_entered(body):
	inRange = true
func _on_interact_body_exited(body):
	inRange = false
func _on_mouse_radius_mouse_entered():
	mouseHover = true
func _on_mouse_radius_mouse_exited():
	mouseHover = false


func _process(delta):
	if inRange == true and mouseHover == true and Input.is_action_just_pressed("left_click"):
		Global.BUS_crafting_menu_open = true
