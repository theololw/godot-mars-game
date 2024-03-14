extends Node2D

@onready var timer = $Timer
@onready var air_bar = $airBar
# Called when the node enters the scene tree for the first time.
func _ready():
	$asphyxiation.play("RESET")
	if get_tree().current_scene.name == "locationOne" and Global.BUS_crafting_menu_open != true:
		timer.start()
		
	elif get_tree().current_scene.name == "lander_inside":
		Global.airLeft = Global.maxAir
	elif get_tree().current_scene.name == "space_base_inside":
			Global.airLeft = Global.maxAir

func _process(delta):
	air_bar.max_value = Global.maxAir
	air_bar.value = Global.airLeft
	if Global.airLeft < 1:
		$asphyxiation.play("asphyxiation")
		if get_tree().current_scene.name == "locationOne":
			await $asphyxiation.animation_finished
			get_tree().quit()

func _on_timer_timeout():
	Global.airLeft -= 1
