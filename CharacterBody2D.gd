extends CharacterBody2D

var speed = 300
var Player = null

func _physics_process(delta):
	if Player:
		var direction = (Player.global_position-global_position).normalized()
		velocity = direction * speed
		move_and_slide()
