extends Area2D

var rng = RandomNumberGenerator.new()
var head_wolf
var direction
var speed

func _ready():
	speed = 200
	direction = $"..".wolf_pack_direction
	$AnimatedSprite.animation = "right"
	rng.randomize()



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
		if head_wolf == 1:
			$"..".wolf_pack_direction = rng.randi_range (4, 6)
		direction = $"..".wolf_pack_direction
	if position.x < 32:
		if head_wolf == 1:
			var result = rng.randi_range (1, 3)
			if result == 1 or result == 2:
				$"..".wolf_pack_direction = result
			else:
				$"..".wolf_pack_direction = 8
		direction = $"..".wolf_pack_direction
	if position.y > 1768:
		if head_wolf == 1:
			$"..".wolf_pack_direction = rng.randi_range (6, 8)
		direction = $"..".wolf_pack_direction
	if position.y < 32:
		if head_wolf == 1:
			$"..".wolf_pack_direction = rng.randi_range (2, 4)
		direction = $"..".wolf_pack_direction
		
	if velocity.length() > 0:
		velocity = velocity.normalized() * speed
	position += velocity * delta
