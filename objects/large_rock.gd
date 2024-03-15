extends Node2D
var inRange
var mouseHover
var health = 3
func _on_interaction_radius_body_entered(body):
	if body is Player:
		inRange = true
func _on_interaction_radius_body_exited(body):
	if body is Player:
		inRange = false
func _on_mouse_radius_mouse_entered():
	mouseHover = true
func _on_mouse_radius_mouse_exited():
	mouseHover = false

func _process(_delta):
	if inRange == true and mouseHover == true and Input.is_action_just_pressed("left_click"):
		take_damage()
	if mouseHover == true and Input.is_action_just_pressed("right_click"):
		InspectTool.inspect("this is a rock. Left click while standing nearby to mine it for materials",3)

func take_damage():
	health -= 1
	
	if health <= 0:
		break_stone()
	
	if health == 3:
		$Rock.frame = 0
	elif health == 2:
		$Rock.frame = 1
	elif health == 1:
		$Rock.frame = 2
func break_stone():
	Global.rockCount += 1
	queue_free()
func remove_stone():
	queue_free()


func _on_remover_checker_area_entered(area):
	remove_stone()
