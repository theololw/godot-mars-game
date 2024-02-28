extends Node2D

var inRange = false
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	if inRange == true:
		$Enter.visible = true
	else:
		$Enter.visible = false
	if inRange == true and Input.is_action_just_pressed("space"):
		SceneTransition.change_scene("res://rooms/lander_inside.tscn")

func _on_area_2d_body_entered(body):
	if body is Player:
		inRange = true
func _on_area_2d_body_exited(body):
	if body is Player:
		inRange = false
