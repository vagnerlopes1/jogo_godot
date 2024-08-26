extends Area2D




func _on_body_shape_entered(body_rid, body, body_shape_index, local_shape_index):
	if body.name == "Player":
		Global.JUMP_VELOCITY = -600 
		print ("Voce pula muito mais alto!")
		await $superpulo2.call_deferred("queue_free")
		$superpulo.play("new_animation")
		await $superpulo.animation_finished
		Global.JUMP_VELOCITY = -400
		queue_free()  
