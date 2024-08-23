extends Interactable

var primera_interaccion

# Called when the node enters the scene tree for the first time.
func _ready():
	primera_interaccion=true


# Called every frame. 'delta' is the elapsed time since the previous frame.
func interact():
	var textito
	if(primera_interaccion):
		textito=[
			"¡Un hongo alucinógeno debajo del candelabro! ¿Quién necesita hechizos cuando la pared te ofrece viajes mágicos gratis?"
		]
		primera_interaccion=false
		Global.tiene_hongoAlucinogeno=true
	else:
		textito=[
			"Esta vela debe estar sintiéndose un poco sola ahora, sin su vecino psicodélico."
		]
	if(textito !=null):
		Global.dialog=textito
		Global.hay_dialogo=true
