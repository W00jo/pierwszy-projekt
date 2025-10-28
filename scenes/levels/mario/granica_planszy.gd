extends Area2D

func _on_body_entered(body: Node2D) -> void:
	body.position = Vector2(176.0, 160.0)
	print ("Działa!")
