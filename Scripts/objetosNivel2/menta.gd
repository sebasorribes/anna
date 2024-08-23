extends Interactable
var primera_interaccion

func _ready():
	primera_interaccion=true

func interact():
	var textito
	if (primera_interaccion):
		textito=[
			"¡Menta! Es ideal para evitar sentir olores desagradables."
		]
		Global.tiene_menta=true
		primera_interaccion=false
	else:
		textito=[
			"Es un placer oler esta caja, todo lo contrario a la de carne podrida."
		]
	
	if(textito!=null):
		Global.dialog=textito
		Global.hay_dialogo=true
