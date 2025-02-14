extends Area2D

var Dragon = preload("res://Green_Dragon.tscn")

func _ready():
	pass 


#func _process(delta):
#	pass


func _on_Cave_body_entered(body):
	if body.name == "Player":
		var dragon = Dragon.instance()
		add_child(dragon)
		dragon.position.x = 0
		dragon.position.y = 0
