extends Node2D

func _on_exit_door_body_entered(body):
	SceneTransition.change_scene("res://locations/location_one.tscn")
