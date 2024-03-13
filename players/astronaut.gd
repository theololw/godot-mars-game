extends CharacterBody2D
class_name Player
var speed = 250  # speed in pixels/sec

@onready var rock_count_label = $CanvasLayer/Control/RockCount
func movement():
	var direction = Input.get_vector("left", "right", "up", "down")
	velocity = direction * speed
	if Input.is_action_pressed("right"):
		$Astronaut.flip_h = true
	if Input.is_action_pressed("left"):
		$Astronaut.flip_h = false
	if Input.get_vector("left", "right", "up", "down"):
		$AnimationPlayer.play("walking")
	else:
		$AnimationPlayer.play("RESET")
	move_and_slide()
func items():
	rock_count_label.text = str(Global.rockCount)


func _physics_process(delta):
	movement()
	cheats()
	items()



func cheats():
	if Input.is_action_pressed("+"):
		#$Camera2D.zoom.x += 0.01
		#$Camera2D.zoom.y += 0.01
		Global.rockCount += 500
	if Input.is_action_pressed("-"):
		#$Camera2D.zoom.x -= 0.01
		#$Camera2D.zoom.y -= 0.01
		Global.rockCount -= 500
