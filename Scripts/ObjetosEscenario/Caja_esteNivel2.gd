extends Interactable

var primera_interaccion : bool

func _ready():
	Global.tiene_menta=false
	primera_interaccion=true

func interact():
	if (primera_interaccion):
		var textito
		textito=[
			"¡Menta! Es ideal para evitar sentir olores desagradables."
		]
		Global.tiene_menta=true
		primera_interaccion=false
		Global.dialog=textito
		Global.hay_dialogo=true
	else:
		var textito
		textito=[
			"Es un placer oler esta caja, todo lo contrario a la de carne podrida."
		]
		Global.dialog=textito
		Global.hay_dialogo=true
