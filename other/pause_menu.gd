extends Node2D

@onready var pauseMenu = $CanvasLayer
var paused = false


func _process(delta):
	if Input.is_action_just_pressed("escape"):
		paused = !paused
	if paused == true:
		get_tree().paused = true
		pauseMenu.show()
	else:
		get_tree().paused = false
		pauseMenu.hide()
