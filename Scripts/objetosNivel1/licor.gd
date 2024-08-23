extends Interactable

var primera_interaccion
# Called when the node enters the scene tree for the first time.
func _ready():
	primera_interaccion=true


func interact():
	var textito
	if(primera_interaccion):
		textito=[
			"¡Aquí hay Licor escondidos! Esta podría ser la 'solución' a todos mis problemas."
		]
		primera_interaccion=false
		Global.tiene_licor=true
	else:
		textito=[
			"Necesito escapar, no que me encuentre en mi celda totalmente alcoholizada."
		]
	if(textito !=null):
		Global.dialog=textito
		Global.hay_dialogo=true
