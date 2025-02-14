extends KinematicBody2D

var speed = 300


func _ready():
	$AnimatedSprite.animation = "still"
	#if PlayerStats.orientation == "North":
	#	position.x = 1024
	#	position.y = 1704
	#if PlayerStats.orientation == "East":
	#	position.x = 96
	#	position.y = 900
	#if PlayerStats.orientation == "South":
	#	position.x = 1024
	#	position.y = 96
	#if PlayerStats.orientation == "West":
	#	position.x = 1952
	#	position.y = 900

func next_screen(NSEW):
	PlayerStats.orientation = NSEW
	if NSEW == "East":
		PlayerStats.location += 1
	if NSEW == "West":
		PlayerStats.location -= 1
	if NSEW == "South":
		PlayerStats.location += 4
	if NSEW == "North":
		PlayerStats.location -= 4
		
	if PlayerStats.location == 1:
		get_tree().change_scene("res://Ocean.tscn")
	if PlayerStats.location == 2:
		get_tree().change_scene("res://Tundra.tscn")
	if PlayerStats.location == 3:
		get_tree().change_scene("res://Icy_Mountains.tscn")
	if PlayerStats.location == 4:
		get_tree().change_scene("res://Conifer_Forest.tscn")
	if PlayerStats.location == 5:
		get_tree().change_scene("res://Plains.tscn")
	if PlayerStats.location == 6:
		get_tree().change_scene("res://Forest.tscn")
	if PlayerStats.location == 7:
		get_tree().change_scene("res://Hills.tscn")
	if PlayerStats.location == 8:
		get_tree().change_scene("res://Swamp.tscn")
	if PlayerStats.location == 9:
		get_tree().change_scene("res://Desert.tscn")
	if PlayerStats.location == 10:
		get_tree().change_scene("res://Savanna.tscn")
	if PlayerStats.location == 11:
		get_tree().change_scene("res://Tropical_Mountains.tscn")
	if PlayerStats.location == 12:
		get_tree().change_scene("res://Jungle.tscn")

func _process(delta):
	var velocity = Vector2()
	if Input.is_action_pressed("ui_right"):
		$AnimatedSprite.animation = "right"
		velocity.x += 1
	if Input.is_action_pressed("ui_left"):
		$AnimatedSprite.animation = "left"
		velocity.x -= 1
	if Input.is_action_pressed("ui_down"):
		velocity.y += 1
	if Input.is_action_pressed("ui_up"):
		velocity.y -= 1
	
	if velocity.length() > 0:
		velocity = velocity.normalized() * speed
	else:
		$AnimatedSprite.animation = "still"
	velocity = move_and_slide(velocity)
	
	position.x = clamp(position.x, 32, 3040)
	position.y = clamp(position.y, 32, 568)
	
	#if position.x > 1984:
	#	if PlayerStats.location < 12 and PlayerStats.location != 4 and PlayerStats.location != 8:
	#		next_screen("East")
	
	#if position.x < 64:
	#	if PlayerStats.location < 13 and PlayerStats.location != 1 and PlayerStats.location != 5:
	#		next_screen("West")
	#		
	#if position.y > 1736:
	#	if PlayerStats.location < 9:
	#		next_screen("South")
	#		
	#if position.y < 64:
	#	if PlayerStats.location > 4 and PlayerStats.location < 13:
	#		next_screen("North")
		

