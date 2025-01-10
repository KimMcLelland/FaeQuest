extends Area2D

var rng = RandomNumberGenerator.new()
var direction
var speed
var mode


func _ready():
	rng.randomize()
	direction = rng.randi_range(1, 2)
	speed = 300
	mode = "peck"
	if direction == 1:
		$AnimatedSprite.animation = "left"
	if direction == 2:
		$AnimatedSprite.animation = "right"
		


func _process(delta):
	var velocity = Vector2()
	if mode == "fly":
		if direction == 1:
			velocity.x -= 1
			velocity.y -= 1
		if direction == 2:
			velocity.x += 1
			velocity.y -= 1
		if velocity.length() > 0:
			velocity = velocity.normalized() * speed
		position += velocity * delta


func _on_blackbird_body_shape_entered(body_id, body, body_shape, local_shape):
	if body.name == "Player":
		mode = "fly"
		if body.position.x > position.x:
			direction = 1
			$AnimatedSprite.animation = "left"
		if body.position.x < position.x:
			direction = 2
			$AnimatedSprite.animation = "right"
			

func _on_VisibilityNotifier2D_screen_exited():
	queue_free()
