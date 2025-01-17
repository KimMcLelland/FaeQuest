extends Area2D

var rng = RandomNumberGenerator.new()
var direction
var speed


func _ready():
	speed = 200
	
	rng.randomize()
	direction = rng.randi_range (1, 8)


func _process(delta):
	var velocity = Vector2()
	if direction == 1:
		velocity.x += 1
		$AnimatedSprite.animation = "right"
	if direction == 2:
		velocity.x += 1
		velocity.y += 1
		$AnimatedSprite.animation = "right"
	if direction == 3:
		velocity.y += 1
		
	if direction == 4:
		velocity.x -= 1
		velocity.y += 1
		$AnimatedSprite.animation = "left"
	if direction == 5:
		velocity.x -= 1
		$AnimatedSprite.animation = "left"
	if direction == 6:
		velocity.x -= 1
		velocity.y -= 1
		$AnimatedSprite.animation = "left"
	if direction == 7:
		velocity.y -= 1
		
	if direction == 8:
		velocity.x += 1
		velocity.y -= 1
		$AnimatedSprite.animation = "right"
		
	if position.x > 2016:
		direction = rng.randi_range (4, 6)
	if position.x < 32:
		var result = rng.randi_range (1, 3)
		if result == 1 or result == 2:
			direction = result
		else:
			direction = 8
	if position.y > 1768:
		direction = rng.randi_range (6, 8)
	if position.y < 32:
		direction = rng.randi_range (2, 4)
		
	if velocity.length() > 0:
		velocity = velocity.normalized() * speed
	position += velocity * delta


func _on_fox_body_entered(body):
	if direction == 1:
		direction = 5
	if direction == 2:
		direction = 6
	if direction == 3:
		direction = 7
	if direction == 4:
		direction = 8
	if direction == 5:
		direction = 1
	if direction == 6:
		direction = 2
	if direction == 7:
		direction = 3
	if direction == 8:
		direction = 4
