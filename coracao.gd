extends Area2D



func _on_body_shape_entered(body_rid, body, body_shape_index, local_shape_index):
	if body.name == "Player":
		Global.vida += 2
		print ("Um coraçao +2 hp:",Global.vida)
		await $CollisionShape2D.call_deferred("queue_free")
		$coracao.play("new_animation")
		await $coracao.animation_finished
		queue_free()  
