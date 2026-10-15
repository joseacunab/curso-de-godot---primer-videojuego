extends Area2D

var speed = 200

func ready():
	await get_tree().create_timer(0.5).timeout
	queue_free()
	
func _physics_process(delta):
	var direction = Vector2.RIGHT.rotated(rotation)
	position += direction*speed*delta
	
func _on_body_entered(body):
	if body.is_in_group("enemies"):
		body.queue_free()
	elif body.is_in_group("walls"):
		queue_free()
