extends Node2D


func _on_continue_pressed():
	SceneTransition.change_scene("res://locations/location_one.tscn")

func _on_quit_pressed():
	get_tree().quit()
