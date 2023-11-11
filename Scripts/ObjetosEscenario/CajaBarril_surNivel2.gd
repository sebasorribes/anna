extends Interactable

var primera_interaccion : bool

func _ready():
	Global.tiene_azucarLunar=false
	primera_interaccion=true

func interact():
	if (primera_interaccion):
		var textito
		textito=[
			"Azucar lunar, perfecto para preparar hechizos y postres."
		]
		Global.tiene_azucarLunar=true
		primera_interaccion=false
		Global.dialog=textito
		Global.hay_dialogo=true
	else:
		var textito
		textito=[
			"Ya tengo suficiente."
		]
		Global.dialog=textito
		Global.hay_dialogo=true
