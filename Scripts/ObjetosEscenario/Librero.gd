extends Interactable

var terminado=false
var segunda_interaccion=false
signal toctocSignal

func _ready():
	Global.tiene_llave=false
	segunda_interaccion=false
	terminado=false

func interact():
	if (terminado):
		var textito
		textito=[
			"Deberia ir a ver la puerta"
		]
		Global.dialog=textito
		Global.hay_dialogo=true
	else:
		if(Global.tiene_pocion):
			Global.tiene_llave=true
			toctocSignal.emit()
			terminado=true
		else:
			var textito
			if(!segunda_interaccion):
				textito=[
					"¡Ah, mi librero, un ejemplo perfecto de caos mágico ordenado alfabéticamente! \n Al menos, eso es lo que intenté hacer antes de que los libros decidieran tener una fiesta en medio de la noche y se amontonaran. Ahora, encontrar algo es como jugar a encontrar una aguja en un pajar."
				]
				segunda_interaccion=true
			else:
				textito=[
					"Hay demasiado desorden para encontrar algo."
				]
			Global.dialog=textito
			Global.hay_dialogo=true
