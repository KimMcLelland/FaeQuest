extends ColorRect

var rng = RandomNumberGenerator.new()
var Carrot = preload("res://carrot.tscn")
var Apple = preload("res://apple.tscn")



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
	
