extends Area2D

var rng = RandomNumberGenerator.new()



func _ready():
	rng.randomize()
	var variety = rng.randi_range(1, 3)
	if variety == 1:
		$AnimatedSprite.animation = "white"
	if variety == 2:
		$AnimatedSprite.animation = "blue"
	if variety == 3:
		$AnimatedSprite.animation = "yellow"


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
