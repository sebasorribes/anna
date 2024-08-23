extends Interactable

var primer_interaccion

func _ready():
	Global.tiene_pocion=false
	Global.tiene_FrascoTutorial=false
	primer_interaccion=true

func interact():
	var textito
	if(primer_interaccion):
		textito
		textito=[
			"Voy a usar este frasco para realizar la poción."
		]
		Global.dialog=textito
		Global.hay_dialogo=true
		Global.tiene_FrascoTutorial=true
		primer_interaccion=false
	else:
		if(Global.tiene_pocion):
			textito
			textito=[
				"Ya sé donde esta la llave."
			]
			Global.dialog=textito
			Global.hay_dialogo=true
			get_parent().get_parent().get_node("llave_location").visible=true
			Global.tiene_pocion=false
		else:
			textito=[
				"Ya no hay nada util en esta mesa."
			]
			Global.dialog=textito
			Global.hay_dialogo=true
