extends Area2D

var rng = RandomNumberGenerator.new()
var direction
var speed


func _ready():
	speed = 200
	
	rng.randomize()
	direction = rng.randi_range (1, 2)


func _process(delta):
	var velocity = Vector2()
	if direction == 1:
		velocity.x += 1
		$AnimatedSprite.animation = "right"
	if direction == 2:
		velocity.x -= 1
		$AnimatedSprite.animation = "left"
		
	if position.x > 3040:
		direction = 2
	if position.x < 32:
		direction = 1
	
		
	if velocity.length() > 0:
		velocity = velocity.normalized() * speed
	position += velocity * delta


func _on_squirrel_body_entered(body):
	if body.name == "Player":
		if direction == 1:
			direction = 2
		if direction == 2:
			direction = 1
