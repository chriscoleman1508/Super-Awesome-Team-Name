extends Node2D

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if $FloorButton.playerOnButton and $FloorButton2.playerOnButton:
		get_tree().change_scene_to_file("res://Scenes/title.tscn")
