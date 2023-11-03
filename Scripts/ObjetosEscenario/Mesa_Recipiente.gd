extends Interactable

func _ready():
	Global.tiene_pocion=false
	Global.tiene_FrascoTutorial=false

func interact():
	if(Global.tiene_FrascoTutorial and Global.tiene_colaRataTutoria and Global.tiene_FlorAzulMotania):
		var textito
		textito=[
			"Ya sé donde esta la llave."
		]
		Global.dialog=textito
		Global.hay_dialogo=true
		Global.tiene_pocion=true
	else:
		if(!Global.tiene_FrascoTutorial):
			var textito
			textito=[
				"Voy a usar este frasco para realizar la poción."
			]
			Global.dialog=textito
			Global.hay_dialogo=true
			Global.tiene_FrascoTutorial=true
		else:
			var textito=[
				"Ya no hay nada util en esta mesa."
			]
			Global.dialog=textito
			Global.hay_dialogo=true
