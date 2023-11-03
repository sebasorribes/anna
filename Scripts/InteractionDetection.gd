extends RayCast2D

#raycast que le permite al jugador detectar objetos para interactuar

var current_collider
var is_intenractig : bool

func _ready():{
	is_intenractig=false
}

func _process(delta):
	var collider = get_collider()
	#cuando el raycast interacciona con un objeto de clase interactable
	if (self.is_colliding() and collider is Interactable):
		if(current_collider != collider):
			current_collider=collider
		
		#si esta colisionando con el objeto de clase interactable y presiono la tecla interaction, llama al metodo interact de ese objeto
		if(Input.is_action_just_pressed("interaction")):
			collider.interact()
