extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	Global.lastBuildingEntered = "hab"


func _on_exit_door_body_entered(body):
	SceneTransition.change_scene("res://locations/location_one.tscn")
