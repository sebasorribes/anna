extends Interactable

var primera_interaccion

func _ready():
	primera_interaccion=true
	Global.tiene_colaRataTutoria=false

func interact():
	if(primera_interaccion):
		var textito
		textito=[
			"Hay algo detras de esta armadura... \nPerfecto, una cola de rata, me servira para la pocion."
		]
		primera_interaccion=false
		Global.dialog=textito
		Global.hay_dialogo=true
		Global.tiene_colaRataTutoria=true
	else:
		var textito=[
			"Ahora que lo pienso, deberia conseguirme un gato para evitar las ratas en casa."
		]
		Global.dialog=textito
		Global.hay_dialogo=true
