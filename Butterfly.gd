extends Area2D

var rng = RandomNumberGenerator.new()
var direction
var speed


func _ready():
	rng.randomize()
	var variety = rng.randi_range(1, 3)
	if variety == 1:
		$AnimatedSprite.animation = "white"
	if variety == 2:
		$AnimatedSprite.animation = "blue"
	if variety == 3:
		$AnimatedSprite.animation = "yellow"
	direction = rng.randi_range(1, 4)
	speed = 100


func _process(delta):
	var velocity = Vector2()
	if direction == 1:
		velocity.x += 1
	if direction == 2:
		velocity.y += 1
	if direction == 3:
		velocity.x -= 1
	if direction == 4:
		velocity.y -= 1
		
	if position.x > 2016:
		direction = 3
	if position.x < 32:
		direction = 1
	if position.y > 1768:
		direction = 4
	if position.y < 32:
		direction = 2
		
	if velocity.length() > 0:
		velocity = velocity.normalized() * speed
	position += velocity * delta


func _on_Timer_timeout():
	direction = rng.randi_range(1, 4)
