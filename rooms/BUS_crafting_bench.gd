extends Node2D

var inRange = false


func _on_interact_body_entered(body):
	inRange = true
func _on_interact_body_exited(body):
	inRange = false
	
func _process(delta):
	if inRange == true and Global.BUS_crafted == false:
		$UiPlaceholder.show()
		if Input.is_action_just_pressed("space") and Global.rockCount > 24:
			Global.BUS_crafted = true
			Global.rockCount -= 25
			$UiPlaceholder.hide()
	elif inRange == false:
		$UiPlaceholder.hide()
	

