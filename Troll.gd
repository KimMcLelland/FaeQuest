extends Area2D

var rng = RandomNumberGenerator.new()
var direction
var speed




func _ready():
	speed = 200
	$AnimatedSprite.animation = "left"
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
		
	if position.x > 1984:
		direction = rng.randi_range (4, 6)
	if position.x < 64:
		var result = rng.randi_range (1, 3)
		if result == 1 or result == 2:
			direction = result
		else:
			direction = 8
	if position.y > 1736:
		direction = rng.randi_range (6, 8)
	if position.y < 64:
		direction = rng.randi_range (2, 4)
		
	if velocity.length() > 0:
		velocity = velocity.normalized() * speed
	position += velocity * delta


