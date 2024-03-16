extends CanvasLayer

@onready var label = $InspectionTool/Label
var show_text = false
var value = 100

var progress_duration

func _ready():
	$InspectionTool/glitch.hide()
	label.text = ""
	
func inspect(text,duration):
	show_text = true
	$InspectionTool/glitch.show()
	label.text = text
	value = 100
	progress_duration = duration
	$InspectionTool/AnimationPlayer.play("inspect_tool_on")
	
func _process(delta):
	if show_text == true:
		value -= (100/progress_duration) * delta
		$InspectionTool/TextureProgressBar.value = value
		
		if $InspectionTool/TextureProgressBar.value <= 0:
			label.text = ""
			$InspectionTool/glitch.hide()
			$InspectionTool/AnimationPlayer.play("inspect_tool_off")
			show_text = false
