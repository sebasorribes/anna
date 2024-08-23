extends Interactable
var primera_interaccion
func _ready():
	primera_interaccion=true

func interact():
	var textito
	if (primera_interaccion):
		textito=[
			"¡Ugh! ¡Por las barbas de Merlín!. \nEs carne podrida. Supongo que podria serme util, solo espero que no se impregne el olor en mi tunica."
		]
		Global.tiene_carnePodrida=true
		primera_interaccion=false
	else:
		textito=[
			"No quiero volver a oler algo tan nauseabundo."
		]
	
	if(textito!=null):
		Global.dialog=textito
		Global.hay_dialogo=true
