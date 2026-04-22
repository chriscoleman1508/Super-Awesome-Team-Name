extends Camera2D

@export var player1: Node2D
@export var player2: Node2D

@export var margin: float = 300.0 # Extra space around players
@export var min_zoom: float = 0.5
@export var max_zoom: float = 2.0



func _process(_delta: float) -> void:
	var p1 = player1.global_position
	var p2 = player2.global_position

	# 1. Update Position
	var mid = (p1 + p2) / 2
	global_position = mid

	# 2. Optional: Dynamic Zoom
	_update_zoom(p1, p2)

func _update_zoom(p1: Vector2, p2: Vector2) -> void:
	# Calculate the distance between players
	var dist = p1.distance_to(p2) + (margin * 2)
	
	# Get the screen size to determine how much we need to zoom
	var screen_size = get_viewport_rect().size
	
	# Calculate the zoom factor (keeping the players on screen)
	var zoom_factor = screen_size.x / dist
	
	# Clamp the zoom so it doesn't go to infinity or get too tiny
	var final_zoom = clamp(zoom_factor, min_zoom, max_zoom)
	zoom = Vector2(final_zoom, final_zoom)
