extends Node2D


func _ready():
	if Global.lastBuildingEntered == "hab":
		$astronaut.position = Vector2(-544,-480)
	elif Global.lastBuildingEntered == "lander":
		$astronaut.position = Vector2(0,-208)
	else:
		$astronaut.position = Vector2(0,-208)

