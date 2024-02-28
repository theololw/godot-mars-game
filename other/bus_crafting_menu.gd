extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Global.BUS_crafting_menu_open == true:
		$CanvasLayer.show()
		get_tree().paused = true
	else:
		$CanvasLayer.hide()



func _on_button_pressed():
	Global.BUS_crafting_menu_open = false
	get_tree().paused = false
