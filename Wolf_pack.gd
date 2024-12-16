extends Area2D

var rng = RandomNumberGenerator.new()
var direction
var speed



func _ready():
	rng.randomize()
	direction = rng.randi_range (1, 8)
	speed = 200


func _process(delta):
	var velocity = Vector2()
	if direction == 1:
		velocity.x += 1
	if direction == 2:
		velocity.x += 1
		velocity.y += 1
	if direction == 3:
		velocity.y += 1
	if direction == 4:
		velocity.x -= 1
		velocity.y += 1
	if direction == 5:
		velocity.x -= 1
	if direction == 6:
		velocity.x -= 1
		velocity.y -= 1
	if direction == 7:
		velocity.y -= 1
	if direction == 8:
		velocity.x += 1
		velocity.y -= 1
		
	if position.x > 1824:
		direction = rng.randi_range (4, 6)
	if position.x < 32:
		var result = rng.randi_range (1, 3)
		if result == 1 or result == 2:
			direction = result
		else:
			direction = 8
	if position.y > 1576:
		direction = rng.randi_range (6, 8)
	if position.y < 32:
		direction = rng.randi_range (2, 4)
		
	if velocity.length() > 0:
		velocity = velocity.normalized() * speed
	position += velocity * delta

