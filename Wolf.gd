extends Area2D


var speed
var direction
var mode

func _ready():
	speed = 200
	$AnimatedSprite.animation = "right"
	mode = "pack"
	



func _process(delta):
	var velocity = Vector2()
	
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
		
	if mode == "attack":
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
			
		if velocity.length() > 0:
			velocity = velocity.normalized() * speed
		position += velocity * delta
		


func _on_Wolf_body_shape_entered(body_id, body, body_shape, local_shape):
	
	if body.name == "Player":
		speed = 400
		mode = "attack"
		if body.position.x > position.x + 128:
			if body.position.y > position.y + 128:
				direction = 2
			elif body.position.y < position.y + 128:
				direction = 8
			else:
				direction = 1
		elif body.position.x < position.x + 128:
			if body.position.y > position.y + 128:
				direction = 4
			elif body.position.y < position.y + 128:
				direction = 6
			else:
				direction = 5
		elif body.position.y > position.y + 128:
			direction = 3
		elif body.position.y < position.y + 128:
			direction = 7


func _on_Wolf_body_entered(body):
	if body.name == "Player":
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


func _on_Wolf_body_shape_exited(body_id, body, body_shape, local_shape):
	if body.name != null:
		if body.name == "Player":
			mode = "pack"
			speed = 200
