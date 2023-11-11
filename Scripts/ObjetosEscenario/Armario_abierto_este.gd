extends Interactable

var primera_interaccion : bool

func _ready():
	Global.tiene_mascaraVerdugo=false
	primera_interaccion=true

func interact():
	if (primera_interaccion):
		var textito
		textito=[
			"¿Sera la máscara de mi verdugo? Mejor me la llevo, puede ser util."
		]
		Global.tiene_mascaraVerdugo=true
		primera_interaccion=false
		Global.dialog=textito
		Global.hay_dialogo=true
	else:
		var textito
		textito=[
			"Solamente veo un par de calzoncillos viejos, no hay nada util."
		]
		Global.dialog=textito
		Global.hay_dialogo=true
