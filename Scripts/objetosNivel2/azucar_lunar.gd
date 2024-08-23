extends Interactable

var primera_interaccion
# Called when the node enters the scene tree for the first time.
func _ready():
	primera_interaccion=true


func interact():
	var textito
	if (primera_interaccion):
		textito=[
			"¿Por qué hay azucar lunar en este lugar? Voy a llevar un poco, podria usarla para algo."
		]
		Global.tiene_azucarLunar=true
		primera_interaccion=false
	else:
		textito=[
			"¿Quien iba a pensar que los guardias usan este tipo de drogas?."
		]
	if(textito !=null):
		Global.dialog=textito
		Global.hay_dialogo=true
