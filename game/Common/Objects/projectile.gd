extends Area2D

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	position.x -= delta * 800

func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group("player"):
		body.global_position = body.spawn_point
