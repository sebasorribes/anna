extends Interactable
var contador : int
var primeraInteraccion
func _ready():
	Global.tiene_FlorAzulMotania=false
	contador=0
	primeraInteraccion=true

func interact():
	if(primeraInteraccion):
		var textito
		textito=[
			"Petalo de flor azul de montaña. Es un ingrediente fundamental"
		]
		primeraInteraccion=false
		Global.dialog=textito
		Global.hay_dialogo=true
		Global.tiene_FlorAzulMotania=true
	else:
		var textito
		textito=[
			"Ya no hay nada util ahí."
		]
		Global.dialog=textito
		Global.hay_dialogo=true
		contador+=1
		if (contador>4):
			textito=[
				"¿Podrias dejar de hacer eso? Me estas poniendo nerviosa con tu insistencia."
			]
			Global.dialog=textito
			Global.hay_dialogo=true
