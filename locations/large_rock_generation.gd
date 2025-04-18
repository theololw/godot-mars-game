extends Node2D

var large_rock = preload("res://objects/large_rock.tscn")
var rock_number = 150 - Global.rockCount
# Called when the node enters the scene tree for the first time.
func _ready():
	generate_rocks()
func generate_rocks():
	for i in rock_number:
		generate_single_rock()
func generate_single_rock():
	var rock_position = generate_random_position()

	var new_rock = large_rock.instantiate()
	new_rock.position = rock_position
	new_rock.z_index = 0
	add_child(new_rock)
func generate_random_position():
	var min_x = -20
	var max_x = 20
	var min_y = -20
	var max_y = 20
	
	var rockYpos = randi_range(min_y,max_y)
	var rockXpos = randi_range(min_x,max_x)
	return Vector2(rockXpos * 128 + 64, rockYpos * 128 + 64)
