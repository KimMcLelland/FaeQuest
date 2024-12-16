extends Area2D


var speed

func _ready():
	speed = 200
	$AnimatedSprite.animation = "right"
	



func _process(delta):
	if $"..".direction == 1:
		$AnimatedSprite.animation = "right"
	if $"..".direction == 2:
		$AnimatedSprite.animation = "right"
	if $"..".direction == 4:
		$AnimatedSprite.animation = "left"
	if $"..".direction == 5:
		$AnimatedSprite.animation = "left"
	if $"..".direction == 6:
		$AnimatedSprite.animation = "left"
	if $"..".direction == 8:
		$AnimatedSprite.animation = "right"
		
