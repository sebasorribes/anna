extends Interactable

var primera_interaccion
# Called when the node enters the scene tree for the first time.
func _ready():
	primera_interaccion=true


func interact():
	var textito
	if(primera_interaccion):
		textito=[
			"Lengua de rana, una joya entre los multiples ingredientes de la hechizeria."
		]
		primera_interaccion=false
		Global.tiene_lenguaRana=true
	else:
		textito=[
			"Si habia una lengua de rana... ¿Donde estaba el resto de la rana?."
		]
	if(textito !=null):
		Global.dialog=textito
		Global.hay_dialogo=true
