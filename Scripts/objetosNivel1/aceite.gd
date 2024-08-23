extends Interactable

var primera_interaccion
# Called when the node enters the scene tree for the first time.
func _ready():
	primera_interaccion=true


func interact():
	var textito
	if(primera_interaccion):
		textito=[
			"¿Por qué hay aceite aquí? Parece más un adorno que una herramienta. "
		]
		primera_interaccion=false
		Global.tiene_aceite=true
	else:
		textito=[
			"Ya tengo suficiente, mejor dejar la 'decoración' tranquila."
		]
	if(textito !=null):
		Global.dialog=textito
		Global.hay_dialogo=true
