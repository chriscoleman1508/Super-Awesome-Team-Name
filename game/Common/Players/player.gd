extends CharacterBody2D

const SPEED = 300.0
const JUMP_VELOCITY = -500.0

@export var playerId : int

var spawn_point

func _ready() -> void:
	if playerId == 1:
		$Sprite2D.modulate = "ffff00"
	else:
		$Sprite2D.modulate = "ffffff"

func _physics_process(delta: float) -> void:
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta

	# Handle jump.
	if playerId == 1:
		if Input.is_action_just_pressed("up1") and is_on_floor():
			velocity.y = JUMP_VELOCITY
	else:
		if Input.is_action_just_pressed("up2") and is_on_floor():
			velocity.y = JUMP_VELOCITY
	

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction
	if playerId == 1:
		direction = Input.get_axis("left1", "right1")
	else:
		direction = Input.get_axis("left2", "right2")
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)

	move_and_slide()
