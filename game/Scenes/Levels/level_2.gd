extends Node2D

@onready var player: CharacterBody2D = $Player
@onready var player_2: CharacterBody2D = $Player2

func _ready() -> void:
	player.spawn_point = $Marker2D.global_position
	player_2.spawn_point = $Marker2D.global_position
	$FloorButton.levelComplete.connect(nextScene)

func nextScene():
	LoadingScreen.load_scene("res://Scenes/Levels/level_2.tscn")	

func _on_area_2d_body_entered(body: Node2D) -> void:
	if body.is_in_group("player"):
		body.global_position = body.spawn_point
