extends KinematicBody2D

var rng = RandomNumberGenerator.new()
var direction
var speed


func _ready():
	rng.randomize()
	direction = rng.randi_range(1, 2)
	speed = 100



func _process(delta):
	var velocity = Vector2()
	if direction == 1:
		velocity.x += 1
		$AnimatedSprite.animation = "right"
	if direction == 2:
		velocity.x -= 1
		$AnimatedSprite.animation = "left"
		
	if position.x > 2016:
		direction = 2
	if position.x < 32:
		direction = 1

	if velocity.length() > 0:
		velocity = velocity.normalized() * speed
	velocity = move_and_slide(velocity)


func _on_Timer_timeout():
	direction = rng.randi_range(1, 2)
