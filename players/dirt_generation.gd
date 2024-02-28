extends Node2D

var dirt1 = preload("res://particles/dirt_01.tscn")
var dirt2 = preload("res://particles/dirt_02.tscn")
var dirt3 = preload("res://particles/dirt_03.tscn")

var chosen_dirt = dirt1

var dirt_number = 25
# Called when the node enters the scene tree for the first time.
func _ready():
	generate_rocks()
func generate_rocks():
	for i in dirt_number:
		generate_single_rock()
func generate_single_rock():
	var dirt_variation_rando = randi_range(1,3)
	if dirt_variation_rando == 1:
		chosen_dirt = dirt1
	elif dirt_variation_rando == 2:
		chosen_dirt = dirt2
	elif dirt_variation_rando == 3:
		chosen_dirt = dirt3
		
	var dirt_position = generate_random_position()

	var new_dirt = chosen_dirt.instantiate()
	new_dirt.position = dirt_position
	new_dirt.z_index = 0
	add_child(new_dirt)
func generate_random_position():
	var min_x = 0
	var max_x = 1920
	var min_y = 0
	var max_y = 1080
	
	var dirtYpos = randi_range(min_y,max_y)
	var dirtXpos = randi_range(min_x,max_x)
	return Vector2(dirtXpos, dirtYpos)
