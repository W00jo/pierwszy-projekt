extends TileMapLayer

var has_fallen: bool = false
var initial_position: Vector2

func _ready():
	initial_position = global_position

func _on_area_2d_body_entered(body: Node2D) -> void:
	if body is CharacterBody2D and !has_fallen:
		var opacity_tween: Tween = create_tween().set_trans(Tween.TRANS_SINE)
		var pos_tween: Tween = create_tween().set_trans(Tween.TRANS_SINE)
		
		opacity_tween.tween_property(self, "modulate:a", 0.0, 0.5)
		pos_tween.tween_property(self, "global_position", global_position+Vector2(0, 12), 0.5)
		
		opacity_tween.finished.connect(_disable_collider)
		
		has_fallen = true

func _disable_collider():
	$StaticBody2D/CollisionShape2D.disabled = true
	$Area2D/CollisionShape2D.disabled = true
	
	# Wait 3 seconds before respawning
	await get_tree().create_timer(3.0).timeout
	_respawn_platform()

func _respawn_platform():
	# Reset position and opacity
	global_position = initial_position
	modulate.a = 1.0
	
	# Re-enable colliders
	$StaticBody2D/CollisionShape2D.disabled = false
	$Area2D/CollisionShape2D.disabled = false
	
	# Reset fallen state
	has_fallen = false
