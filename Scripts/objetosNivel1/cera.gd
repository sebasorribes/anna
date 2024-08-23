extends Interactable

var primera_interaccion
# Called when the node enters the scene tree for the first time.
func _ready():
	primera_interaccion=true


func interact():
	var textito
	if(primera_interaccion):
		textito=[
			"¿Cera? Si alguien me hubiera dicho que en el castillos hacen sus propias velas, hubiera dicho que es un loco."
		]
		primera_interaccion=false
		Global.tiene_cera=true
	else:
		textito=[
			"A excepción que quiera abrir mi propia fábrica de velas, no necesito mas cera"
		]
	if(textito !=null):
		Global.dialog=textito
		Global.hay_dialogo=true
