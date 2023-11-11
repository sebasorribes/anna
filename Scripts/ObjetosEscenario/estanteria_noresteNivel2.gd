extends Interactable

var primera_interaccion : bool
var cantidad_laureles : int

func _ready():
	cantidad_laureles=1
	Global.tiene_laurel1=false
	primera_interaccion=true

func interact():
	if (primera_interaccion):
		var textito
		textito=[
			"Hojas de laurel. Siempre son utiles"
			]
		Global.tiene_laurel1=true
		Global.dialog=textito
		Global.hay_dialogo=true
		primera_interaccion=false
	else:
		var textito
		textito=[
			"No hay nada más."
		]
		Global.dialog=textito
		Global.hay_dialogo=true
