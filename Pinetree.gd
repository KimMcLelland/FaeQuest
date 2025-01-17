extends StaticBody2D

var rng = RandomNumberGenerator.new()
var Cherry = preload("res://Cherry.tscn")
var woodpecker = preload("res://Woodpecker.tscn")
var fruit
var bird

func _ready():
	rng.randomize()
	fruit = rng.randi_range (1, 3)
	if fruit == 3:
		cherry_spawn()
		var further_fruit = rng.randi_range (1, 3)
		if further_fruit == 3:
			cherry_spawn()
	bird = rng.randi_range (1, 3)
	if bird == 3:
		woodpecker_spawn()


#func _process(delta):
#	pass

func cherry_spawn():
	var spawn = Cherry.instance()
	var spawn_position = rng.randi_range (1, 2)
	add_child(spawn)
	if spawn_position == 1:
		spawn.position.x = 48
	if spawn_position == 2:
		spawn.position.x = -48
	spawn.position.y = 0
	
func woodpecker_spawn():
	var spawn = woodpecker.instance()
	var spawn_position = rng.randi_range (1, 2)
	add_child(spawn)
	if spawn_position == 1:
		spawn.position.x = 24
		spawn.animation = "left"
	if spawn_position == 2:
		spawn.position.x = -24
		spawn.animation = "right"
	spawn.position.y = 32
