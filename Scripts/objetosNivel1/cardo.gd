extends Interactable
var primera_interaccion

func _ready():
	primera_interaccion=true

func interact():
	var textito
	if(primera_interaccion):
		textito=[
			"¿Cardo en una caja en un calabozo? ¿Quién dijo que el cardo no puede ser parte de una poción mágica? ¡Esta planta tiene más magia de la que aparenta!"
		]
		primera_interaccion=false
		Global.tiene_cardo3=true
	else:
		textito=[
			"El cardo tiene ese encanto picante, pero llevar más sería como abrazar demasiado entusiasmo punzante."
		]
	
	if(textito!=null):
		Global.dialog=textito
		Global.hay_dialogo=true
