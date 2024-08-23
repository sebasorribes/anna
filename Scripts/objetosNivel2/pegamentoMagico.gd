extends Interactable

var primera_interaccion
# Called when the node enters the scene tree for the first time.
func _ready():
	primera_interaccion=true


func interact():
	var textito
	if (primera_interaccion):
		textito=[
			"¡Pegamento mágico! Porque nunca sabes cuándo tendrás que unir dos mundos... o simplemente volver a pegar el póster de 'Magia en Vivo' que se desprendió."
		]
		Global.tiene_pegamentoMagico=true
		primera_interaccion=false
	else:
		textito=[
			"Este librero parece más completo que una biblioteca encantada. ¿Quién lo organizó, un duende bibliotecario o simplemente los guardias aburridos durante su turno?."
	]
	if(textito !=null):
		Global.dialog=textito
		Global.hay_dialogo=true
