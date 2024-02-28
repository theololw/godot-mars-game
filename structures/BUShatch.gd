extends Node2D

var inRange
var hatch_opened = Global.hatch_opened
@onready var open_ui = $OpenUi

func _on_bu_shatch_open_area_body_entered(body):
	inRange = true
func _on_bu_shatch_open_area_body_exited(body):
	inRange = false

func _process(_delta):
	if Global.BUS_crafted == true and inRange == true and hatch_opened != true:
		open_ui.show()
		if Input.is_action_just_pressed("space"):
			hatch_opened = true
			Global.play_BUS_deploy_animation = true
			
			# remove details
			open_ui.queue_free()
			$Polygon2D.queue_free()
			$GPUParticles2D.queue_free()

	if inRange == false and hatch_opened != true:
		open_ui.hide()
