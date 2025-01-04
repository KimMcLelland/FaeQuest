extends ColorRect

var rng = RandomNumberGenerator.new()
var Cow = preload("res://cow.tscn")
var Cabbage = preload("res://Cabbage.tscn")
var Horse = preload("res://horse.tscn")
var Butterfly = preload("res://Butterfly.tscn")
var Sparrow = preload("res://sparrow.tscn")

func _ready():
	rng.randomize()
	cabbage_spawn()
	cow_spawn()
	horse_spawn()
	butterfly_spawn()
	bird_spawn()


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func cabbage_spawn():
	var spawn = Cabbage.instance()
	add_child(spawn)
	spawn.position.x = rng.randi_range (32, 2016)
	spawn.position.y = rng.randi_range (32, 1768)

func cow_spawn():
	var spawn = Cow.instance()
	add_child(spawn)
	spawn.position.x = rng.randi_range (32, 2016)
	spawn.position.y = rng.randi_range (32, 1768)
	
func horse_spawn():
	var spawn = Horse.instance()
	add_child(spawn)
	spawn.position.x = rng.randi_range (32, 2016)
	spawn.position.y = rng.randi_range (32, 1768)
	
func butterfly_spawn():
	var spawn = Butterfly.instance()
	add_child(spawn)
	spawn.position.x = rng.randi_range (32, 2016)
	spawn.position.y = rng.randi_range (32, 1768)
	
func bird_spawn():
	var spawn = Sparrow.instance()
	add_child(spawn)
	spawn.position.x = rng.randi_range (32, 2016)
	spawn.position.y = rng.randi_range (32, 1768)
