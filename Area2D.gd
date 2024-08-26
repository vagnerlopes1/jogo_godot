extends Area2D
var pontos = 1
func _on_body_entered(body):
	if body.name == "Player":
		Global.pontos += pontos
		print ("Uma melancia! PontosTotal:",Global.pontos)
		await $CollisionShape2D.call_deferred("queue_free")
		$coletavel.play("new_animation")
		await $coletavel.animation_finished
		queue_free()  



	pass # Replace with function body.
