extends Node2D


func shoot():
	const bullet = preload("res://escenas/bullet.tscn")
	var new_bullet = bullet.instantiate()
	new_bullet.global_position = $Pivot/Sprite2D/shoot_point.global_position
	new_bullet.global_rotation = $Pivot/Sprite2D/shoot_point.global_rotation
	get_tree().current_scene.add_child(new_bullet)
	
func _physics_process(delta):
	var mouse_pos = get_global_mouse_position()
	var direction = (mouse_pos-global_position).angle()
	rotation = direction

	if Input.is_action_just_pressed("shoot"):
		shoot()
	

		
		
