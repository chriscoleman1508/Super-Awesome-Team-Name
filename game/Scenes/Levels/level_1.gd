extends Node2D

@onready var player: CharacterBody2D = $Player
@onready var player_2: CharacterBody2D = $Player2

func _ready() -> void:
	player.spawn_point = $Marker2D.global_position
	player_2.spawn_point = $Marker2D.global_position

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if $FloorButton.playersOnButton == 2:
		LoadingScreen.load_scene("res://Scenes/title.tscn")
