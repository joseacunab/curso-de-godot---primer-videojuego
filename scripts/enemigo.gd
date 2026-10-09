extends CharacterBody2D

var speed = 25
@onready var jugador = get_node("/root/Node2D/jugador")
@onready var anim = $AnimationPlayer
	
func _physics_process(_delta):
	var direction = global_position.direction_to(jugador.global_position)
	velocity=direction*speed
	move_and_slide()
	anim.play("caminar")

	if velocity.x<0:
		$Sprite2D.flip_h = true
	elif velocity.x>0:
		$Sprite2D.flip_h = false
