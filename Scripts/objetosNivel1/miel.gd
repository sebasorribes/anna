extends Interactable
var primera_interaccion

func _ready():
	primera_interaccion=true

func interact():
	var textito
	if(primera_interaccion):
		textito=[
			"¿Quién hubiera pensado que el menú de las mazmorras incluiría miel? Estas cajas definitivamente esconden secretos más dulces de lo que esperaba."
		]
		primera_interaccion=false
		Global.tiene_miel3=true
	else:
		textito=[
			"La dulzura es tentadora, pero creo que si sigo llenando mi inventario de miel, mi escape podría volverse un desafío pegajoso.."
		]
	
	if(textito!=null):
		Global.dialog=textito
		Global.hay_dialogo=true
