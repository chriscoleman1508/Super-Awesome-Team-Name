extends Area2D

var playersOnButton = 0

func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group("player"): 
		playersOnButton += 1

func _on_body_exited(body: Node2D) -> void:
	if body.is_in_group("player"): 
		playersOnButton -= 1
