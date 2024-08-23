extends Interactable

var primera_interaccion
# Called when the node enters the scene tree for the first time.
func _ready():
	primera_interaccion=true


func interact():
	var textito
	if (primera_interaccion):
		textito=[
			"Una muñeca de trapo, seguro puedo usarla para hechizar."
		]
		Global.tiene_muniecaTrapo=true
		primera_interaccion=false
	else:
		textito=[
			"¿Por qué guardan eso en este lugar?."
		]
	if(textito !=null):
		Global.dialog=textito
		Global.hay_dialogo=true
