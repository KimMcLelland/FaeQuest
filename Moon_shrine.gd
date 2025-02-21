extends Area2D

var Unicorn = preload("res://Unicorn.tscn")


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass





func _on_Moon_shrine_body_shape_entered(body_id, body, body_shape, local_shape):
	if body.name == "Player":
		var spawn = Unicorn.instance()
		add_child(spawn)
		spawn.position.x = 100
		spawn.position.y = -400
