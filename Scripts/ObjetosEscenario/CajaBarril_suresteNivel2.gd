extends Interactable

var primera_interaccion : bool

func _ready():
	Global.tiene_aloeBlanco=false
	primera_interaccion=true

func interact():
	if (primera_interaccion):
		var textito
		textito=[
			"¿Quien iba a pensar que encontraria aloe blanco en este lugar?."
		]
		Global.tiene_aloeBlanco=true
		primera_interaccion=false
		Global.dialog=textito
		Global.hay_dialogo=true
	else:
		var textito
		textito=[
			"No hay nada más que sea util."
		]
		Global.dialog=textito
		Global.hay_dialogo=true
