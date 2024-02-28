extends Path2D
@onready var BUSfollow = $BUSfollow
@onready var BUS = $BUSfollow/base_upgrade_station
@onready var timer = $animation_length
@export var deploySpeed = 750
# Called when the node enters the scene tree for the first time.
func _ready():
	if Global.BUS_deployed == true:
		BUSfollow.progress_ratio = 1

func _process(delta):
	deploySpeed = deploySpeed * delta
	if Global.play_BUS_deploy_animation == true and Global.BUS_deployed == false:
		BUS.show()
		BUSfollow.progress += deploySpeed 
		if BUSfollow.progress_ratio == 1:
			Global.BUS_deployed = true
	if Global.play_BUS_deploy_animation == false:
		BUS.hide()
	else:
		BUS.show()
	
	deploySpeed = 750
