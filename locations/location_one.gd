extends Node2D

var spawnPosition

func _ready():
	if Global.lastBuildingEntered == "hab":
		spawnPosition = Vector2(-544,-480)
	elif Global.lastBuildingEntered == "lander":
		spawnPosition = Vector2(0,-208)
	else:
		spawnPosition = Vector2(0,-208)
	$astronaut.position = spawnPosition
