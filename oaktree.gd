extends StaticBody2D

var rng = RandomNumberGenerator.new()
var Apple = preload("res://apple.tscn")
var fruit

func _ready():
	rng.randomize()
	fruit = rng.randi_range (1, 3)
	if fruit == 3:
		apple_spawn()
		var further_fruit = rng.randi_range (1, 3)
		if further_fruit == 3:
			apple_spawn()


#func _process(delta):
#	pass

func apple_spawn():
	var spawn = Apple.instance()
	var spawn_position = rng.randi_range (1, 2)
	add_child(spawn)
	if spawn_position == 1:
		spawn.position.x = 48
	if spawn_position == 2:
		spawn.position.x = -48
	spawn.position.y = -32
