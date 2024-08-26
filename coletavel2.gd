
extends Area2D

@onready var player = $"../Player"
var pontos = 1
# Called when the node enters the scene tree for the first time.
  
func _on_body_entered(body):
	if body.name == "Player":
		Global.pontos -= pontos
		print ("Uma melancia falsa voce perdeu 1 ponto")
		player._levouDano(1)

