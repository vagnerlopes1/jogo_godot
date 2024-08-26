extends CanvasLayer




func _on_iniciar_bt_pressed():
	get_tree().change_scene_to_file("res://projeto.tscn")


func _on_sair_bt_pressed():
	get_tree().quit()
