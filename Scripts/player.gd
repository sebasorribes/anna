extends CharacterBody2D


@export var speed=400 #velocidad del personaje

func _ready():
	$AnimatedSprite2D.play("Side")
	Global.hacia_comerdor=false
	Global.hacia_habitacion=false
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _physics_process(delta):
	_player_move(delta)
	#funcion que permite mover al personaje y colisionar con otros objetos
	move_and_slide()
	rotate_raycast()
	mover_a_comedor()
	mover_a_habitacion()

func get_input():
	var input_direction = Vector2.ZERO
	
	#toma el vector al que se mueve el personaje
	if Input.is_action_pressed("move_right"):
		input_direction.x +=1
	else: if Input.is_action_pressed("move_left"):
		input_direction.x -=1
	else: if Input.is_action_pressed("move_down"):
		input_direction.y +=1
	else: if Input.is_action_pressed("move_up"):
		input_direction.y -=1
		
	velocity = input_direction * speed

func _player_move(delta):
	
	get_input()
	
	#carga la animacion del personaje, dependiendo si se esta moviendo o no.
	#TO DO: poner las animaciones de movimiento vertical cuando esten listas.
	if (velocity.x !=0):
		$AnimatedSprite2D.animation="sidewalk"
		$AnimatedSprite2D.flip_v=false
		$AnimatedSprite2D.flip_h=velocity.x<0
	elif (velocity.y >0):
		$AnimatedSprite2D.animation="frontwalk"
	elif (velocity.y < 0):
		$AnimatedSprite2D.animation="backwalk"
	
	if(Input.is_action_just_released("move_right")):
		$AnimatedSprite2D.animation="Side"
	if(Input.is_action_just_released("move_left")):
		$AnimatedSprite2D.animation="Side"
		$AnimatedSprite2D.flip_h=true
	if(Input.is_action_just_released("move_down")):
		$AnimatedSprite2D.animation="Front"
	if(Input.is_action_just_released("move_up")):
		$AnimatedSprite2D.animation="Back"

#funcion que activa el raycast de interaccion en la direccion en la que se mueve
func rotate_raycast():
	if(Input.is_action_just_pressed("move_left")):
		desactivate_raycast()
		$InteractionDetectionLeft.enabled=true
	if (Input.is_action_just_pressed("move_right")):
		desactivate_raycast()
		$InteractionDetectionRight.enabled=true
	if (Input.is_action_just_pressed("move_up")):
		desactivate_raycast()
		$InteractionDetectionUp.enabled=true
	if (Input.is_action_just_pressed("move_down")):
		desactivate_raycast()
		$InteractionDetectionDown.enabled=true

#desactiva todos los raycast
func desactivate_raycast():
	$InteractionDetectionDown.enabled=false
	$InteractionDetectionRight.enabled=false
	$InteractionDetectionLeft.enabled=false
	$InteractionDetectionUp.enabled=false

#mueve al player al comedor en el nivel tutorial
func mover_a_comedor():
	if(Global.hacia_comerdor):
		self.position=Global.posicion_spawn_comedor
		$AnimatedSprite2D.animation="Side"
		$AnimatedSprite2D.flip_h=true
		Global.hacia_comerdor=false

#mueve al player a la habitacion en el nivel tutorial
func mover_a_habitacion():
	if(Global.hacia_habitacion):
		self.position=Global.posicion_spawn_habitacion
		$AnimatedSprite2D.animation="Front"
		Global.hacia_habitacion=false
