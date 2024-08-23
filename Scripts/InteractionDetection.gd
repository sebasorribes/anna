extends RayCast2D

#raycast que le permite al jugador detectar objetos para interactuar

var current_collider
var is_intenractig : bool

func _ready():{
	is_intenractig=false
}

func _process(delta):
	var collider = get_collider()
	
	#tutorial
	if(self.is_colliding() and collider is Interactable):
		if(current_collider != collider):
			current_collider=collider
		
		#si esta colisionando con el objeto de clase interactable y presiono la tecla interaction, llama al metodo interact de ese objeto
		if(Input.is_action_just_pressed("interaction")):
			pausePlayer()
			collider.interact()
	#cuando el raycast interacciona con un objeto de clase interactable
	elif (self.is_colliding()):
		if(current_collider != collider):
			current_collider=collider
		
		#si esta colisionando con el objeto de clase interactable y presiono la tecla interaction, llama al metodo interact de ese objeto
		if(Input.is_action_just_pressed("interaction")):
			pausePlayer()
			get_parent().get_parent().interaction(collider.name)
		
	

func pausePlayer():
	if(not Global.hacia_comerdor && not Global.hacia_habitacion):
		get_parent().set_physics_process(false)
		get_parent().get_child(2).set_process(false)
		get_parent().get_child(3).set_process(false)
		get_parent().get_child(4).set_process(false)
		get_parent().get_child(5).set_process(false)
		
