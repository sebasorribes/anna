extends Interactable

var segunda_interaccion=false

func _ready():
	segunda_interaccion=false

func interact():
	if(!segunda_interaccion):
		var textito
		textito=[
			"Espejito, espejito...."
		]
		Global.dialog=textito
		Global.hay_dialogo=true
		segunda_interaccion=true
	else:
		var textito
		textito=[
			"¡No pienso volver a hacer eso!"
		]
		Global.dialog=textito
		Global.hay_dialogo=true
