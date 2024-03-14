extends CanvasLayer

@onready var label = $InspectionTool/Label

func _ready():
	$InspectionTool/glitch.hide()
	label.text = ""
	
func inspect(text: String) -> void:
	$InspectionTool/glitch.show()
	label.text = text
	await get_tree().create_timer(2.0).timeout
	label.text = ""
	$InspectionTool/glitch.hide()

