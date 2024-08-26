extends CanvasLayer
var game_paused = false



func _ready():
	visible = true
	get_tree().paused = true

func _on_iniciar_bt_pressed():
	get_tree()
	get_tree().paused = false
	visible = false

func _on_sair_bt_pressed():
	get_tree().quit()



