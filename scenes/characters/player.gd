extends CharacterBody2D

## Prędkośc gracza.
@export var SPEED : float = 200
## Wysokość skoku gracza.
@export var JUMP_VELOCITY : float = -300
## Odwołanie się do AnimationPlayer Node'a.
@onready var animation: AnimationPlayer = $PlayerAnimation

## Skrpt dodany na zajęciach.
func _process(_delta: float) -> void:
	if Input.is_action_pressed("move_left"):
		animation.play("walk")
	elif Input.is_action_pressed("move_right"):
		animation.play("walk")
	else:
		animation.play("idle")

func _physics_process(delta: float) -> void:
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta

	# Handle jump.
	if Input.is_action_just_pressed("jump") and is_on_floor():
		velocity.y = JUMP_VELOCITY

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction := Input.get_axis("move_left", "move_right")
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)

	move_and_slide()

# Te przeniosłem z Sandomirii.
#func _ready() -> void:
	#animation.play("idle")
#
#func _input(event) -> void:
	#if event is InputEventKey:
		#animation.play("walk")
