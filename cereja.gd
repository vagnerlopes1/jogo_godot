extends Area2D
var pontos = 10
func _on_body_entered(body):
	if body.name == "Player":
		Global.pontos += pontos
		print ("PontosTotal:",Global.pontos)
		await $CollisionShape2D.call_deferred("queue_free")
		$cereja.play("new_animation")
		await $cereja.animation_finished
		queue_free()  



	
