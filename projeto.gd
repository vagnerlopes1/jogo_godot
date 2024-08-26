extends Node2D

@onready var player = $Player


func _ready():
	
	player.morreu.connect(resetGame)
	
	
func resetGame():
	get_tree().change_scene_to_file("res://canvas_layer.tscn")
	Global.pontos = 0
	Global.vida = 5
	Global.moveSpeed = 200
	Global.JUMP_VELOCITY = -400


