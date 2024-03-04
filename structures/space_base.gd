extends Node2D

@onready var anim_player = $AnimationPlayer

func _process(delta):
	if Global.hab_built == true:
		anim_player.play("HAB_built")
	elif Global.hab_built != true:
		anim_player.play("RESET")
