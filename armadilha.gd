extends Area2D

@onready var player = $"../Player"
# Called when the node enters the scene tree for the first time.
  
func _on_body_entered(body):
	if body.name == "Player":
		player._levouDano(2)
