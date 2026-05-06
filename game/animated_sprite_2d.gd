extends AnimatedSprite2D

@export var projectile : PackedScene 

func _on_animation_looped() -> void:
	print("david montgomery")
	var proj = projectile.instantiate()
	proj.global_position = $Marker2D.global_position
	get_tree().root.add_child(proj)
