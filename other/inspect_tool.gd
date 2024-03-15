extends CanvasLayer

@onready var label = $InspectionTool/Label

func _ready():
	$InspectionTool/glitch.hide()
	label.text = ""
	
func inspect(text,duration):
	$InspectionTool/glitch.show()
	label.text = text
	await get_tree().create_timer(duration).timeout
	label.text = ""
	$InspectionTool/glitch.hide()

