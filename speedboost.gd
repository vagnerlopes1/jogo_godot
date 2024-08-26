extends Area2D


func _on_body_entered(body):
	if body.name == "Player":
		Global.moveSpeed = 200 
		print ("Voce esta muito mais rapido!")
		await $CollisionShape2D.call_deferred("queue_free")
		$speedboost.play("new_animation")
		await $speedboost.animation_finished
		Global.moveSpeed = 100
		queue_free()  
