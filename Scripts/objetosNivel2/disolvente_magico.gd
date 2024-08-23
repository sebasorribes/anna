extends Interactable

var primera_interaccion
# Called when the node enters the scene tree for the first time.
func _ready():
	primera_interaccion=true


func interact():
	var textito
	if(primera_interaccion):
		textito=[
			"¡Disolvente mágico! Por si alguna vez necesito separar objetos unidos con pegamento magico o simplemente quiero darle un toque de magia al arte de limpiar."
		]
		primera_interaccion=false
		Global.tiene_disolventeMagico=true
	else:
		textito=[
			"Parece que este lugar tiene un suministro infinito de disolvente mágico. Tal vez debería dejar algo para los guardias."
		]
	if(textito !=null):
		Global.dialog=textito
		Global.hay_dialogo=true
