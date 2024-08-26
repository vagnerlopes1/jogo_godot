extends CanvasLayer
signal morreu
vida ==0: emit_signal("morreu")




func _on_quit_bt_pressed():
			get_tree().quit()
