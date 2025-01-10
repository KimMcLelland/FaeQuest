extends Area2D





func _ready():
	pass 



#func _process(delta):
#	pass


func _on_apple_body_shape_entered(body_id, body, body_shape, local_shape):
	if body.name == "Player":
		queue_free()
