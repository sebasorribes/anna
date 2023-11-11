extends Interactable

var primera_interaccion : bool

func _ready():
	Global.tiene_muniecaTrapo=false
	primera_interaccion=true

func interact():
	if (primera_interaccion):
		var textito
		textito=[
			"Una muñeca de trapo, seguro puedo usarla para hechizar."
		]
		Global.tiene_muniecaTrapo=true
		primera_interaccion=false
		Global.dialog=textito
		Global.hay_dialogo=true
	else:
		var textito
		textito=[
			"No veo nada más util."
		]
		Global.dialog=textito
		Global.hay_dialogo=true
