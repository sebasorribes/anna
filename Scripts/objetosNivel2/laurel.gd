extends Interactable

var primera_interaccion

# Called when the node enters the scene tree for the first time.
func _ready():
	primera_interaccion=true


func interact():
	var textito
	if (primera_interaccion):
		textito=[
			"Hojas de laurel. Siempre son utiles"
			]
		Global.tiene_laurel1=true
		primera_interaccion=false
	else:
		textito=[
			"No hay nada más."
		]
	if(textito !=null):
		Global.dialog=textito
		Global.hay_dialogo=true
