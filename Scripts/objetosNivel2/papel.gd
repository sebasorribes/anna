extends Interactable

var primera_interaccion
# Called when the node enters the scene tree for the first time.
func _ready():
	primera_interaccion=true


func interact():
	var textito
	if (primera_interaccion):
		textito=[
			"¡Papel, el recurso más poderoso que existe!"
		]
		Global.tiene_papel=true
		primera_interaccion=false
	else:
		textito=[
			"Creo que ya tengo suficiente papel. Si agarrar más, me alcanzaria para escribir la historia completa de este castillo."
	]
	if(textito !=null):
		Global.dialog=textito
		Global.hay_dialogo=true
