extends Interactable

var primera_interaccion
# Called when the node enters the scene tree for the first time.
func _ready():
	primera_interaccion=true


func interact():
	var textito
	if(primera_interaccion):
		textito=[
			"Agua contaminada. No es para beber, pero seguro que puede tener su utilidad."
		]
		primera_interaccion=false
		Global.tiene_aguaContaminada=true
	else:
		textito=[
			"Parece el primo lejano del agua dejada por el prototipo de motor mágico que exploto hace unos años."
		]
	if(textito !=null):
		Global.dialog=textito
		Global.hay_dialogo=true
