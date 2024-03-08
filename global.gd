extends Node

#events
var hatch_opened
var play_BUS_deploy_animation = false
var BUS_deployed = false
var BUS_crafted = false

var hab_built = false

#mats
var rockCount = 0
var hardenedRockCount = 0

#stats
var maxAir = 30
var airLeft = maxAir

var BUS_crafting_menu_open


func _ready():
	cheats()
	
func _process(delta):
	pass
	

func cheats():
	BUS_crafted = true

