extends Node2D

var selection = ""

func _ready():
	$CanvasLayer/Habitat_selection.hide()
	$CanvasLayer/placeholder1_selection.hide()
	
func _process(delta):
	if Global.BUS_crafting_menu_open == true:
		$CanvasLayer.show()
		get_tree().paused = true
	else:
		$CanvasLayer.hide()
	
	
	if selection == "HAB":
		$CanvasLayer/Habitat_selection.show()
	else:
		$CanvasLayer/Habitat_selection.hide()
	
	if selection == "selection1":
		$CanvasLayer/placeholder1_selection.show()
	else:
		$CanvasLayer/placeholder1_selection.hide()


func _on_exit_pressed():
	Global.BUS_crafting_menu_open = false
	get_tree().paused = false


func _on_hab_button_2_pressed():
	selection = "HAB"
func _on_placeholder_1_button_pressed():
	selection = "selection1"
func _on_placeholder_2_button_pressed():
	selection = "selection2"
func _on_placeholder_3_button_pressed():
	selection = "selection3"
func _on_placeholder_4_button_pressed():
	selection = "selection4"
func _on_placeholder_5_button_pressed():
	selection = "selection5"
func _on_placeholder_6_button_pressed():
	selection = "selection6"
func _on_placeholder_7_button_pressed():
	selection = "selection7"
func _on_placeholder_8_button_pressed():
	selection = "selection8"

func _on_build_hab_pressed():
	Global.hab_built = true
