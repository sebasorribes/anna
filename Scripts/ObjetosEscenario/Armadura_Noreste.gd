extends Interactable

func _ready():
	Global.tiene_colaRataTutoria=false

func interact():
	if(!Global.tiene_colaRataTutoria):
		var textito
		textito=[
			"Hay algo detras de esta armadura... \nPerfecto, una cola de rata, me servira para la pocion."
		]
		Global.dialog=textito
		Global.hay_dialogo=true
		Global.tiene_colaRataTutoria=true
	else:
		var textito=[
			"Ahora que lo pienso, deberia conseguirme un gato para evitar las ratas en casa."
		]
		Global.dialog=textito
		Global.hay_dialogo=true
