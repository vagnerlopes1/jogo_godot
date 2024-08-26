extends CharacterBody2D

const JUMP_VELOCITY = -400.0
const moveSpeed = 100
var grav = 1000
var estaPulando = false 
var vida = Global.vida
var is_takingdamage = false
signal morreu

func _physics_process(delta):
	var direcao = int(Input.is_action_pressed("direita")) - int(Input.is_action_pressed("esquerda"))   
	velocity.y += grav*delta 
	
	if direcao and !is_takingdamage:
		velocity.x =  direcao * Global.moveSpeed 
		$AnimatedSprite2D.scale.x=direcao
		
		
	else:
		velocity.x = move_toward(velocity.x, 0, Global.moveSpeed)
		
	if Input.is_action_just_pressed("ui_accept") and is_on_floor():
		velocity.y  = Global.JUMP_VELOCITY 
		estaPulando = true
	elif is_on_floor():
		estaPulando = false
	
	if !is_takingdamage:
		if is_on_floor():
			if estaPulando:
				$AnimatedSprite2D.play("jump")
			elif direcao !=0:
				$AnimatedSprite2D.play("run")
			elif direcao ==0: 
				$AnimatedSprite2D.play("idle")
		else:  
			if  velocity.y < 0:
				$AnimatedSprite2D.play("jump")	
			else:  			
				$AnimatedSprite2D.play("fall")
				
	move_and_slide()
 
	
func _levouDano(dano):
	is_takingdamage = true
	velocity.x = -460
	$AnimatedSprite2D.play("hitanim")
	await $AnimatedSprite2D.animation_finished
	is_takingdamage = false

	
	Global.vida -= dano
	print ("Voce perdeu hp!",Global.vida)
	
	if Global.vida <=0: emit_signal("morreu")
	




