extends Area2D

var rng = RandomNumberGenerator.new()
var direction
var speed
var mode



func _ready():
	rng.randomize()
	direction = rng.randi_range (1, 8)
	speed = 200
	mode = "wander"



func _process(delta):
	var velocity = Vector2()
	if mode == "chase":
		if $"../Player".position.x > position.x + 128:
			if $"../Player".position.y > position.y + 128:
				direction = 2
			elif $"../Player".position.y < position.y + 128:
				direction = 8
			else:
				direction = 1
		elif $"../Player".position.x < position.x + 128:
			if $"../Player".position.y > position.y + 128:
				direction = 4
			elif $"../Player".position.y < position.y + 128:
				direction = 6
			else:
				direction = 5
		elif $"../Player".position.y > position.y + 128:
			direction = 3
		elif $"../Player".position.y < position.y + 128:
			direction = 7
			
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



func _on_Wolf_pack_body_shape_entered(body_id, body, body_shape, local_shape):
	if body.name == "Player":
		mode = "chase"
		speed = 300
		


func _on_Wolf_pack_body_shape_exited(body_id, body, body_shape, local_shape):
	if body.name != null:
		if body.name == "Player":
			mode = "wander"
			speed = 200
			direction = rng.randi_range (1, 8)
			
