extends Interactable

var primera_interaccion

func _ready():
	primera_interaccion=true

func interact():
	var textito
	if(primera_interaccion):
		textito=[
			"¿Polvo negro negativo en un sarcófago destruido? Esto no parece ser el descanso eterno que alguien tenía en mente."
		]
		primera_interaccion=false
		Global.tiene_polvoNegro=true
	else:
		textito=[
			"No hay necesidad de seguir arruinando su descanzo eterno."
		]
	
	if(textito!=null):
		Global.dialog=textito
		Global.hay_dialogo=true
