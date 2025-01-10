extends ColorRect

var rng = RandomNumberGenerator.new()
var Carrot = preload("res://carrot.tscn")
var Apple = preload("res://apple.tscn")
var Bird = preload("res://blackbird.tscn")
var Bee = preload("res://Bee.tscn")



func _ready():
	rng.randomize()
	carrot_spawn()
	carrot_spawn()
	carrot_spawn()
	carrot_spawn()
	carrot_spawn()
	apple_spawn()
	apple_spawn()
	apple_spawn()
	apple_spawn()
	apple_spawn()
	bird_spawn()
	bird_spawn()
	bird_spawn()
	bird_spawn()
	bird_spawn()
	bee_spawn()
	bee_spawn()
	bee_spawn()
	bee_spawn()
	bee_spawn()



#func _process(delta):
#	pass


func carrot_spawn():
	var spawn = Carrot.instance()
	add_child(spawn)
	spawn.position.x = rng.randi_range (32, 2016)
	spawn.position.y = rng.randi_range (32, 1768)

func apple_spawn():
	var spawn = Apple.instance()
	add_child(spawn)
	spawn.position.x = rng.randi_range (32, 2016)
	spawn.position.y = rng.randi_range (32, 1768)
	
func bird_spawn():
	var spawn = Bird.instance()
	add_child(spawn)
	spawn.position.x = rng.randi_range (32, 2016)
	spawn.position.y = rng.randi_range (32, 1768)

func bee_spawn():
	var spawn = Bee.instance()
	add_child(spawn)
	spawn.position.x = rng.randi_range (32, 2016)
	spawn.position.y = rng.randi_range (32, 1768)
	
