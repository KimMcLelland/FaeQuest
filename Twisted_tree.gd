extends Area2D

var awakened


# Called when the node enters the scene tree for the first time.
func _ready():
	awakened = 0
	$AnimatedSprite.animation = "dormant"


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	awakened = $"..".awakened
	if awakened == 1:
		$AnimatedSprite.animation ="active"
