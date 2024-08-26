extends Area2D

@onready var control = $"../hud/Control"
var pontos = 5
func _on_body_entered(body):
	if body.name == "Player":
		control.segundos +=15
		Global.pontos += pontos
		print ("Voce ganhou 15 segundos! PontosTotal:",Global.pontos)
		await $CollisionShape2D.call_deferred("queue_free")
		$abacaxi.play("new_animation")
		await $abacaxi.animation_finished
		queue_free()  
