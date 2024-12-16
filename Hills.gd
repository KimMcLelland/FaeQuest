extends ColorRect

var rng = RandomNumberGenerator.new()
var Orc = preload("res://Orc.tscn")
var Wolf = preload("res://Wolf.tscn")



func _ready():
	rng.randomize()
	orc_spawn()
	orc_spawn()
	orc_spawn()
	orc_spawn()
	orc_spawn()



#func _process(delta):
#	pass


func orc_spawn():
	var spawn = Orc.instance()
	add_child(spawn)
	spawn.position.x = rng.randi_range (32, 2016)
	spawn.position.y = rng.randi_range (32, 1768)

