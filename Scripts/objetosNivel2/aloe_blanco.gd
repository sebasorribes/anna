extends Interactable

var primera_interaccion
# Called when the node enters the scene tree for the first time.
func _ready():
	primera_interaccion=true


func interact():
	var textito
	if (primera_interaccion):
		textito=[
			"¿Quien iba a pensar que encontraria aloe blanco en este lugar?."
		]
		Global.tiene_aloeBlanco=true
		primera_interaccion=false
	else:
		textito=[
			"No hay nada util."
		]
	if(textito !=null):
		Global.dialog=textito
		Global.hay_dialogo=true
