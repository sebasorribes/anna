extends Interactable

var primera_interaccion

func _ready():
	primera_interaccion=true


func interact():
	var textito
	if(primera_interaccion):
		textito=[
			"¡Un barril lleno de anzuelos! ¿Alguien aquí está organizando un torneo de pesca?. "
		]
		primera_interaccion=false
		Global.tiene_anzuelo=true
	else:
		textito=[
			"No creo que necesite más para mi colección."
		]
	if(textito !=null):
		Global.dialog=textito
		Global.hay_dialogo=true
