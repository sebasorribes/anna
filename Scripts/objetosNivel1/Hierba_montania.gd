extends Interactable

var primera_interaccion

# Called when the node enters the scene tree for the first time.
func _ready():
	primera_interaccion=true


# Called every frame. 'delta' is the elapsed time since the previous frame.
func interact():
	var textito
	if(primera_interaccion):
		textito=[
			"¡Oh, Hierba de la montaña! Parece que he tropezado con el jarrito invernadero de alguien más. Espero que el dueño no se entere antes de que pueda huir."
		]
		primera_interaccion=false
		Global.tiene_hiervaMontania=true
	else:
		textito=[
			"Ya le quite su hierba de la montaña. No soy tan malvada para dejarlo sin nada."
		]
	if(textito !=null):
		Global.dialog=textito
		Global.hay_dialogo=true
