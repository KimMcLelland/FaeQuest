extends ColorRect

var rng = RandomNumberGenerator.new()
var Carrot = preload("res://carrot.tscn")
var Bird = preload("res://blackbird.tscn")
var Bee = preload("res://Bee.tscn")
var Fox = preload("res://fox.tscn")
var Squirrel = preload("res://squirrel.tscn")



func _ready():
	rng.randomize()
	#carrot_spawn()
	#carrot_spawn()
	#carrot_spawn()
	#carrot_spawn()
	#carrot_spawn()
	#bird_spawn()
	#bird_spawn()
	#bird_spawn()
	#bird_spawn()
	#bird_spawn()
	#bee_spawn()
	#bee_spawn()
	#bee_spawn()
	#bee_spawn()
	#bee_spawn()
	#fox_spawn()
	#fox_spawn()
	#fox_spawn()
	#squirrel_spawn()
	#squirrel_spawn()
	#squirrel_spawn()
	



#func _process(delta):
#	pass


func carrot_spawn():
	var spawn = Carrot.instance()
	add_child(spawn)
	spawn.position.x = rng.randi_range (32, 3040)
	spawn.position.y = 536
	
func bird_spawn():
	var spawn = Bird.instance()
	add_child(spawn)
	spawn.position.x = rng.randi_range (32, 3040)
	spawn.position.y = 536

func bee_spawn():
	var spawn = Bee.instance()
	add_child(spawn)
	spawn.position.x = rng.randi_range (32, 3040)
	spawn.position.y = rng.randi_range (32, 568)
	
func fox_spawn():
	var spawn = Fox.instance()
	add_child(spawn)
	spawn.position.x = rng.randi_range (32, 3040)
	spawn.position.y = 536

func squirrel_spawn():
	var spawn = Squirrel.instance()
	add_child(spawn)
	spawn.position.x = rng.randi_range (32, 3040)
	spawn.position.y = 536
	
