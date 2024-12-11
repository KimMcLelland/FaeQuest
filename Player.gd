extends KinematicBody2D

var speed = 300
var direction = "right"


func _ready():
	pass # Replace with function body.


func _process(delta):
	var velocity = Vector2()
	if Input.is_action_pressed("ui_right"):
		direction = "right"
		velocity.x += 1
	if Input.is_action_pressed("ui_left"):
		direction = "left"
		velocity.x -= 1
	if Input.is_action_pressed("ui_down"):
		velocity.y += 1
	if Input.is_action_pressed("ui_up"):
		velocity.y -= 1
	#if direction == "right":
		#$AnimatedSprite.animation = "right"
	#if direction == "left":
		#$AnimatedSprite.animation = "left"
	if velocity.length() > 0:
		velocity = velocity.normalized() * speed
	velocity = move_and_slide(velocity)

