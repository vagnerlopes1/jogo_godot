extends Area2D


@onready var control = $"../hud/Control"
var pontos = 3

func _on_body_entered(body):
	if body.name == "Player":
		
		  
		control.segundos -=20
		Global.pontos -= pontos
		print ("OH nao tempo reverso voce perdeu 20  segundos e 3 pontos!")
		await $CollisionShape2D.call_deferred("queue_free")
		
		$temporeverso.play("new_animation")
		await $temporeverso.animation_finished
		
		queue_free()  
