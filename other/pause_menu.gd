extends Node2D

@onready var pauseMenu = $CanvasLayer
var paused = false


func _process(delta):
	if Input.is_action_just_pressed("escape"):
		toggle_pause()
	if paused == true:
		get_tree().paused = true
		pauseMenu.show()
	else:
		get_tree().paused = false
		pauseMenu.hide()


func _on_continue_pressed():
	toggle_pause()

func _on_quit_pressed():
	get_tree().quit()



func toggle_pause():
	paused = !paused




