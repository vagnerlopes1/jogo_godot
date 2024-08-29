extends CanvasLayer




func _on_iniciar_bt_pressed():
	get_tree().change_scene_to_file("res://projeto.tscn")
	Global.pontos = 0
	Global.vida = 5
	Global.moveSpeed = 100
	Global.JUMP_VELOCITY = -400

func _on_sair_bt_pressed():
	get_tree().quit()
