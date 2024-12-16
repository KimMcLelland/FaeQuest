extends ColorRect

var rng = RandomNumberGenerator.new()
var Orc = preload("res://Orc.tscn")
var Pack = preload("res://Wolf_pack.tscn")
var wolf_pack_direction



func _ready():
	rng.randomize()
	orc_spawn()
	orc_spawn()
	orc_spawn()
	orc_spawn()
	orc_spawn()
	wolf_spawn()
	

#func _process(delta):
#	pass


func orc_spawn():
	var spawn = Orc.instance()
	add_child(spawn)
	spawn.position.x = rng.randi_range (32, 2016)
	spawn.position.y = rng.randi_range (32, 1768)
	
func wolf_spawn():
	var spawn = Pack.instance()
	add_child(spawn)
	spawn.position.x = rng.randi_range (256, 1792)
	spawn.position.y = rng.randi_range (256, 1544)
	
	

