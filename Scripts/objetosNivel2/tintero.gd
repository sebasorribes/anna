extends Interactable

var primera_interaccion

func _ready():
	primera_interaccion=true

func interact():
	var textito
	if(primera_interaccion):
		textito=[
			"¡Ah, un tintero! Nunca se sabe cuándo se presentará la oportunidad de escribir un talisman o tal vez garabatear una lista de compras mágicas."
		]
		primera_interaccion=false
		Global.tiene_tintero=true
	else:
		textito=[
			"Parece que el resto de los objetos son tan útiles como un paraguas submarino."
		]
	
	if(textito!=null):
		Global.dialog=textito
		Global.hay_dialogo=true
