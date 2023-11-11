extends Interactable

var primera_interaccion : bool

func _ready():
	Global.tiene_carnePodrida=false
	primera_interaccion=true

func interact():
	if (primera_interaccion):
		var textito
		textito=[
			"¡Ugh! ¡Por las barbas de Merlín!. \nEs carne podrida. Supongo que podria serme util, solo espero que no se impregne el olor en mi tunica."
		]
		Global.tiene_carnePodrida=true
		primera_interaccion=false
		Global.dialog=textito
		Global.hay_dialogo=true
	else:
		var textito
		textito=[
			"No quiero volver a oler algo tan nauseabundo."
		]
		Global.dialog=textito
		Global.hay_dialogo=true
