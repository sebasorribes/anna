extends Interactable
var primera_interaccion

func _ready():
	primera_interaccion=true

func interact():
	var textito
	if (primera_interaccion):
		textito=[
			"¿Sera la máscara de mi verdugo? Mejor me la llevo, puede ser util."
		]
		Global.tiene_mascaraVerdugo=true
		primera_interaccion=false
	else:
		textito=[
			"Solamente veo un par de calzoncillos viejos, no hay nada util."
		]
	
	if(textito!=null):
		Global.dialog=textito
		Global.hay_dialogo=true
