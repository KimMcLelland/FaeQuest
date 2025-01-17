extends ColorRect

var rng = RandomNumberGenerator.new()
var Cherry = preload("res://Cherry.tscn")


func _ready():
	rng.randomize()
	cherry_spawn()
	cherry_spawn()
	cherry_spawn()
	cherry_spawn()
	cherry_spawn()


#func _process(delta):
#	pass


func cherry_spawn():
	var spawn = Cherry.instance()
	add_child(spawn)
	spawn.position.x = rng.randi_range (32, 2016)
	spawn.position.y = rng.randi_range (32, 1768)
