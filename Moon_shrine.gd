extends Area2D

var Unicorn = preload("res://Unicorn.tscn")
var active


func _ready():
	active = 0


func _process(delta):
	if active == 1:
		if Input.is_action_pressed("ui_accept"):
			Spawn()

func Spawn():
	var spawn = Unicorn.instance()
	add_child(spawn)
	spawn.position.x = 100
	spawn.position.y = -400
	active = 2



func _on_Moon_shrine_body_shape_entered(body_id, body, body_shape, local_shape):
	if body.name == "Player" and active == 0:
		active = 1
	


func _on_Moon_shrine_body_shape_exited(body_id, body, body_shape, local_shape):
	if body.name != null and body.name == "Player":
		if active == 1:
			active = 0
