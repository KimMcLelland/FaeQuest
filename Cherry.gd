extends Area2D


func _ready():
	pass # Replace with function body.

#func _process(delta):
#	pass


func _on_Cherry_body_shape_entered(body_id, body, body_shape, local_shape):
	if body.name == "Player":
		queue_free()
