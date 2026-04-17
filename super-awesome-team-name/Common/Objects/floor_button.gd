extends Area2D
var playerOnButton : bool

func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group("player"): 
		playerOnButton = true

func _on_body_exited(body: Node2D) -> void:
	if body.is_in_group("player"): 
		playerOnButton = false
