extends ColorRect

var rng = RandomNumberGenerator.new()
var Orc = preload("res://Orc.tscn")
var Wolf = preload("res://Wolf.tscn")
var wolf_pack_direction



func _ready():
	rng.randomize()
	orc_spawn()
	orc_spawn()
	orc_spawn()
	orc_spawn()
	orc_spawn()
	var head_spawn = Wolf.instance()
	add_child(head_spawn)
	head_spawn.position.x = rng.randi_range (256, 1792)
	head_spawn.position.y = rng.randi_range (256, 1544)	
	wolf_pack_direction = rng.randi_range (1, 8)
	head_spawn.head_wolf = 1
	wolf_spawn(head_spawn.position.x, head_spawn.position.y)
	wolf_spawn(head_spawn.position.x, head_spawn.position.y)
	wolf_spawn(head_spawn.position.x, head_spawn.position.y)
	wolf_spawn(head_spawn.position.x, head_spawn.position.y)
	

#func _process(delta):
#	pass


func orc_spawn():
	var spawn = Orc.instance()
	add_child(spawn)
	spawn.position.x = rng.randi_range (32, 2016)
	spawn.position.y = rng.randi_range (32, 1768)
	
func wolf_spawn(head_x, head_y):
	var spawn = Wolf.instance()
	add_child(spawn)
	spawn.position.x = head_x + (rng.randi_range (-2, 2) * 64)
	spawn.position.y = head_y + (rng.randi_range (-2, 2) * 64)
	spawn.head_wolf = 0
	

