extends Node2D
var inRange = false
@onready var anim_player = $AnimationPlayer

func _process(delta):
	if Global.hab_built == true:
		anim_player.play("HAB_built")
	elif Global.hab_built != true:
		anim_player.play("RESET")
	
	
	if inRange == true and Global.hab_built == true:
		$Enter.visible = true
		if Input.is_action_just_pressed("space"):
			SceneTransition.change_scene("res://rooms/space_base_inside.tscn")
	else:
		$Enter.visible = false



func _on_enter_body_entered(body):
	if body is Player:
		inRange = true
func _on_enter_body_exited(body):
	if body is Player:
		inRange = false
