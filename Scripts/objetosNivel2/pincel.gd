extends Interactable
var primera_interaccion

func _ready():
	primera_interaccion=true

func interact():
	var textito
	if(!Global.tiene_hiloConAnzueloMagico && primera_interaccion):
		textito=[
			"¿Un pincel junto al pozo de desechos? está demasiado lejos."
		]
	elif(!Global.tiene_hiloConAnzueloMagico && !primera_interaccion):
		textito=[
			"Espero no necesitar nada más de ese lugar."
		]
	elif(Global.tiene_hiloConAnzueloMagico):
		textito=[
			"Nunca pensé que terminaría pescando pinceles junto a un pozo de desechos."
		]
		Global.tiene_pincelConAnzuelo=true
		Global.tiene_hiloConAnzueloMagico=false
		primera_interaccion=false
	
	if(textito!=null):
		Global.dialog=textito
		Global.hay_dialogo=true
